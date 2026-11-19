package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements SQLiteEventStore.Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f28126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SQLiteEventStore f28127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f28128c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(SQLiteEventStore sQLiteEventStore, Object obj, Object obj2, int i2) {
        this.f28126a = i2;
        this.f28127b = sQLiteEventStore;
        this.d = obj;
        this.f28128c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0041 A[PHI: r13
      0x0041: PHI (r13v24 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason) = 
      (r13v17 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
      (r13v18 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
      (r13v19 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
      (r13v20 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
      (r13v21 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
      (r13v22 com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason)
     binds: [B:11:0x003f, B:14:0x0049, B:17:0x0052, B:20:0x005b, B:23:0x0064, B:26:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public final Object apply(Object obj) throws Throwable {
        long jInsert;
        Cursor cursor;
        int i2 = this.f28126a;
        int i3 = 2;
        int i4 = 1;
        int i5 = 0;
        Object obj2 = this.f28128c;
        Object obj3 = this.d;
        SQLiteEventStore sQLiteEventStore = this.f28127b;
        switch (i2) {
            case 0:
                EventInternal eventInternal = (EventInternal) obj3;
                TransportContext transportContext = (TransportContext) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.g;
                long jSimpleQueryForLong = sQLiteEventStore.m().compileStatement("PRAGMA page_size").simpleQueryForLong() * sQLiteEventStore.m().compileStatement("PRAGMA page_count").simpleQueryForLong();
                AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) sQLiteEventStore.f28107e;
                if (jSimpleQueryForLong >= autoValue_EventStoreConfig.f28089b) {
                    sQLiteEventStore.k(1L, LogEventDropped.Reason.CACHE_FULL, eventInternal.l());
                    return -1L;
                }
                Long lN = SQLiteEventStore.n(sQLiteDatabase, transportContext);
                if (lN != null) {
                    jInsert = lN.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", transportContext.b());
                    contentValues.put("priority", Integer.valueOf(PriorityMapping.a(transportContext.d())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (transportContext.c() != null) {
                        contentValues.put("extras", Base64.encodeToString(transportContext.c(), 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int i6 = autoValue_EventStoreConfig.f28092f;
                byte[] bArr = eventInternal.e().f27971b;
                boolean z = bArr.length <= i6;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", eventInternal.l());
                contentValues2.put(com.batch.android.s.b.a.f24020i, Long.valueOf(eventInternal.f()));
                contentValues2.put("uptime_ms", Long.valueOf(eventInternal.m()));
                contentValues2.put("payload_encoding", eventInternal.e().f27970a.f27792a);
                contentValues2.put(m.v, eventInternal.d());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put(ConfigurationName.PING_PAYLOAD, z ? bArr : new byte[0]);
                contentValues2.put("product_id", eventInternal.j());
                contentValues2.put("pseudonymous_id", eventInternal.k());
                contentValues2.put("experiment_ids_clear_blob", eventInternal.g());
                contentValues2.put("experiment_ids_encrypted_blob", eventInternal.h());
                long jInsert2 = sQLiteDatabase.insert(DbParams.TABLE_EVENTS, null, contentValues2);
                if (!z) {
                    int iCeil = (int) Math.ceil(((double) bArr.length) / ((double) i6));
                    for (int i7 = 1; i7 <= iCeil; i7++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (i7 - 1) * i6, Math.min(i7 * i6, bArr.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i7));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(eventInternal.c()).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            case 1:
                ArrayList arrayList = (ArrayList) obj3;
                TransportContext transportContext2 = (TransportContext) obj2;
                Cursor cursor2 = (Cursor) obj;
                Encoding encoding2 = SQLiteEventStore.g;
                while (cursor2.moveToNext()) {
                    long j2 = cursor2.getLong(i5);
                    int i8 = cursor2.getInt(7) != 0 ? i4 : i5;
                    EventInternal.Builder builderA = EventInternal.a();
                    builderA.k(cursor2.getString(i4));
                    builderA.f(cursor2.getLong(i3));
                    builderA.l(cursor2.getLong(3));
                    if (i8 != 0) {
                        String string = cursor2.getString(4);
                        builderA.e(new EncodedPayload(string == null ? SQLiteEventStore.g : new Encoding(string), cursor2.getBlob(5)));
                    } else {
                        String string2 = cursor2.getString(4);
                        Encoding encoding3 = string2 == null ? SQLiteEventStore.g : new Encoding(string2);
                        Cursor cursorQuery = sQLiteEventStore.m().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j2)}, null, null, "sequence_num");
                        try {
                            Encoding encoding4 = SQLiteEventStore.g;
                            ArrayList arrayList2 = new ArrayList();
                            int length = i5;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(i5);
                                arrayList2.add(blob);
                                length += blob.length;
                            }
                            byte[] bArr2 = new byte[length];
                            int length2 = i5;
                            int i9 = length2;
                            while (i9 < arrayList2.size()) {
                                byte[] bArr3 = (byte[]) arrayList2.get(i9);
                                int i10 = i9;
                                cursor = cursorQuery;
                                try {
                                    System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
                                    length2 += bArr3.length;
                                    i9 = i10 + 1;
                                    cursorQuery = cursor;
                                } catch (Throwable th) {
                                    th = th;
                                    cursor.close();
                                    throw th;
                                }
                            }
                            cursorQuery.close();
                            builderA.e(new EncodedPayload(encoding3, bArr2));
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                        }
                    }
                    if (!cursor2.isNull(6)) {
                        builderA.d(Integer.valueOf(cursor2.getInt(6)));
                    }
                    if (!cursor2.isNull(8)) {
                        builderA.i(Integer.valueOf(cursor2.getInt(8)));
                    }
                    if (!cursor2.isNull(9)) {
                        builderA.j(cursor2.getString(9));
                    }
                    if (!cursor2.isNull(10)) {
                        builderA.g(cursor2.getBlob(10));
                    }
                    if (!cursor2.isNull(11)) {
                        builderA.h(cursor2.getBlob(11));
                    }
                    arrayList.add(new AutoValue_PersistedEvent(j2, transportContext2, builderA.b()));
                    i3 = 2;
                    i4 = 1;
                    i5 = 0;
                }
                return null;
            default:
                HashMap map = (HashMap) obj3;
                ClientMetrics.Builder builder = (ClientMetrics.Builder) obj2;
                ArrayList arrayList3 = builder.f28021b;
                Cursor cursor3 = (Cursor) obj;
                Encoding encoding5 = SQLiteEventStore.g;
                while (cursor3.moveToNext()) {
                    String string3 = cursor3.getString(0);
                    int i11 = cursor3.getInt(1);
                    LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
                    if (i11 != reason.m()) {
                        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
                        if (i11 == reason2.m()) {
                            reason = reason2;
                        } else {
                            reason2 = LogEventDropped.Reason.CACHE_FULL;
                            if (i11 == reason2.m()) {
                                reason = reason2;
                            } else {
                                reason2 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
                                if (i11 == reason2.m()) {
                                    reason = reason2;
                                } else {
                                    reason2 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
                                    if (i11 == reason2.m()) {
                                        reason = reason2;
                                    } else {
                                        reason2 = LogEventDropped.Reason.INVALID_PAYLOD;
                                        if (i11 == reason2.m()) {
                                            reason = reason2;
                                        } else {
                                            reason2 = LogEventDropped.Reason.SERVER_ERROR;
                                            if (i11 == reason2.m()) {
                                                reason = reason2;
                                            } else {
                                                Logging.a("SQLiteEventStore", Integer.valueOf(i11), "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    long j3 = cursor3.getLong(2);
                    if (!map.containsKey(string3)) {
                        map.put(string3, new ArrayList());
                    }
                    List list = (List) map.get(string3);
                    int i12 = LogEventDropped.f28024c;
                    LogEventDropped.Builder builder2 = new LogEventDropped.Builder();
                    builder2.f28028b = reason;
                    builder2.f28027a = j3;
                    list.add(new LogEventDropped(builder2.f28027a, builder2.f28028b));
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    int i13 = LogSourceMetrics.f28029c;
                    LogSourceMetrics.Builder builder3 = new LogSourceMetrics.Builder();
                    builder3.f28032a = (String) entry2.getKey();
                    builder3.f28033b = (List) entry2.getValue();
                    arrayList3.add(new LogSourceMetrics(builder3.f28032a, Collections.unmodifiableList(builder3.f28033b)));
                }
                final long jA = sQLiteEventStore.f28106c.a();
                builder.f28020a = (TimeWindow) sQLiteEventStore.o(new SQLiteEventStore.Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.b
                    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
                    public final Object apply(Object obj4) {
                        long j4 = jA;
                        Encoding encoding6 = SQLiteEventStore.g;
                        Cursor cursorRawQuery = ((SQLiteDatabase) obj4).rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                        try {
                            Encoding encoding7 = SQLiteEventStore.g;
                            cursorRawQuery.moveToNext();
                            long j5 = cursorRawQuery.getLong(0);
                            TimeWindow.Builder builder4 = new TimeWindow.Builder();
                            builder4.f28039a = 0L;
                            builder4.f28040b = 0L;
                            builder4.f28039a = j5;
                            builder4.f28040b = j4;
                            return new TimeWindow(builder4.f28039a, builder4.f28040b);
                        } finally {
                            cursorRawQuery.close();
                        }
                    }
                });
                builder.f28022c = new GlobalMetrics(new StorageMetrics(sQLiteEventStore.m().compileStatement("PRAGMA page_size").simpleQueryForLong() * sQLiteEventStore.m().compileStatement("PRAGMA page_count").simpleQueryForLong(), EventStoreConfig.f28100a.f28089b));
                builder.d = (String) sQLiteEventStore.f28108f.get();
                return new ClientMetrics(builder.f28020a, Collections.unmodifiableList(arrayList3), builder.f28022c, builder.d);
        }
    }
}

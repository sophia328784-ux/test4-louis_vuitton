package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.o60;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
public class SQLiteEventStore implements EventStore, SynchronizationGuard, ClientHealthMetricsStore {
    public static final Encoding g = new Encoding("proto");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SchemaManager f28105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Clock f28106c;
    public final Clock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EventStoreConfig f28107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Provider f28108f;

    public interface Function<T, U> {
        Object apply(Object obj);
    }

    public static class Metadata {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f28109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f28110b;

        public Metadata(String str, String str2) {
            this.f28109a = str;
            this.f28110b = str2;
        }
    }

    public interface Producer<T> {
    }

    public SQLiteEventStore(Clock clock, Clock clock2, EventStoreConfig eventStoreConfig, SchemaManager schemaManager, Provider provider) {
        this.f28105b = schemaManager;
        this.f28106c = clock;
        this.d = clock2;
        this.f28107e = eventStoreConfig;
        this.f28108f = provider;
    }

    public static Long n(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))));
        if (transportContext.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public static String q(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((PersistedEvent) it.next()).b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object r(Cursor cursor, Function function) {
        try {
            return function.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final boolean B0(TransportContext transportContext) {
        Boolean bool;
        SQLiteDatabase sQLiteDatabaseM = m();
        sQLiteDatabaseM.beginTransaction();
        try {
            Long lN = n(sQLiteDatabaseM, transportContext);
            if (lN == null) {
                bool = Boolean.FALSE;
            } else {
                Cursor cursorRawQuery = m().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lN.toString()});
                try {
                    Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                    cursorRawQuery.close();
                    bool = boolValueOf;
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            sQLiteDatabaseM.setTransactionSuccessful();
            sQLiteDatabaseM.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th2) {
            sQLiteDatabaseM.endTransaction();
            throw th2;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void C0(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            String strConcat = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(q(iterable));
            SQLiteDatabase sQLiteDatabaseM = m();
            sQLiteDatabaseM.beginTransaction();
            try {
                sQLiteDatabaseM.compileStatement(strConcat).execute();
                Cursor cursorRawQuery = sQLiteDatabaseM.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        k(cursorRawQuery.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                }
                cursorRawQuery.close();
                sQLiteDatabaseM.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseM.setTransactionSuccessful();
                sQLiteDatabaseM.endTransaction();
            } catch (Throwable th2) {
                sQLiteDatabaseM.endTransaction();
                throw th2;
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final PersistedEvent D1(TransportContext transportContext, EventInternal eventInternal) {
        Priority priorityD = transportContext.d();
        eventInternal.l();
        if (Log.isLoggable("TRuntime.".concat("SQLiteEventStore"), 3)) {
            new StringBuilder("Storing event with priority=").append(priorityD);
        }
        long jLongValue = ((Long) o(new d(this, eventInternal, transportContext, 0))).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return new AutoValue_PersistedEvent(jLongValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final int M() {
        long jA = this.f28106c.a() - ((AutoValue_EventStoreConfig) this.f28107e).f28091e;
        SQLiteDatabase sQLiteDatabaseM = m();
        sQLiteDatabaseM.beginTransaction();
        try {
            String[] strArr = {String.valueOf(jA)};
            Cursor cursorRawQuery = sQLiteDatabaseM.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
            while (cursorRawQuery.moveToNext()) {
                try {
                    k(cursorRawQuery.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            cursorRawQuery.close();
            int iDelete = sQLiteDatabaseM.delete(DbParams.TABLE_EVENTS, "timestamp_ms < ?", strArr);
            sQLiteDatabaseM.setTransactionSuccessful();
            sQLiteDatabaseM.endTransaction();
            return iDelete;
        } catch (Throwable th2) {
            sQLiteDatabaseM.endTransaction();
            throw th2;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final Iterable U() {
        return (Iterable) o(new a(0));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final Iterable U0(final TransportContext transportContext) {
        return (Iterable) o(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.c
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                SQLiteEventStore sQLiteEventStore = this.f28124a;
                AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) sQLiteEventStore.f28107e;
                int i2 = autoValue_EventStoreConfig.f28090c;
                TransportContext transportContext2 = transportContext;
                ArrayList arrayListP = sQLiteEventStore.p(sQLiteDatabase, transportContext2, i2);
                for (Priority priority : Priority.values()) {
                    if (priority != transportContext2.d()) {
                        int size = autoValue_EventStoreConfig.f28090c - arrayListP.size();
                        if (size <= 0) {
                            break;
                        }
                        arrayListP.addAll(sQLiteEventStore.p(sQLiteDatabase, transportContext2.e(priority), size));
                    }
                }
                final HashMap map = new HashMap();
                StringBuilder sb = new StringBuilder("event_id IN (");
                for (int i3 = 0; i3 < arrayListP.size(); i3++) {
                    sb.append(((PersistedEvent) arrayListP.get(i3)).b());
                    if (i3 < arrayListP.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                SQLiteEventStore.r(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new SQLiteEventStore.Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.g
                    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
                    public final Object apply(Object obj2) {
                        Cursor cursor = (Cursor) obj2;
                        Encoding encoding = SQLiteEventStore.g;
                        while (cursor.moveToNext()) {
                            long j2 = cursor.getLong(0);
                            Long lValueOf = Long.valueOf(j2);
                            HashMap map2 = map;
                            Set hashSet = (Set) map2.get(lValueOf);
                            if (hashSet == null) {
                                hashSet = new HashSet();
                                map2.put(Long.valueOf(j2), hashSet);
                            }
                            hashSet.add(new SQLiteEventStore.Metadata(cursor.getString(1), cursor.getString(2)));
                        }
                        return null;
                    }
                });
                ListIterator listIterator = arrayListP.listIterator();
                while (listIterator.hasNext()) {
                    PersistedEvent persistedEvent = (PersistedEvent) listIterator.next();
                    if (map.containsKey(Long.valueOf(persistedEvent.b()))) {
                        EventInternal.Builder builderN = persistedEvent.a().n();
                        for (SQLiteEventStore.Metadata metadata : (Set) map.get(Long.valueOf(persistedEvent.b()))) {
                            builderN.a(metadata.f28109a, metadata.f28110b);
                        }
                        listIterator.set(new AutoValue_PersistedEvent(persistedEvent.b(), persistedEvent.c(), builderN.b()));
                    }
                }
                return arrayListP;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard
    public final Object c(SynchronizationGuard.CriticalSection criticalSection) {
        SQLiteDatabase sQLiteDatabaseM = m();
        Clock clock = this.d;
        long jA = clock.a();
        while (true) {
            try {
                sQLiteDatabaseM.beginTransaction();
                try {
                    Object objExecute = criticalSection.execute();
                    sQLiteDatabaseM.setTransactionSuccessful();
                    return objExecute;
                } finally {
                    sQLiteDatabaseM.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e2) {
                if (clock.a() >= ((long) ((AutoValue_EventStoreConfig) this.f28107e).d) + jA) {
                    throw new SynchronizationException("Timed out while trying to acquire the lock.", e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f28105b.close();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final void h() {
        SQLiteDatabase sQLiteDatabaseM = m();
        sQLiteDatabaseM.beginTransaction();
        try {
            sQLiteDatabaseM.compileStatement("DELETE FROM log_event_dropped").execute();
            sQLiteDatabaseM.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f28106c.a()).execute();
            sQLiteDatabaseM.setTransactionSuccessful();
        } finally {
            sQLiteDatabaseM.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void i(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            m().compileStatement("DELETE FROM events WHERE _id in ".concat(q(iterable))).execute();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final ClientMetrics j() {
        int i2 = ClientMetrics.f28016e;
        ClientMetrics.Builder builder = new ClientMetrics.Builder();
        HashMap map = new HashMap();
        SQLiteDatabase sQLiteDatabaseM = m();
        sQLiteDatabaseM.beginTransaction();
        try {
            ClientMetrics clientMetrics = (ClientMetrics) r(sQLiteDatabaseM.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new d(this, map, builder, 2));
            sQLiteDatabaseM.setTransactionSuccessful();
            return clientMetrics;
        } finally {
            sQLiteDatabaseM.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public final void k(final long j2, final LogEventDropped.Reason reason, final String str) {
        o(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.f
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.g;
                LogEventDropped.Reason reason2 = reason;
                String string = Integer.toString(reason2.m());
                String str2 = str;
                boolean zBooleanValue = ((Boolean) SQLiteEventStore.r(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, string}), new a(2))).booleanValue();
                long j3 = j2;
                if (zBooleanValue) {
                    sQLiteDatabase.execSQL(o60.i(j3, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + ", " WHERE log_source = ? AND reason = ?"), new String[]{str2, Integer.toString(reason2.m())});
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("log_source", str2);
                    contentValues.put("reason", Integer.valueOf(reason2.m()));
                    contentValues.put("events_dropped_count", Long.valueOf(j3));
                    sQLiteDatabase.insert("log_event_dropped", null, contentValues);
                }
                return null;
            }
        });
    }

    public final SQLiteDatabase m() {
        SchemaManager schemaManager = this.f28105b;
        Objects.requireNonNull(schemaManager);
        Clock clock = this.d;
        long jA = clock.a();
        while (true) {
            try {
                return schemaManager.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e2) {
                if (clock.a() >= ((long) ((AutoValue_EventStoreConfig) this.f28107e).d) + jA) {
                    throw new SynchronizationException("Timed out while trying to open db.", e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final Object o(Function function) {
        SQLiteDatabase sQLiteDatabaseM = m();
        sQLiteDatabaseM.beginTransaction();
        try {
            Object objApply = function.apply(sQLiteDatabaseM);
            sQLiteDatabaseM.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseM.endTransaction();
        }
    }

    public final ArrayList p(SQLiteDatabase sQLiteDatabase, TransportContext transportContext, int i2) {
        ArrayList arrayList = new ArrayList();
        Long lN = n(sQLiteDatabase, transportContext);
        if (lN == null) {
            return arrayList;
        }
        r(sQLiteDatabase.query(DbParams.TABLE_EVENTS, new String[]{"_id", "transport_name", com.batch.android.s.b.a.f24020i, "uptime_ms", "payload_encoding", ConfigurationName.PING_PAYLOAD, m.v, "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{lN.toString()}, null, null, null, String.valueOf(i2)), new d(this, arrayList, transportContext, 1));
        return arrayList;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final void q1(final long j2, final TransportContext transportContext) {
        o(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.e
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.g;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j2));
                TransportContext transportContext2 = transportContext;
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext2.b(), String.valueOf(PriorityMapping.a(transportContext2.d()))}) < 1) {
                    contentValues.put("backend_name", transportContext2.b());
                    contentValues.put("priority", Integer.valueOf(PriorityMapping.a(transportContext2.d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public final long z0(TransportContext transportContext) {
        Cursor cursorRawQuery = m().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))});
        try {
            return (cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L).longValue();
        } finally {
            cursorRawQuery.close();
        }
    }
}

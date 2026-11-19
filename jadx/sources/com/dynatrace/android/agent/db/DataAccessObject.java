package com.dynatrace.android.agent.db;

import android.content.Context;
import android.database.Cursor;
import com.batch.android.s.b;
import com.dynatrace.android.agent.BasicSegment;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.comm.MonitoringDataPacket;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class DataAccessObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventsDbHelper f27507a;

    static {
        boolean z = Global.f27307a;
    }

    public DataAccessObject(Context context) {
        this(new EventsDbHelper(context));
    }

    public final synchronized void a(long j2, boolean z) {
        try {
            this.f27507a.c(j2 - 540000, z);
        } catch (Exception unused) {
            boolean z2 = Global.f27307a;
        }
    }

    public final MonitoringDataEntity b(long j2, BasicSegment.UpdatableDataGenerator updatableDataGenerator) {
        int i2;
        int i3;
        boolean z;
        long j3;
        String str;
        Cursor cursorQuery = this.f27507a.getReadableDatabase().query(true, "Events", new String[]{b.a.f24015b, "visitor_id", "session_id", "sequence_nr", "basic_segment", "event_segment", "event_id", "session_start", "event_start", "multiplicity", "server_id", "app_id", "sr_param"}, "id >= 0", null, null, null, "visitor_id ASC, session_id ASC, sequence_nr ASC, server_id ASC, id ASC", null);
        if (cursorQuery == null) {
            if (Global.f27307a) {
                Utility.n("null cursor for fetchEvents");
            }
            return null;
        }
        if (!cursorQuery.moveToFirst()) {
            cursorQuery.close();
            return null;
        }
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(b.a.f24015b);
        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("visitor_id");
        int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("session_id");
        int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("sequence_nr");
        int columnIndexOrThrow5 = cursorQuery.getColumnIndexOrThrow("basic_segment");
        int columnIndexOrThrow6 = cursorQuery.getColumnIndexOrThrow("event_segment");
        cursorQuery.getColumnIndexOrThrow("event_id");
        int columnIndexOrThrow7 = cursorQuery.getColumnIndexOrThrow("session_start");
        cursorQuery.getColumnIndexOrThrow("event_start");
        int columnIndexOrThrow8 = cursorQuery.getColumnIndexOrThrow("multiplicity");
        int columnIndexOrThrow9 = cursorQuery.getColumnIndexOrThrow("server_id");
        int columnIndexOrThrow10 = cursorQuery.getColumnIndexOrThrow("sr_param");
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        long j4 = 0;
        int i4 = 0;
        int length = 0;
        int i5 = 0;
        long j5 = -1;
        boolean z2 = true;
        String str3 = null;
        long j6 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            long j7 = cursorQuery.getLong(columnIndexOrThrow2);
            int i8 = columnIndexOrThrow2;
            int i9 = cursorQuery.getInt(columnIndexOrThrow3);
            int i10 = columnIndexOrThrow3;
            int i11 = cursorQuery.getInt(columnIndexOrThrow4);
            int i12 = columnIndexOrThrow4;
            String string = cursorQuery.getString(columnIndexOrThrow6);
            int i13 = columnIndexOrThrow6;
            int i14 = cursorQuery.getInt(columnIndexOrThrow9);
            String string2 = cursorQuery.getString(columnIndexOrThrow5);
            int i15 = columnIndexOrThrow5;
            long j8 = cursorQuery.getLong(columnIndexOrThrow7);
            int i16 = columnIndexOrThrow7;
            i2 = cursorQuery.getInt(columnIndexOrThrow8);
            String string3 = cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10);
            int length2 = string2.length();
            updatableDataGenerator.getClass();
            int length3 = BasicSegment.UpdatableDataGenerator.a(i2, string3, j8).length() + length2;
            if (z2) {
                arrayList.add(string);
                length = string.length();
                i6 = i9;
                i4 = i11;
                j5 = cursorQuery.getLong(columnIndexOrThrow);
                z2 = false;
                j4 = j7;
                i7 = i14;
            } else {
                int length4 = string.length() + arrayList.size() + length3 + 1 + length;
                if (j4 != j7 || i6 != i9 || i4 != i11 || i7 != i14 || length4 > j2) {
                    i3 = i6;
                    z = false;
                    j3 = j6;
                    str = str2;
                    i2 = i5;
                    break;
                }
                arrayList.add(string);
                length = string.length() + length;
                j5 = cursorQuery.getLong(columnIndexOrThrow);
            }
            if (!cursorQuery.moveToNext()) {
                i3 = i6;
                str3 = string3;
                z = true;
                str = string2;
                j3 = j8;
                break;
            }
            i5 = i2;
            str3 = string3;
            columnIndexOrThrow2 = i8;
            columnIndexOrThrow3 = i10;
            columnIndexOrThrow4 = i12;
            columnIndexOrThrow6 = i13;
            str2 = string2;
            columnIndexOrThrow5 = i15;
            columnIndexOrThrow7 = i16;
            columnIndexOrThrow8 = columnIndexOrThrow8;
            j6 = j8;
        }
        int i17 = i7;
        int i18 = i4;
        long j9 = j5;
        long j10 = j4;
        cursorQuery.close();
        return new MonitoringDataEntity(j10, i3, i18, i17, j9, new MonitoringDataPacket(str + BasicSegment.UpdatableDataGenerator.a(i2, str3, j3), arrayList), z);
    }

    public final synchronized void c(LinkedList linkedList, ServerConfiguration serverConfiguration) {
        this.f27507a.g(linkedList);
        if (serverConfiguration.f27412e > 0) {
            for (int i2 = 0; i2 < linkedList.size(); i2++) {
                int i3 = ((DatabaseWriteQueue.DatabaseRecord) linkedList.get(i2)).d;
                int i4 = EventsDbHelper.f27513e;
                if (i3 == i4) {
                    try {
                        this.f27507a.d(i4, serverConfiguration.f27412e);
                        break;
                    } catch (Exception unused) {
                        boolean z = Global.f27307a;
                    }
                }
            }
        }
    }

    public DataAccessObject(EventsDbHelper eventsDbHelper) {
        this.f27507a = eventsDbHelper;
    }
}

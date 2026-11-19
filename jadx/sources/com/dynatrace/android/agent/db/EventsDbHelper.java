package com.dynatrace.android.agent.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class EventsDbHelper extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f27513e = EventType.CRASH.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteStatement f27514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SQLiteStatement f27515c;
    public final SQLiteStatement d;

    static {
        boolean z = Global.f27307a;
    }

    public EventsDbHelper(Context context) {
        super(context, "DTXDb", (SQLiteDatabase.CursorFactory) null, 10);
        this.f27514b = getWritableDatabase().compileStatement("DELETE FROM Events WHERE session_start + event_start < ?");
        this.f27515c = getWritableDatabase().compileStatement("DELETE FROM Events WHERE session_start + event_start < ? AND event_id <> " + f27513e);
        this.d = getWritableDatabase().compileStatement("DELETE FROM Events WHERE event_id= ? AND id NOT IN (SELECT id FROM Events WHERE event_id= ? ORDER BY (session_start + event_start) DESC LIMIT ?)");
    }

    public final void c(long j2, boolean z) {
        SQLiteStatement sQLiteStatement = z ? this.f27515c : this.f27514b;
        sQLiteStatement.bindLong(1, j2);
        int iExecuteUpdateDelete = sQLiteStatement.executeUpdateDelete();
        if (Global.f27307a) {
            Utility.n("Rows deleted: " + iExecuteUpdateDelete);
        }
    }

    public final void d(int i2, int i3) {
        long j2 = i2;
        SQLiteStatement sQLiteStatement = this.d;
        sQLiteStatement.bindLong(1, j2);
        sQLiteStatement.bindLong(2, j2);
        sQLiteStatement.bindLong(3, i3);
        int iExecuteUpdateDelete = sQLiteStatement.executeUpdateDelete();
        if (Global.f27307a) {
            Utility.n("Rows deleted: " + iExecuteUpdateDelete);
        }
    }

    public final void e(long j2, long j3, int i2, int i3, int i4) {
        int iDelete = getWritableDatabase().delete("Events", "visitor_id= ? AND session_id= ? AND sequence_nr= ? AND server_id= ? AND id<= ?", new String[]{String.valueOf(j2), String.valueOf(i2), String.valueOf(i3), String.valueOf(i4), String.valueOf(j3)});
        if (Global.f27307a) {
            Utility.n("Rows removed: " + iDelete);
        }
    }

    public final void g(LinkedList linkedList) {
        if (linkedList.isEmpty()) {
            return;
        }
        Iterator it = linkedList.iterator();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            while (it.hasNext()) {
                try {
                    DatabaseWriteQueue.DatabaseRecord databaseRecord = (DatabaseWriteQueue.DatabaseRecord) it.next();
                    Session session = databaseRecord.f27510c;
                    int i2 = session.d;
                    if (i2 == -1) {
                        i2 = 1;
                    }
                    if (session.e()) {
                        Session session2 = databaseRecord.f27510c;
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("visitor_id", Long.valueOf(session2.f27476b));
                        contentValues.put("session_id", Integer.valueOf(session2.f27477c));
                        contentValues.put("sequence_nr", (Integer) 0);
                        contentValues.put("basic_segment", databaseRecord.f27508a);
                        contentValues.put("event_segment", databaseRecord.f27509b);
                        contentValues.put("event_id", Integer.valueOf(databaseRecord.d));
                        contentValues.put("session_start", Long.valueOf(session2.f27475a));
                        contentValues.put("event_start", Long.valueOf(databaseRecord.f27511e));
                        contentValues.put("multiplicity", Integer.valueOf(i2));
                        contentValues.put("server_id", Integer.valueOf(databaseRecord.f27512f));
                        contentValues.put("app_id", databaseRecord.g);
                        contentValues.put("sr_param", (String) null);
                        writableDatabase.insert("Events", null, contentValues);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Exception unused) {
            if (Global.f27307a) {
                Utility.g();
            }
        }
    }

    public final void h(SQLiteDatabase sQLiteDatabase, int i2, int i3, String str) {
        if (Global.f27307a) {
            Utility.n(str + " Db.Table(DTXDb.Events) from version " + i2 + " to " + i3 + FileUtils.HIDDEN_PREFIX);
        }
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Events");
        } catch (Exception unused) {
            if (Global.f27307a) {
                Utility.g();
            }
        }
        onCreate(sQLiteDatabase);
    }

    public final boolean j(Session session) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("multiplicity", Integer.valueOf(session.d));
        contentValues.put("sr_param", (String) null);
        return getWritableDatabase().update("Events", contentValues, "visitor_id= ? AND session_id= ?", new String[]{String.valueOf(session.f27476b), String.valueOf(session.f27477c)}) > 0;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (Global.f27307a) {
            Utility.n("Creating Db.Table(DTXDb.Events)");
        }
        try {
            sQLiteDatabase.execSQL("CREATE table Events (id INTEGER PRIMARY KEY AUTOINCREMENT, visitor_id INTEGER NOT NULL, session_id INTEGER NOT NULL, sequence_nr INTEGER NOT NULL, basic_segment TEXT NOT NULL, event_segment TEXT NOT NULL, event_id INTEGER NOT NULL, session_start INTEGER NOT NULL, event_start INTEGER NOT NULL, multiplicity INTEGER NOT NULL,server_id INTEGER NOT NULL,app_id TEXT NOT NULL,sr_param TEXT);");
        } catch (Exception unused) {
            if (Global.f27307a) {
                Utility.g();
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        h(sQLiteDatabase, i2, i3, "Downgrading");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        h(sQLiteDatabase, i2, i3, "Upgrading");
    }
}

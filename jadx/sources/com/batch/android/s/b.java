package com.batch.android.s;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f24009b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f24010c = "LocalCampaignsSQLTracker.db";
    private static final String d = "CREATE TABLE LocalCampaignsSQLTracker (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT,kind INTEGER,count INTEGER,last_oc INTEGER,custom_user_id TEXT,unique (id, custom_user_id, kind) on conflict replace)";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f24011e = "DROP TABLE IF EXISTS LocalCampaignsSQLTracker";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f24012f = "CREATE TABLE view_events (_id INTEGER PRIMARY KEY AUTOINCREMENT,campaign_id TEXT,timestamp_ms INTEGER NOT NULL,custom_user_id TEXT)";
    private static final String g = "CREATE TRIGGER trigger_clean_view_events AFTER INSERT ON view_events BEGIN DELETE FROM view_events WHERE timestamp_ms=( SELECT min(timestamp_ms)  FROM view_events ) AND (SELECT count(*) from view_events )>100; END;";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f24013h = "ALTER TABLE view_events ADD COLUMN custom_user_id text DEFAULT '';";

    public static class a implements BaseColumns {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f24014a = "LocalCampaignsSQLTracker";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f24015b = "id";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f24016c = "custom_user_id";
        public static final String d = "kind";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f24017e = "last_oc";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f24018f = "count";
        public static final String g = "view_events";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f24019h = "campaign_id";

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final String f24020i = "timestamp_ms";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f24021j = "custom_user_id";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f24022k = "trigger_clean_view_events";
    }

    public b(Context context) {
        super(context, f24010c, (SQLiteDatabase.CursorFactory) null, 3);
    }

    public String a(SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb = new StringBuilder("Table LocalCampaignsSQLTracker:\n");
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM LocalCampaignsSQLTracker", null);
        if (cursorRawQuery.moveToFirst()) {
            String[] columnNames = cursorRawQuery.getColumnNames();
            do {
                for (String str : columnNames) {
                    sb.append(str + ": " + cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow(str)) + "\n");
                }
                sb.append("\n");
            } while (cursorRawQuery.moveToNext());
        }
        if (!cursorRawQuery.isClosed()) {
            cursorRawQuery.close();
        }
        return sb.toString();
    }

    public void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL("ALTER TABLE LocalCampaignsSQLTracker RENAME TO LocalCampaignsSQLTracker_temp");
            sQLiteDatabase.execSQL(d);
            sQLiteDatabase.execSQL("INSERT INTO LocalCampaignsSQLTracker (_id, id, kind, count, last_oc, custom_user_id) SELECT _id, id, kind, count, last_oc, '' FROM LocalCampaignsSQLTracker_temp");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS LocalCampaignsSQLTracker_temp");
            sQLiteDatabase.execSQL(f24013h);
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(d);
        sQLiteDatabase.execSQL(f24012f);
        sQLiteDatabase.execSQL(g);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2) {
            sQLiteDatabase.execSQL(f24012f);
            sQLiteDatabase.execSQL(g);
        }
        if (i2 < 3) {
            b(sQLiteDatabase);
        }
    }
}

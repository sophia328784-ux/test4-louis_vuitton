package com.sensorsdata.analytics.android.sdk.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;

/* JADX INFO: loaded from: classes3.dex */
class SensorsDataDBHelper extends SQLiteOpenHelper {
    private static final String CHANNEL_EVENT_PERSISTENT_TABLE = "CREATE TABLE IF NOT EXISTS t_channel (event_name TEXT PRIMARY KEY, result INTEGER)";
    private static final String CREATE_EVENTS_TABLE = "CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT, data TEXT NOT NULL, created_at INTEGER NOT NULL, is_instant_event INTEGER NOT NULL DEFAULT 0);";
    private static final String EVENTS_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);";
    private static final String TAG = "SA.SQLiteOpenHelper";

    public SensorsDataDBHelper(Context context) {
        super(context, DbParams.DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 6);
    }

    private boolean checkColumnExist(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        boolean z = false;
        Cursor cursorRawQuery = null;
        try {
            try {
                try {
                    cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
                    if (cursorRawQuery != null && cursorRawQuery.getColumnIndex(str2) != -1) {
                        z = true;
                    }
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                        cursorRawQuery.close();
                    }
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                    if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    }
                }
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        if (!cursorRawQuery.isClosed()) {
                            cursorRawQuery.close();
                        }
                    } catch (Exception e3) {
                        SALog.printStackTrace(e3);
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            SALog.printStackTrace(e4);
        }
        return z;
    }

    private void createTable(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(CREATE_EVENTS_TABLE);
        sQLiteDatabase.execSQL(EVENTS_TIME_INDEX);
        sQLiteDatabase.execSQL(CHANNEL_EVENT_PERSISTENT_TABLE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        SALog.i(TAG, "Creating a new Sensors Analytics DB");
        createTable(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        SALog.i(TAG, "Upgrading app, replacing Sensors Analytics DB, oldVersion:" + i2 + ", newVersion:" + i3);
        if (i2 < 4) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                return;
            }
        }
        createTable(sQLiteDatabase);
        if (i2 < 4 || i2 > 5 || checkColumnExist(sQLiteDatabase, DbParams.TABLE_EVENTS, DbParams.KEY_IS_INSTANT_EVENT)) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN  is_instant_event INTEGER NOT NULL DEFAULT 0");
    }
}

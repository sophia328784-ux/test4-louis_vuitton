package com.batch.android.k1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final String f23602b = "events";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final String f23603c = "_db_id";
    protected static final String d = "id";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f23604e = "name";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f23605f = "date";
    protected static final String g = "timezone";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f23606h = "parameters";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final String f23607i = "state";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final String f23608j = "serverts";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected static final String f23609k = "sdate";
    protected static final String l = "session_id";
    private static final String m = "ba_tr.db";
    private static final int n = 3;

    public a(Context context) {
        super(context, m, (SQLiteDatabase.CursorFactory) null, 3);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table events(_db_id integer primary key autoincrement, id text not null, name text not null, date integer not null, timezone text not null, parameters text, state integer not null, serverts integer, sdate integer null, session_id text null);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN sdate integer null;");
        }
        if (i2 < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN session_id text null;");
        }
    }
}

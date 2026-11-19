package com.batch.android.q;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final String f23912b = "_db_id";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final String f23913c = "fetchers";
    protected static final String d = "type";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f23914e = "identifier";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f23915f = "fetcher_notifications";
    protected static final String g = "fetcher_id";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f23916h = "install_id";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final String f23917i = "custom_id";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final String f23918j = "notifications";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected static final String f23919k = "notification_id";
    protected static final String l = "send_id";
    protected static final String m = "title";
    protected static final String n = "body";
    protected static final String o = "unread";
    protected static final String p = "deleted";
    protected static final String q = "date";
    protected static final String r = "payload";
    private static final String s = "ba_in.db";
    private static final int t = 2;

    public c(Context context) {
        super(context, s, (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table fetchers(_db_id integer primary key autoincrement, type integer not null, identifier text not null, unique(type, identifier));");
        sQLiteDatabase.execSQL("create table notifications(_db_id integer primary key autoincrement, notification_id text not null, send_id text not null, title text not null, body text not null, unread integer not null default 0 check(unread IN (0,1)), deleted integer not null default 0 check(deleted IN (0,1)), date integer not null, payload text, unique(notification_id,send_id));");
        sQLiteDatabase.execSQL("create table fetcher_notifications(_db_id integer primary key autoincrement, fetcher_id integer not null, notification_id text not null, install_id text, custom_id text, unique(fetcher_id, notification_id), foreign key(fetcher_id) references fetchers(_db_id), foreign key(notification_id) references notifications(notification_id));");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE notifications ADD COLUMN deleted integer not null default 0 check(deleted IN (0,1)) ");
        }
    }
}

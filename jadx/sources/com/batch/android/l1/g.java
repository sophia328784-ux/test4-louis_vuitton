package com.batch.android.l1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final String f23678b = "attributes";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final String f23679c = "name";
    protected static final String d = "type";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f23680e = "value";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f23681f = "changeset";
    protected static final String g = "tags";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f23682h = "collection";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final String f23683i = "value";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static final String f23684j = "changeset";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f23685k = "ba_user_profile.db";
    private static final int l = 1;

    public g(Context context) {
        super(context, f23685k, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table attributes(name text not null, type integer, value text, changeset integer, unique(name) on conflict replace, unique(name,type,value) on conflict abort);");
        sQLiteDatabase.execSQL("create table tags(collection text not null, value text not null, changeset integer, unique(collection,value) on conflict abort);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}

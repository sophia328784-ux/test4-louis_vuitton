package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
abstract class d$a implements d$b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f40303a;

    public d$a(int i2) {
        int i3 = DatabaseOpenHelper.g;
        this.f40303a = (i2 & 65535) | 65536;
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public void a(SQLiteDatabase sQLiteDatabase) {
        Log.g(3, "DatabaseUpgradeHelper", "upgrade db to version: " + this.f40303a);
    }

    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final int a() {
        return this.f40303a;
    }
}

package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzgj extends com.google.android.gms.internal.measurement.zzcb {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgl f31749b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgj(zzgl zzglVar, Context context) {
        super(context, "google_app_measurement_local.db", null, 1);
        this.f31749b = zzglVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e2) {
            throw e2;
        } catch (SQLiteException unused) {
            zzgl zzglVar = this.f31749b;
            zzic zzicVar = zzglVar.f31850a;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Opening the local database failed, dropping and recreating it");
            if (!zzicVar.f31838a.getDatabasePath("google_app_measurement_local.db").delete()) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b("google_app_measurement_local.db", "Failed to delete corrupted local db file");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                zzgu zzguVar3 = zzglVar.f31850a.f31842f;
                zzic.m(zzguVar3);
                zzguVar3.f31769f.b(e3, "Failed to open local database. Events will bypass local storage");
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzgu zzguVar = this.f31749b.f31850a.f31842f;
        zzic.m(zzguVar);
        zzax.b(zzguVar, sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        zzgu zzguVar = this.f31749b.f31850a.f31842f;
        zzic.m(zzguVar);
        zzax.a(zzguVar, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", zzgl.f31753e);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }
}

package com.google.android.gms.internal.gtm;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
final class zzbi implements zzcf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbk f29975a;

    public zzbi(zzbk zzbkVar) {
        this.f29975a = zzbkVar;
    }

    public final void a(zzat zzatVar) {
        this.f29975a.d(new String[]{String.valueOf(zzatVar.f29966a)});
        zzao.a(2);
    }

    public final void b(zzat zzatVar) {
        long j2 = zzatVar.f29967b;
        long j3 = zzatVar.f29966a;
        zzbk zzbkVar = this.f29975a;
        DefaultClock defaultClock = zzbkVar.f29982f;
        if (j2 != 0) {
            long j4 = j2 + 14400000;
            defaultClock.getClass();
            if (j4 < System.currentTimeMillis()) {
                zzbkVar.d(new String[]{String.valueOf(j3)});
                zzao.a(2);
                return;
            }
            return;
        }
        defaultClock.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        SQLiteDatabase sQLiteDatabaseE = zzbkVar.e();
        if (sQLiteDatabaseE == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", Long.valueOf(jCurrentTimeMillis));
        try {
            sQLiteDatabaseE.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j3)});
        } catch (SQLiteException e2) {
            e2.getMessage();
            zzao.a(5);
            zzbkVar.d(new String[]{String.valueOf(j3)});
        }
    }
}

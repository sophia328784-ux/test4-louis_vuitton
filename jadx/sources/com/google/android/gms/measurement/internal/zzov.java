package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzov implements Runnable {
    final /* synthetic */ zzph zza;
    final /* synthetic */ zzpg zzb;

    public zzov(zzpg zzpgVar, zzph zzphVar) {
        this.zza = zzphVar;
        Objects.requireNonNull(zzpgVar);
        this.zzb = zzpgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.zzb;
        zzpgVar.c().g();
        zzpgVar.f31988k = new zzhk(zzpgVar);
        zzaw zzawVar = new zzaw(zzpgVar);
        zzawVar.i();
        zzpgVar.f31982c = zzawVar;
        zzht zzhtVar = zzpgVar.f31980a;
        zzal zzalVarF0 = zzpgVar.f0();
        Preconditions.h(zzhtVar);
        zzalVarF0.d = zzhtVar;
        zznn zznnVar = new zznn(zzpgVar);
        zznnVar.i();
        zzpgVar.f31986i = zznnVar;
        zzad zzadVar = new zzad(zzpgVar);
        zzadVar.i();
        zzpgVar.f31984f = zzadVar;
        zzlp zzlpVar = new zzlp(zzpgVar);
        zzlpVar.i();
        zzpgVar.f31985h = zzlpVar;
        zzok zzokVar = new zzok(zzpgVar);
        zzokVar.i();
        zzpgVar.f31983e = zzokVar;
        zzpgVar.d = new zzhb(zzpgVar);
        if (zzpgVar.r != zzpgVar.s) {
            zzpgVar.b().f31769f.c("Not all upload components initialized", Integer.valueOf(zzpgVar.r), Integer.valueOf(zzpgVar.s));
        }
        zzpgVar.m.set(true);
        zzpgVar.b().n.a("UploadController is now fully initialized");
        zzpgVar.c().g();
        zzaw zzawVar2 = zzpgVar.f31982c;
        zzpg.U(zzawVar2);
        zzawVar2.q();
        zzaw zzawVar3 = zzpgVar.f31982c;
        zzpg.U(zzawVar3);
        zzawVar3.g();
        zzawVar3.h();
        if (zzawVar3.R()) {
            zzfx zzfxVar = zzfy.u0;
            if (((Long) zzfxVar.a(null)).longValue() != 0) {
                SQLiteDatabase sQLiteDatabaseX = zzawVar3.X();
                zzic zzicVar = zzawVar3.f31850a;
                zzicVar.f31846k.getClass();
                int iDelete = sQLiteDatabaseX.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(zzfxVar.a(null))});
                if (iDelete > 0) {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.n.b(Integer.valueOf(iDelete), "Deleted stale trigger uris. rowsDeleted");
                }
            }
        }
        if (zzpgVar.f31986i.f31925h.a() == 0) {
            zzhe zzheVar = zzpgVar.f31986i.f31925h;
            ((DefaultClock) zzpgVar.e()).getClass();
            zzheVar.b(System.currentTimeMillis());
        }
        zzpgVar.N();
    }
}

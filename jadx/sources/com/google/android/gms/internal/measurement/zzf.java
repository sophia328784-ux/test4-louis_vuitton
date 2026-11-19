package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaw f30621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzg f30622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzg f30623c;
    public final zzj d;

    public zzf() {
        zzaw zzawVar = new zzaw();
        this.f30621a = zzawVar;
        zzg zzgVar = new zzg(null, zzawVar);
        this.f30623c = zzgVar;
        this.f30622b = zzgVar.c();
        zzj zzjVar = new zzj();
        this.d = zzjVar;
        zzgVar.e("require", new zzw(zzjVar));
        zzjVar.f30642a.put("internal.platform", zze.zza);
        zzgVar.e("runtime.counter", new zzah(Double.valueOf(0.0d)));
    }

    public final zzao a(zzg zzgVar, zzje... zzjeVarArr) {
        zzao zzaoVarB = zzao.k0;
        for (zzje zzjeVar : zzjeVarArr) {
            zzaoVarB = zzi.b(zzjeVar);
            zzh.k(this.f30623c);
            if ((zzaoVarB instanceof zzap) || (zzaoVarB instanceof zzan)) {
                zzaoVarB = this.f30621a.b(zzgVar, zzaoVarB);
            }
        }
        return zzaoVarB;
    }
}

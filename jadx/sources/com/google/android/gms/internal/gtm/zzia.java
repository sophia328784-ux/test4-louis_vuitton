package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
public final class zzia extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzkm f30093a = new zzkm(Double.valueOf(0.0d));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzkm f30094b = new zzkm(Double.valueOf(2.147483647E9d));

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        zzkk zzkkVar = length > 0 ? zzkkVarArr[0] : f30093a;
        zzkk zzkkVar2 = length > 1 ? zzkkVarArr[1] : f30094b;
        double dDoubleValue = 0.0d;
        double dDoubleValue2 = 2.147483647E9d;
        if ((zzkkVar instanceof zzkm) && !Double.isNaN(((zzkm) zzkkVar).f30167b.doubleValue()) && (zzkkVar2 instanceof zzkm) && !Double.isNaN(((zzkm) zzkkVar2).f30167b.doubleValue()) && zzdj.f(zzkkVar, zzkkVar2)) {
            dDoubleValue = ((zzkm) zzkkVar).f30167b.doubleValue();
            dDoubleValue2 = ((zzkm) zzkkVar2).f30167b.doubleValue();
        }
        return new zzkm(Double.valueOf(Math.round(((dDoubleValue2 - dDoubleValue) * Math.random()) + dDoubleValue)));
    }
}

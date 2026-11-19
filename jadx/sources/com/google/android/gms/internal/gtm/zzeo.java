package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzeo extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z = false;
        Preconditions.a(zzkkVarArr.length == 2);
        zzkk zzkvVar = zzkkVarArr[0];
        boolean z2 = zzkvVar instanceof zzks;
        zzkk zzkvVar2 = zzkkVarArr[1];
        if (z2 || (zzkvVar instanceof zzkr) || (zzkvVar instanceof zzkn)) {
            zzkvVar = new zzkv(zzdj.d(zzkvVar));
        }
        if ((zzkvVar2 instanceof zzks) || (zzkvVar2 instanceof zzkr) || (zzkvVar2 instanceof zzkn)) {
            zzkvVar2 = new zzkv(zzdj.d(zzkvVar2));
        }
        if (((zzkvVar instanceof zzkv) && (zzkvVar2 instanceof zzkv)) || (!Double.isNaN(zzdj.b(zzkvVar)) && !Double.isNaN(zzdj.b(zzkvVar2)))) {
            z = !zzdj.f(zzkvVar2, zzkvVar);
        }
        return new zzkl(Boolean.valueOf(z));
    }
}

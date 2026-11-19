package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzft extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 2);
        zzkk zzkvVar = zzkkVarArr[0];
        boolean z = zzkvVar instanceof zzko;
        zzkk zzkvVar2 = zzkkVarArr[1];
        if ((z && zzkvVar != zzko.f30172h && zzkvVar != zzko.g) || ((zzkvVar2 instanceof zzko) && zzkvVar2 != zzko.f30172h && zzkvVar2 != zzko.g)) {
            md.n("Illegal InternalType passed to Add.");
            return null;
        }
        if ((zzkvVar instanceof zzks) || (zzkvVar instanceof zzkr) || (zzkvVar instanceof zzkn)) {
            zzkvVar = new zzkv(zzdj.d(zzkvVar));
        }
        if ((zzkvVar2 instanceof zzks) || (zzkvVar2 instanceof zzkr) || (zzkvVar2 instanceof zzkn)) {
            zzkvVar2 = new zzkv(zzdj.d(zzkvVar2));
        }
        if ((zzkvVar instanceof zzkv) || (zzkvVar2 instanceof zzkv)) {
            return new zzkv(String.valueOf(zzdj.d(zzkvVar)).concat(String.valueOf(zzdj.d(zzkvVar2))));
        }
        return new zzkm(Double.valueOf(zzdj.c(zzkvVar, zzkvVar2)));
    }
}

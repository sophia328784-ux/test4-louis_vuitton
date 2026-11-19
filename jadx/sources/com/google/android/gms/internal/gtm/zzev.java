package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzev implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 3);
        zzkk zzkkVarC = zzdj.g(zzkw.c(zzbvVar, zzkkVarArr[0])) ? zzkw.c(zzbvVar, zzkkVarArr[1]) : zzkw.c(zzbvVar, zzkkVarArr[2]);
        if (!(zzkkVarC instanceof zzko) || zzkkVarC == zzko.f30172h || zzkkVarC == zzko.g) {
            return zzkkVarC;
        }
        md.n("Illegal InternalType passed to Ternary.");
        return null;
    }
}

package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzeh implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 2);
        zzkk zzkkVarC = zzkw.c(zzbvVar, zzkkVarArr[0]);
        return !zzdj.g(zzkkVarC) ? zzkkVarC : zzkw.c(zzbvVar, zzkkVarArr[1]);
    }
}

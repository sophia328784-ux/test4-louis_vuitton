package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfx extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 2);
        return new zzkm(Double.valueOf(zzdj.c(zzkkVarArr[0], new zzkm(Double.valueOf(-zzdj.b(zzkkVarArr[1]))))));
    }
}

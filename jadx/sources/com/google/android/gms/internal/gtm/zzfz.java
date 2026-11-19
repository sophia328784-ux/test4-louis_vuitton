package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfz extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length > 0);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        StringBuilder sb = new StringBuilder(((zzkv) zzkkVarArr[0]).f30188b);
        for (int i2 = 1; i2 < zzkkVarArr.length; i2++) {
            sb.append(zzdj.d(zzkkVarArr[i2]));
        }
        return new zzkv(sb.toString());
    }
}

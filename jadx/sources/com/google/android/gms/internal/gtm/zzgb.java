package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgb extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 2) {
            z = true;
        } else if (length == 3) {
            z = true;
            length = 3;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        String strD = zzdj.d(zzkkVarArr[1]);
        double dA = Double.POSITIVE_INFINITY;
        if (length == 3 && !Double.isNaN(zzdj.b(zzkkVarArr[2]))) {
            dA = zzdj.a(zzkkVarArr[2]);
        }
        return new zzkm(Double.valueOf(str.lastIndexOf(strD, (int) Math.min(Math.max(dA, 0.0d), str.length()))));
    }
}

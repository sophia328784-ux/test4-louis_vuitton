package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgf extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0 && length <= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        double dA = length < 2 ? 0.0d : zzdj.a(zzkkVarArr[1]);
        double length2 = str.length();
        if (length == 3 && (zzkkVar = zzkkVarArr[2]) != zzko.f30172h) {
            length2 = zzdj.a(zzkkVar);
        }
        int iMax = (int) (dA < 0.0d ? Math.max(((double) str.length()) + dA, 0.0d) : Math.min(dA, str.length()));
        return new zzkv(str.substring(iMax, Math.max(0, ((int) (length2 < 0.0d ? Math.max(((double) str.length()) + length2, 0.0d) : Math.min(length2, str.length()))) - iMax) + iMax));
    }
}

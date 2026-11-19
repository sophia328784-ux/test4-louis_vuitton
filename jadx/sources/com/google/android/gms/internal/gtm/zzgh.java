package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgh extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0 && length <= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        int iA = (int) zzdj.a(length < 2 ? zzko.f30172h : zzkkVarArr[1]);
        int length2 = str.length();
        if (length == 3 && (zzkkVar = zzkkVarArr[2]) != zzko.f30172h) {
            length2 = (int) zzdj.a(zzkw.c(zzbvVar, zzkkVar));
        }
        int iMin = Math.min(Math.max(iA, 0), str.length());
        int iMin2 = Math.min(Math.max(length2, 0), str.length());
        return new zzkv(str.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
    }
}

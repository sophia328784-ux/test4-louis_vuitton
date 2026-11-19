package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgd extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0 && length <= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        if (length == 1) {
            return new zzkv(str);
        }
        String strD = zzdj.d(zzkkVarArr[1]);
        zzkk zzkkVarA = length < 3 ? zzko.f30172h : zzkkVarArr[2];
        int iIndexOf = str.indexOf(strD);
        if (iIndexOf == -1) {
            return new zzkv(str);
        }
        if (zzkkVarA instanceof zzkn) {
            zzkkVarA = ((zzkn) zzkkVarA).f30169b.a(zzbvVar, new zzkv(strD), new zzkm(Double.valueOf(iIndexOf)), new zzkv(str));
        }
        return new zzkv(tr.h(str.substring(0, iIndexOf), zzdj.d(zzkkVarA), str.substring(strD.length() + iIndexOf)));
    }
}

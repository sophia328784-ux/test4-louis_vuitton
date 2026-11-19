package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzew extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        String str;
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(!(zzkkVarArr[0] instanceof zzkt));
        Preconditions.a(!zzkw.f(zzkkVarArr[0]));
        zzkk zzkkVar = zzkkVarArr[0];
        if (zzkkVar == zzko.f30172h) {
            str = "undefined";
        } else if (zzkkVar instanceof zzkl) {
            str = "boolean";
        } else if (zzkkVar instanceof zzkm) {
            str = "number";
        } else if (zzkkVar instanceof zzkv) {
            str = "string";
        } else {
            str = zzkkVar instanceof zzkn ? "function" : "object";
        }
        return new zzkv(str);
    }
}

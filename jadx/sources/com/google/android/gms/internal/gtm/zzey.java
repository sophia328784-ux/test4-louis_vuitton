package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzey extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 2);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        if (zzbvVar.e(str)) {
            zzbvVar.d(zzkkVarArr[1], str);
            return zzkkVarArr[1];
        }
        md.k("Attempting to assign to undefined variable ".concat(String.valueOf(str)));
        return null;
    }
}

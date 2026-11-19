package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgw extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 2);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        zzdj.d(zzkkVarArr[1]);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        int iHashCode = str.hashCode();
        if (iHashCode == 101) {
            if (str.equals("e")) {
                zzbg.a();
                return zzko.f30172h;
            }
            md.n("Invalid logging level: ".concat(String.valueOf(((zzkv) zzkkVarArr[0]).f30188b)));
            return null;
        }
        if (iHashCode == 105) {
            if (str.equals("i")) {
                zzao.a(4);
                return zzko.f30172h;
            }
            md.n("Invalid logging level: ".concat(String.valueOf(((zzkv) zzkkVarArr[0]).f30188b)));
            return null;
        }
        if (iHashCode == 118) {
            if (str.equals("v")) {
                zzao.a(2);
                return zzko.f30172h;
            }
            md.n("Invalid logging level: ".concat(String.valueOf(((zzkv) zzkkVarArr[0]).f30188b)));
            return null;
        }
        if (iHashCode == 119 && str.equals("w")) {
            zzao.a(5);
            return zzko.f30172h;
        }
        md.n("Invalid logging level: ".concat(String.valueOf(((zzkv) zzkkVarArr[0]).f30188b)));
        return null;
    }
}

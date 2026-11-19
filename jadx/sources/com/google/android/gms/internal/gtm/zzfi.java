package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfi extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVarH;
        Preconditions.a(zzkkVarArr.length == 2);
        zzkk zzkkVar = zzkkVarArr[0];
        boolean z = zzkkVar instanceof zzkv;
        zzkk zzkkVar2 = zzkkVarArr[1];
        Preconditions.a(z || !zzkw.g(zzkkVar));
        Preconditions.a(!zzkw.f(zzkkVar));
        Preconditions.a(!zzkw.f(zzkkVar2));
        String strD = zzdj.d(zzkkVar2);
        if (zzkkVar instanceof zzkr) {
            zzkr zzkrVar = (zzkr) zzkkVar;
            if ("length".equals(strD)) {
                return new zzkm(Double.valueOf(zzkrVar.f30180b.size()));
            }
            double dB = zzdj.b(zzkkVar2);
            if (dB == Math.floor(dB)) {
                int i2 = (int) dB;
                if (strD.equals(Integer.toString(i2)) && (zzkkVarH = zzkrVar.h(i2)) != zzko.f30172h) {
                    return zzkkVarH;
                }
            }
        } else if (z) {
            String str = ((zzkv) zzkkVar).f30188b;
            if ("length".equals(strD)) {
                return new zzkm(Double.valueOf(str.length()));
            }
            double dB2 = zzdj.b(zzkkVar2);
            if (dB2 == Math.floor(dB2)) {
                int i3 = (int) dB2;
                if (strD.equals(Integer.toString(i3))) {
                    return (i3 < 0 || i3 >= str.length()) ? zzko.f30172h : new zzkv(String.valueOf(str.charAt(i3)));
                }
            }
            return zzko.f30172h;
        }
        return zzkkVar.b(strD);
    }
}

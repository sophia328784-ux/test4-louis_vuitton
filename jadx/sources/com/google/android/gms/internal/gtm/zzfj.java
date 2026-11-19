package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfj extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzfj f30065a = new zzfj();

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z = false;
        Preconditions.a(zzkkVarArr.length == 2);
        zzkk zzkkVar = zzkkVarArr[0];
        zzkk zzkkVar2 = zzkkVarArr[1];
        Preconditions.a(!zzkw.f(zzkkVar));
        Preconditions.a(!zzkw.f(zzkkVar2));
        String strD = zzdj.d(zzkkVar2);
        if (zzkkVar instanceof zzkr) {
            if ("length".equals(strD)) {
                return new zzkl(Boolean.TRUE);
            }
            double dB = zzdj.b(zzkkVar2);
            if (dB == Math.floor(dB)) {
                int i2 = (int) dB;
                if (strD.equals(Integer.toString(i2)) && i2 >= 0 && i2 < ((zzkr) zzkkVar).f30180b.size()) {
                    return new zzkl(Boolean.TRUE);
                }
            }
        } else if (zzkkVar instanceof zzkv) {
            if ("length".equals(strD)) {
                return new zzkl(Boolean.TRUE);
            }
            double dB2 = zzdj.b(zzkkVar2);
            if (dB2 == Math.floor(dB2)) {
                int i3 = (int) dB2;
                if (strD.equals(Integer.toString(i3)) && i3 >= 0 && i3 < ((zzkv) zzkkVar).f30188b.length()) {
                    return new zzkl(Boolean.TRUE);
                }
            }
            return new zzkl(Boolean.FALSE);
        }
        Map map = zzkkVar.f30163a;
        if (map != null && map.containsKey(strD)) {
            z = true;
        }
        return new zzkl(Boolean.valueOf(z));
    }
}

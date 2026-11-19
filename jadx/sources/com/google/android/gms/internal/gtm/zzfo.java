package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.zy0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfo extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z = false;
        Preconditions.a(zzkkVarArr.length == 3);
        zzkk zzkkVar = zzkkVarArr[0];
        zzkk zzkkVar2 = zzkkVarArr[1];
        zzkk zzkkVar3 = zzkkVarArr[2];
        Preconditions.a(zzkkVar != zzko.g);
        Preconditions.a(zzkkVar != zzko.f30172h);
        Preconditions.a(!zzkw.f(zzkkVar));
        Preconditions.a(!zzkw.f(zzkkVar2));
        Preconditions.a(!zzkw.f(zzkkVar3));
        if (!zzkw.g(zzkkVar)) {
            String strD = zzdj.d(zzkkVar2);
            if (!(zzkkVar instanceof zzks)) {
                if (zzkkVar instanceof zzkr) {
                    zzkr zzkrVar = (zzkr) zzkkVar;
                    if ("length".equals(strD)) {
                        double dB = zzdj.b(zzkkVar3);
                        if (!Double.isInfinite(dB) && dB == Math.floor(dB)) {
                            z = true;
                        }
                        Preconditions.a(z);
                        zzkrVar.i((int) dB);
                        return zzkkVar3;
                    }
                    double dB2 = zzdj.b(zzkkVar2);
                    if (!Double.isInfinite(dB2) && dB2 >= 0.0d) {
                        int i2 = (int) dB2;
                        if (strD.equals(Integer.toString(i2))) {
                            if (i2 < 0) {
                                zy0.b();
                                return null;
                            }
                            ArrayList arrayList = zzkrVar.f30180b;
                            if (i2 >= arrayList.size()) {
                                zzkrVar.i(i2 + 1);
                            }
                            arrayList.set(i2, zzkkVar3);
                            return zzkkVar3;
                        }
                    }
                }
                zzkkVar.f(zzkkVar3, strD);
                return zzkkVar3;
            }
            zzks zzksVar = (zzks) zzkkVar;
            if (!zzksVar.f30182b) {
                zzksVar.f(zzkkVar3, strD);
            }
        }
        return zzkkVar3;
    }
}

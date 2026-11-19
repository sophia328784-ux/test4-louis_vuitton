package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdv extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        zzkk zzkkVarH;
        int i2;
        int length = zzkkVarArr.length;
        if (length == 2) {
            z = true;
        } else if (length == 3) {
            length = 3;
            z = true;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        Preconditions.a(zzkkVarArr[1] instanceof zzkn);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        zzkn zzknVar = (zzkn) zzkkVarArr[1];
        ArrayList arrayList = zzkrVar.f30180b;
        int size = arrayList.size();
        if (length == 3) {
            zzkkVarH = zzkkVarArr[2];
            i2 = 0;
        } else {
            Preconditions.k(size > 0);
            zzkkVarH = zzkrVar.h(0);
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i2 = 1;
                    break;
                }
                i2 = i3 + 1;
                if (zzkrVar.j(i3)) {
                    zzkkVarH = zzkrVar.h(i3);
                    break;
                }
                i3 = i2;
            }
            Preconditions.k(i3 < size);
        }
        while (i2 < size && i2 < zzkrVar.f30180b.size()) {
            if (zzkrVar.j(i2)) {
                zzkkVarH = zzknVar.f30169b.a(zzbvVar, zzkkVarH, (zzkk) arrayList.get(i2), new zzkm(Double.valueOf(i2)), zzkrVar);
            }
            i2++;
        }
        return zzkkVarH;
    }
}

package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdw extends zzdk {
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
        int i3 = size - 1;
        if (length == 3) {
            zzkkVarH = zzkkVarArr[2];
        } else {
            Preconditions.k(size > 0);
            zzkkVarH = zzkrVar.h(i3);
            int i4 = size - 2;
            while (true) {
                if (i3 < 0) {
                    i2 = i4;
                    break;
                }
                i2 = i3 - 1;
                if (zzkrVar.j(i3)) {
                    zzkkVarH = zzkrVar.h(i3);
                    break;
                }
                i3 = i2;
            }
            Preconditions.k(i3 >= 0);
            i3 = i2;
        }
        while (i3 >= 0) {
            if (zzkrVar.j(i3)) {
                zzkkVarH = zzknVar.f30169b.a(zzbvVar, zzkkVarH, (zzkk) arrayList.get(i3), new zzkm(Double.valueOf(i3)), zzkrVar);
            }
            i3--;
        }
        return zzkkVarH;
    }
}

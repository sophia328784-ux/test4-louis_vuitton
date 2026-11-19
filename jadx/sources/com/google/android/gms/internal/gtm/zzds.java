package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzds extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVarA;
        Preconditions.a(zzkkVarArr.length == 2);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        Preconditions.a(zzkkVarArr[1] instanceof zzkn);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        zzkn zzknVar = (zzkn) zzkkVarArr[1];
        ArrayList arrayList = zzkrVar.f30180b;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < size && i2 < zzkrVar.f30180b.size(); i2++) {
            if (zzkrVar.j(i2)) {
                zzkkVarA = zzknVar.f30169b.a(zzbvVar, (zzkk) arrayList.get(i2), new zzkm(Double.valueOf(i2)), zzkrVar);
                Preconditions.k(!zzkw.f(zzkkVarA));
            } else {
                zzkkVarA = null;
            }
            arrayList2.add(zzkkVarA);
        }
        return new zzkr(arrayList2);
    }
}

package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzef extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length >= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        int iA = (int) zzdj.a(zzkkVarArr[1]);
        int iMax = iA < 0 ? Math.max(zzkrVar.f30180b.size() + iA, 0) : Math.min(iA, zzkrVar.f30180b.size());
        int iMax2 = Math.max((int) zzdj.a(zzkkVarArr[2]), 0);
        ArrayList arrayList = zzkrVar.f30180b;
        int iMin = Math.min(iMax2, arrayList.size() - iMax) + iMax;
        ArrayList arrayList2 = new ArrayList(arrayList.subList(iMax, iMin));
        arrayList.subList(iMax, iMin).clear();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 3; i2 < zzkkVarArr.length; i2++) {
            arrayList3.add(zzkkVarArr[i2]);
        }
        arrayList.addAll(iMax, arrayList3);
        return new zzkr(arrayList2);
    }
}

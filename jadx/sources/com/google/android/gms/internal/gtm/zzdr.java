package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdr extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0 && length <= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        zzkk zzkkVar = length < 2 ? zzko.f30172h : zzkkVarArr[1];
        ArrayList arrayList = zzkrVar.f30180b;
        int size = arrayList.size();
        int iAbs = size - 1;
        if (length == 3) {
            int iA = (int) zzdj.a(zzkkVarArr[2]);
            iAbs = iA < 0 ? size - Math.abs(iA) : Math.min(iA, iAbs);
        }
        while (iAbs >= 0) {
            if (zzkrVar.j(iAbs) && zzdj.h(zzkkVar, (zzkk) arrayList.get(iAbs))) {
                return new zzkm(Double.valueOf(iAbs));
            }
            iAbs--;
        }
        iAbs = -1;
        return new zzkm(Double.valueOf(iAbs));
    }
}

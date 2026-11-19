package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdp extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        int iMax = 0;
        Preconditions.a(length > 0 && length <= 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        zzkk zzkkVar = length < 2 ? zzko.f30172h : zzkkVarArr[1];
        zzkk zzkkVar2 = length < 3 ? zzko.f30172h : zzkkVarArr[2];
        ArrayList arrayList = zzkrVar.f30180b;
        int size = arrayList.size();
        if (zzkkVar2 != zzko.f30172h) {
            int iA = (int) zzdj.a(zzkkVar2);
            iMax = iA < 0 ? Math.max(size - Math.abs(iA), 0) : iA;
        }
        while (iMax < size) {
            if (zzkrVar.j(iMax) && zzdj.h(zzkkVar, (zzkk) arrayList.get(iMax))) {
                return new zzkm(Double.valueOf(iMax));
            }
            iMax++;
        }
        iMax = -1;
        return new zzkm(Double.valueOf(iMax));
    }
}

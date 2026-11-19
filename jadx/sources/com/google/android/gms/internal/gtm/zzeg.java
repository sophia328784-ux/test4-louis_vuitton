package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzeg extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length > 0);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < zzkkVarArr.length; i2++) {
            arrayList.add(zzkkVarArr[i2]);
        }
        zzkrVar.f30180b.addAll(0, arrayList);
        return new zzkm(Double.valueOf(zzkrVar.f30180b.size()));
    }
}

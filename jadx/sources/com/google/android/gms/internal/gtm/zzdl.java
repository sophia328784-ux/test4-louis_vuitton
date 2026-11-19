package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdl extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length > 0);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        ArrayList arrayList = new ArrayList();
        Iterator it = zzkrVar.f30180b.iterator();
        while (it.hasNext()) {
            arrayList.add((zzkk) it.next());
        }
        for (int i2 = 1; i2 < zzkkVarArr.length; i2++) {
            zzkk zzkkVar = zzkkVarArr[i2];
            if (zzkkVar instanceof zzkr) {
                Iterator it2 = ((zzkr) zzkkVar).f30180b.iterator();
                while (it2.hasNext()) {
                    arrayList.add((zzkk) it2.next());
                }
            } else {
                arrayList.add(zzkkVar);
            }
        }
        return new zzkr(arrayList);
    }
}

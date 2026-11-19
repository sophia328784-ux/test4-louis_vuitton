package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfp extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 3);
        Preconditions.a(zzkkVarArr[1] instanceof zzkr);
        Preconditions.a(zzkkVarArr[2] instanceof zzkr);
        zzkk zzkkVar = zzkkVarArr[0];
        ArrayList arrayList = ((zzkr) zzkkVarArr[1]).f30180b;
        ArrayList arrayList2 = ((zzkr) zzkkVarArr[2]).f30180b;
        Preconditions.a(arrayList2.size() <= arrayList.size() + 1);
        boolean z = false;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (z || zzdj.h(zzkkVar, zzkw.c(zzbvVar, (zzkk) arrayList.get(i2)))) {
                zzkk zzkkVarC = zzkw.c(zzbvVar, (zzkk) arrayList2.get(i2));
                if (!(zzkkVarC instanceof zzko)) {
                    z = true;
                } else {
                    if (zzkkVarC == zzko.f30171f || ((zzko) zzkkVarC).f30174c) {
                        return zzkkVarC;
                    }
                    if (zzkkVarC == zzko.f30170e) {
                        return zzko.f30172h;
                    }
                }
            }
        }
        if (arrayList.size() < arrayList2.size()) {
            zzkk zzkkVarC2 = zzkw.c(zzbvVar, (zzkk) arrayList2.get(arrayList2.size() - 1));
            if ((zzkkVarC2 instanceof zzko) && (zzkkVarC2 == zzko.f30171f || ((zzko) zzkkVarC2).f30174c)) {
                return zzkkVarC2;
            }
        }
        return zzko.f30172h;
    }
}

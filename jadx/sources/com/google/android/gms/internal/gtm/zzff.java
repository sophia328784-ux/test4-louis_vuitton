package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzff extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 3);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        Preconditions.a(zzbvVar.e(str));
        zzkk zzkkVar = zzkkVarArr[1];
        Preconditions.h(zzkkVar);
        zzkk zzkkVar2 = zzkkVarArr[2];
        Preconditions.a(zzkkVar2 instanceof zzkr);
        ArrayList arrayList = ((zzkr) zzkkVar2).f30180b;
        Iterator itE = zzkkVar.e();
        while (itE.hasNext()) {
            zzbvVar.d((zzkk) itE.next(), str);
            zzko zzkoVarE = zzkw.e(zzbvVar, arrayList);
            if (zzkoVarE == zzko.f30170e) {
                break;
            }
            if (zzkoVarE.f30174c) {
                return zzkoVarE;
            }
        }
        return zzko.f30172h;
    }
}

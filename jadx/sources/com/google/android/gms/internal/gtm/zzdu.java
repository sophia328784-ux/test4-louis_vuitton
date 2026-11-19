package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.zy0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdu extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        int size = zzkrVar.f30180b.size();
        zzkrVar.i((length + size) - 1);
        for (int i2 = 1; i2 < zzkkVarArr.length; i2++) {
            zzkk zzkkVar = zzkkVarArr[i2];
            if (size < 0) {
                zy0.b();
                return null;
            }
            ArrayList arrayList = zzkrVar.f30180b;
            if (size >= arrayList.size()) {
                zzkrVar.i(size + 1);
            }
            arrayList.set(size, zzkkVar);
            size++;
        }
        return new zzkm(Double.valueOf(size));
    }
}

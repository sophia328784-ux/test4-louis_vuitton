package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdk implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        zzkk[] zzkkVarArr2 = new zzkk[zzkkVarArr.length];
        for (int i2 = 0; i2 < zzkkVarArr.length; i2++) {
            Preconditions.a(zzkkVarArr[i2] != null);
            zzkk zzkkVar = zzkkVarArr[i2];
            zzko zzkoVar = zzko.f30170e;
            Preconditions.a(zzkkVar != zzkoVar);
            zzkk zzkkVar2 = zzkkVarArr[i2];
            zzko zzkoVar2 = zzko.f30171f;
            Preconditions.a(zzkkVar2 != zzkoVar2);
            zzkk zzkkVarC = zzkw.c(zzbvVar, zzkkVarArr[i2]);
            zzkkVarArr2[i2] = zzkkVarC;
            Preconditions.a(zzkkVarC != zzkoVar);
            Preconditions.a(zzkkVarArr2[i2] != zzkoVar2);
        }
        zzkk zzkkVarB = b(zzbvVar, zzkkVarArr2);
        Preconditions.k(zzkkVarB != null);
        return zzkkVarB;
    }

    public abstract zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr);
}

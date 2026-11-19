package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfr implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length > 0);
        for (zzkk zzkkVar : zzkkVarArr) {
            Preconditions.h(zzkkVar);
            Preconditions.a(zzkkVar instanceof zzkv);
            zzbvVar.b(zzko.f30172h, ((zzkv) zzkkVar).f30188b);
        }
        return zzko.f30172h;
    }
}

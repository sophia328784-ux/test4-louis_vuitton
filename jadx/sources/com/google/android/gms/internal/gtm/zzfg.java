package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfg implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        zzkk zzkkVarA = zzbvVar.a(((zzkv) zzkkVarArr[0]).f30188b);
        if (zzkkVarA instanceof zzkt) {
            md.k("Illegal Statement type encountered in Get.");
            return null;
        }
        if (!(zzkkVarA instanceof zzko) || zzkkVarA == zzko.f30172h || zzkkVarA == zzko.g) {
            return zzkkVarA;
        }
        md.k("Illegal InternalType encountered in Get.");
        return null;
    }
}

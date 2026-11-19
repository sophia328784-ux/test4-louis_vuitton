package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhg implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkk f30081a;

    public zzhg(zzkk zzkkVar) {
        Preconditions.h(zzkkVar);
        this.f30081a = zzkkVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        return this.f30081a;
    }
}

package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhp extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbr f30089a;

    public zzhp(zzbr zzbrVar) {
        this.f30089a = zzbrVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 0);
        return zzkw.b(this.f30089a.d0().f29960a);
    }
}

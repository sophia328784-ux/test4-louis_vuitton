package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgx extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbr f30069a;

    public zzgx(Context context, zzbr zzbrVar) {
        this.f30069a = zzbrVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 0);
        this.f30069a.d0().f29964f = false;
        return zzko.f30172h;
    }
}

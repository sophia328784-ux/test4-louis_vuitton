package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhi implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Clock f30082a = DefaultClock.f29336a;

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        return new zzkm(Double.valueOf(this.f30082a.a()));
    }
}

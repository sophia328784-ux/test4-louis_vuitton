package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzeq extends zzcx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.measurement.internal.zzjq f30613a;

    public zzeq(com.google.android.gms.measurement.internal.zzjq zzjqVar) {
        this.f30613a = zzjqVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int I() {
        return System.identityHashCode(this.f30613a);
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void a(String str, String str2, Bundle bundle, long j2) {
        this.f30613a.a(str, str2, bundle, j2);
    }
}

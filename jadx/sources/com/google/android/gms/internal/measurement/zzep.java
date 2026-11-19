package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzep extends zzcx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.measurement.internal.zzjp f30612a;

    public zzep(com.google.android.gms.measurement.internal.zzjp zzjpVar) {
        this.f30612a = zzjpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int I() {
        return System.identityHashCode(this.f30612a);
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void a(String str, String str2, Bundle bundle, long j2) {
        this.f30612a.a(str, str2, bundle, j2);
    }
}

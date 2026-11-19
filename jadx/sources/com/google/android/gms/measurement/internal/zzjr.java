package com.google.android.gms.measurement.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
final class zzjr implements zzgm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzic f31865a;

    public zzjr(zzic zzicVar, zzjs zzjsVar) {
        this.f31865a = zzicVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgm
    public final boolean d0() {
        zzgu zzguVar = this.f31865a.f31842f;
        zzic.m(zzguVar);
        return Log.isLoggable(zzguVar.q(), 3);
    }
}

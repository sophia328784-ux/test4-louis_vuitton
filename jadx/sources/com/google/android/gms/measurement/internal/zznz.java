package com.google.android.gms.measurement.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
final class zznz extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzoa f31931e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznz(zzoa zzoaVar, zzjg zzjgVar) {
        super(zzjgVar);
        this.f31931e = zzoaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        zzoa zzoaVar = this.f31931e;
        zzoc zzocVar = zzoaVar.d;
        zzocVar.g();
        zzic zzicVar = zzocVar.f31850a;
        zzicVar.f31846k.getClass();
        zzoaVar.a(false, false, SystemClock.elapsedRealtime());
        zzd zzdVar = zzicVar.n;
        zzic.j(zzdVar);
        zzicVar.f31846k.getClass();
        zzdVar.j(SystemClock.elapsedRealtime());
    }
}

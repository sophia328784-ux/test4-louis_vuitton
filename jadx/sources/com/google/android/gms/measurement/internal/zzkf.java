package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzkf implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzlj zzc;

    public zzkf(zzlj zzljVar, AtomicReference atomicReference, boolean z) {
        this.zza = atomicReference;
        this.zzb = z;
        Objects.requireNonNull(zzljVar);
        this.zzc = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarP = this.zzc.f31850a.p();
        AtomicReference atomicReference = this.zza;
        boolean z = this.zzb;
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmd(zznlVarP, atomicReference, zznlVarP.w(false), z));
    }
}

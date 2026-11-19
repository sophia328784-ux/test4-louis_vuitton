package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzkl implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzlj zze;

    public zzkl(zzlj zzljVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
        Objects.requireNonNull(zzljVar);
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zzb;
        String str2 = this.zzc;
        boolean z = this.zzd;
        zznl zznlVarP = this.zze.f31850a.p();
        AtomicReference atomicReference = this.zza;
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmx(zznlVarP, atomicReference, null, str, str2, zznlVarP.w(false), z));
    }
}

package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzkk implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzlj zzd;

    public zzkk(zzlj zzljVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zzb;
        String str2 = this.zzc;
        zznl zznlVarP = this.zzd.f31850a.p();
        AtomicReference atomicReference = this.zza;
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmv(zznlVarP, atomicReference, null, str, str2, zznlVarP.w(false)));
    }
}

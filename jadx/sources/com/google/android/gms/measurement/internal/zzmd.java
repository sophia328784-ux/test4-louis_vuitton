package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzmd implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zznl zzd;

    public zzmd(zznl zznlVar, AtomicReference atomicReference, zzr zzrVar, boolean z) {
        this.zza = atomicReference;
        this.zzb = zzrVar;
        this.zzc = z;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.zza;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.zzd;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zzgu zzguVar = zznlVar.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.a("Failed to get all user properties; not connected to service");
                        atomicReference2.notify();
                        return;
                    }
                    zzr zzrVar = this.zzb;
                    Preconditions.h(zzrVar);
                    atomicReference2.set(zzgbVar.M0(zzrVar, this.zzc));
                    zznlVar.t();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e2) {
                    zzgu zzguVar2 = this.zzd.f31850a.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.b(e2, "Failed to get all user properties; remote exception");
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}

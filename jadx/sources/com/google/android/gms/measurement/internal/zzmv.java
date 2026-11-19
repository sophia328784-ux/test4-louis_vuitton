package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzmv implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzr zzd;
    final /* synthetic */ zznl zze;

    public zzmv(zznl zznlVar, AtomicReference atomicReference, String str, String str2, String str3, zzr zzrVar) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.zze = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.zza;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.zze;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zzgu zzguVar = zznlVar.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.d("(legacy) Failed to get conditional properties; not connected to service", null, this.zzb, this.zzc);
                        atomicReference2.set(Collections.EMPTY_LIST);
                        atomicReference2.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(null)) {
                        zzr zzrVar = this.zzd;
                        Preconditions.h(zzrVar);
                        atomicReference2.set(zzgbVar.t2(this.zzb, this.zzc, zzrVar));
                    } else {
                        atomicReference2.set(zzgbVar.F(null, this.zzb, this.zzc));
                    }
                    zznlVar.t();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e2) {
                    zzgu zzguVar2 = this.zze.f31850a.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.d("(legacy) Failed to get conditional properties; remote exception", null, this.zzb, e2);
                    this.zza.set(Collections.EMPTY_LIST);
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}

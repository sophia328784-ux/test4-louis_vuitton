package com.google.android.gms.tasks;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzg implements Runnable {
    final /* synthetic */ zzh zza;

    public zzg(zzh zzhVar) {
        Objects.requireNonNull(zzhVar);
        this.zza = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzh zzhVar = this.zza;
        synchronized (zzhVar.f32102c) {
            try {
                OnCanceledListener onCanceledListener = zzhVar.d;
                if (onCanceledListener != null) {
                    onCanceledListener.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

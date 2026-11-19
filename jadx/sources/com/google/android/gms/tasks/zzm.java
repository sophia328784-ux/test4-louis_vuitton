package com.google.android.gms.tasks;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzm implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzn zzb;

    public zzm(zzn zznVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zznVar);
        this.zzb = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzn zznVar = this.zzb;
        synchronized (zznVar.f32108c) {
            try {
                OnSuccessListener onSuccessListener = zznVar.d;
                if (onSuccessListener != null) {
                    onSuccessListener.onSuccess(this.zza.getResult());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.gms.tasks;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzc implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzd zzb;

    public zzc(zzd zzdVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzdVar);
        this.zzb = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.zza;
        boolean zJ = task.j();
        zzd zzdVar = this.zzb;
        if (zJ) {
            zzdVar.d.q();
            return;
        }
        try {
            this.zzb.d.n(zzdVar.f32098c.d(task));
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            zzd zzdVar2 = this.zzb;
            if (!z) {
                zzdVar2.d.p(e2);
            } else {
                zzdVar2.d.p((Exception) e2.getCause());
            }
        } catch (Exception e3) {
            this.zzb.d.p(e3);
        }
    }
}

package com.google.android.gms.tasks;

import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zze implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzf zzb;

    public zze(zzf zzfVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzfVar);
        this.zzb = zzfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task task = (Task) this.zzb.f32100c.d(this.zza);
            zzf zzfVar = this.zzb;
            if (task == null) {
                zzfVar.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f32087b;
            task.f(executor, zzfVar);
            task.d(executor, zzfVar);
            task.a(executor, zzfVar);
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            zzf zzfVar2 = this.zzb;
            if (!z) {
                zzfVar2.d.p(e2);
            } else {
                zzfVar2.d.p((Exception) e2.getCause());
            }
        } catch (Exception e3) {
            this.zzb.d.p(e3);
        }
    }
}

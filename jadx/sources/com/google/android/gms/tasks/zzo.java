package com.google.android.gms.tasks;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzo implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzp zzb;

    public zzo(zzp zzpVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzpVar);
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task taskA = this.zzb.f32110c.a(this.zza.getResult());
            zzp zzpVar = this.zzb;
            if (taskA == null) {
                zzpVar.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f32087b;
            taskA.f(executor, zzpVar);
            taskA.d(executor, zzpVar);
            taskA.a(executor, zzpVar);
        } catch (RuntimeExecutionException e2) {
            boolean z = e2.getCause() instanceof Exception;
            zzp zzpVar2 = this.zzb;
            if (z) {
                zzpVar2.onFailure((Exception) e2.getCause());
            } else {
                zzpVar2.onFailure(e2);
            }
        } catch (CancellationException unused) {
            this.zzb.b();
        } catch (Exception e3) {
            this.zzb.onFailure(e3);
        }
    }
}

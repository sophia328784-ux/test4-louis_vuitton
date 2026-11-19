package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncCallable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzvg implements Runnable {
    private AsyncCallable zza;
    private Executor zzb;

    public zzvg(AsyncCallable asyncCallable, Executor executor) {
        asyncCallable.getClass();
        this.zza = asyncCallable;
        executor.getClass();
        this.zzb = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza = null;
        this.zzb = null;
    }

    public final /* synthetic */ AsyncCallable zza() {
        return this.zza;
    }

    public final /* synthetic */ Executor zzb() {
        return this.zzb;
    }
}

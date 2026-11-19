package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ForwardingListenableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class zzqf implements Runnable {
    final /* synthetic */ Runnable zza;
    final /* synthetic */ ListeningScheduledExecutorService zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ TimeUnit zzd;

    public zzqf(zzqi zzqiVar, Runnable runnable, ListeningScheduledExecutorService listeningScheduledExecutorService, long j2, TimeUnit timeUnit) {
        this.zza = runnable;
        this.zzb = listeningScheduledExecutorService;
        this.zzc = j2;
        this.zzd = timeUnit;
        Objects.requireNonNull(zzqiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.run();
        ListenableFuture listenableFutureSchedule = this.zzb.schedule((Runnable) this, this.zzc, this.zzd);
        ((ForwardingListenableFuture) listenableFutureSchedule).addListener(new zzpw(listenableFutureSchedule), MoreExecutors.b());
    }
}

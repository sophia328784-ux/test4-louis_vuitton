package com.google.android.gms.internal.measurement;

import android.os.Process;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqi implements zzqm {
    public static boolean d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Supplier f30832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30833b = Math.max(5, 10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f30834c = zzqh.f30831b;

    public zzqi(Supplier supplier, int i2) {
        this.f30832a = supplier;
    }

    @Override // com.google.android.gms.internal.measurement.zzqm
    public final void d0() {
        synchronized (zzqi.class) {
            try {
                if (!d) {
                    Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.measurement.zzqg
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            if (((Boolean) ((zzqh) this.zza.f30834c).get()).booleanValue()) {
                                Process.killProcess(Process.myPid());
                                System.exit(0);
                            }
                        }
                    };
                    long j2 = this.f30833b;
                    TimeUnit timeUnit = TimeUnit.MINUTES;
                    ListeningScheduledExecutorService listeningScheduledExecutorService = (ListeningScheduledExecutorService) this.f30832a.get();
                    ListenableFuture listenableFutureSchedule = listeningScheduledExecutorService.schedule((Runnable) new zzqf(this, runnable, listeningScheduledExecutorService, j2, timeUnit), j2, timeUnit);
                    ((ForwardingListenableFuture) listenableFutureSchedule).addListener(new zzpw(listenableFutureSchedule), MoreExecutors.b());
                    d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

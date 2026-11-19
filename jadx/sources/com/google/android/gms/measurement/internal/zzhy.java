package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
final class zzhy extends Thread {
    final /* synthetic */ zzhz zza;
    private final Object zzb;
    private final BlockingQueue zzc;
    private boolean zzd;

    public zzhy(zzhz zzhzVar, String str, BlockingQueue blockingQueue) {
        Objects.requireNonNull(zzhzVar);
        this.zza = zzhzVar;
        this.zzd = false;
        Preconditions.h(str);
        Preconditions.h(blockingQueue);
        this.zzb = new Object();
        this.zzc = blockingQueue;
        setName(str);
    }

    private final void zzb() {
        zzhz zzhzVar = this.zza;
        synchronized (zzhzVar.f31835i) {
            try {
                if (!this.zzd) {
                    zzhzVar.f31836j.release();
                    zzhzVar.f31835i.notifyAll();
                    if (this == zzhzVar.f31831c) {
                        zzhzVar.f31831c = null;
                    } else if (this == zzhzVar.d) {
                        zzhzVar.d = null;
                    } else {
                        zzgu zzguVar = zzhzVar.f31850a.f31842f;
                        zzic.m(zzguVar);
                        zzguVar.f31769f.a("Current scheduler thread is neither worker nor network");
                    }
                    this.zzd = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzc(InterruptedException interruptedException) {
        zzgu zzguVar = this.zza.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31771i.b(interruptedException, String.valueOf(getName()).concat(" was interrupted"));
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.zza.f31836j.acquire();
                z = true;
            } catch (InterruptedException e2) {
                zzc(e2);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.zzc;
                zzhx zzhxVar = (zzhx) blockingQueue.poll();
                if (zzhxVar != null) {
                    Process.setThreadPriority(true != zzhxVar.zza ? 10 : threadPriority);
                    zzhxVar.run();
                } else {
                    Object obj = this.zzb;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.zza.getClass();
                            try {
                                obj.wait(30000L);
                            } catch (InterruptedException e3) {
                                zzc(e3);
                            }
                        }
                    }
                    synchronized (this.zza.f31835i) {
                        if (this.zzc.peek() == null) {
                            zzb();
                            zzb();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            zzb();
            throw th;
        }
    }

    public final void zza() {
        Object obj = this.zzb;
        synchronized (obj) {
            obj.notifyAll();
        }
    }
}

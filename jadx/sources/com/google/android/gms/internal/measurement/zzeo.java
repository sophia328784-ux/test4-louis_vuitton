package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.os.SystemClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzeo implements Runnable {
    final long zzi;
    final long zzj;
    final boolean zzk;
    final /* synthetic */ zzez zzl;

    public zzeo(zzez zzezVar, boolean z) {
        Objects.requireNonNull(zzezVar);
        this.zzl = zzezVar;
        this.zzi = System.currentTimeMillis();
        this.zzj = SystemClock.elapsedRealtime();
        this.zzk = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzl.f30619e) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e2) {
            this.zzl.k(e2, false, this.zzk);
            zzb();
        }
    }

    public abstract void zza() throws RemoteException;

    public void zzb() {
    }
}

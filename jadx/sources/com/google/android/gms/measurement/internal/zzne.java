package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class zzne implements Runnable {
    final /* synthetic */ ConnectionResult zza;
    final /* synthetic */ zznf zzb;

    public zzne(zznf zznfVar, ConnectionResult connectionResult) {
        this.zza = connectionResult;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzb.d;
        zznlVar.d = null;
        if (this.zza.f28953c != 7777) {
            zznlVar.v();
            return;
        }
        if (zznlVar.g == null) {
            zznlVar.g = Executors.newScheduledThreadPool(1);
        }
        zznlVar.g.schedule(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznc
            @Override // java.lang.Runnable
            public final void run() {
                final zznl zznlVar2 = this.zza.zzb.d;
                zzhz zzhzVar = zznlVar2.f31850a.g;
                zzic.m(zzhzVar);
                zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznd
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zznlVar2.m();
                    }
                });
            }
        }, ((Long) zzfy.Z.a(null)).longValue(), TimeUnit.MILLISECONDS);
    }
}

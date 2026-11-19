package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzb implements Runnable {
    final /* synthetic */ LifecycleCallback zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzc zzc;

    public zzb(zzc zzcVar, LifecycleCallback lifecycleCallback, String str) {
        this.zza = lifecycleCallback;
        this.zzb = str;
        Objects.requireNonNull(zzcVar);
        this.zzc = zzcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzc zzcVar = this.zzc;
        if (zzcVar.f29134b > 0) {
            LifecycleCallback lifecycleCallback = this.zza;
            Bundle bundle = zzcVar.f29135c;
            lifecycleCallback.b(bundle != null ? bundle.getBundle(this.zzb) : null);
        }
        if (zzcVar.f29134b >= 2) {
            zaab zaabVar = (zaab) this.zza;
            zaabVar.f29123c = true;
            zaabVar.e();
        }
        if (zzcVar.f29134b >= 3) {
            ((zaab) this.zza).e();
        }
        if (zzcVar.f29134b >= 4) {
            this.zza.c();
        }
        if (zzcVar.f29134b >= 5) {
            this.zza.getClass();
        }
    }
}

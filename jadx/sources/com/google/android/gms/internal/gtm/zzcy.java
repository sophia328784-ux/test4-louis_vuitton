package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzcy implements Runnable {
    final /* synthetic */ zzcz zza;

    public zzcy(zzcz zzczVar) {
        this.zza = zzczVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcz zzczVar = this.zza;
        if (zzczVar.f30045b.isEmpty()) {
            zzao.a(5);
            return;
        }
        for (zzak zzakVar : zzczVar.f30045b.values()) {
            zzakVar.getClass();
            zzakVar.g.execute(new zzac(zzakVar));
        }
    }
}

package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzcx implements Runnable {
    final /* synthetic */ zzar zza;
    final /* synthetic */ zzcz zzb;

    public zzcx(zzcz zzczVar, zzar zzarVar) {
        this.zza = zzarVar;
        this.zzb = zzczVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcz zzczVar = this.zzb;
        if (zzczVar.f30045b.isEmpty()) {
            zzbg.a();
            return;
        }
        for (zzak zzakVar : zzczVar.f30045b.values()) {
            zzar zzarVar = this.zza;
            zzakVar.getClass();
            zzakVar.g.execute(new zzag(zzakVar, zzarVar));
        }
    }
}

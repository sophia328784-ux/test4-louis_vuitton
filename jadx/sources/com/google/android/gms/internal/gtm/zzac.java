package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzac implements Runnable {
    final /* synthetic */ zzak zza;

    public zzac(zzak zzakVar) {
        this.zza = zzakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        if (zzakVar.m == 2) {
            zzap.b(zzakVar.l.f29994a);
            if (zzce.m == null) {
                zzce.m = new zzce();
            }
            zzce.m.a();
        }
    }
}

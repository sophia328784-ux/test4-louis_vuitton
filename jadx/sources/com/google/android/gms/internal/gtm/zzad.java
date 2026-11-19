package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzad implements Runnable {
    final /* synthetic */ zzak zza;

    public zzad(zzak zzakVar) {
        this.zza = zzakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        zzakVar.g.execute(new zzah(zzakVar, null));
    }
}

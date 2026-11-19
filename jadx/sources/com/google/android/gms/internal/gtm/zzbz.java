package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzbz implements Runnable {
    final /* synthetic */ zzce zza;

    public zzbz(zzce zzceVar) {
        this.zza = zzceVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzce zzceVar = this.zza;
        zzceVar.f30021f = false;
        zzceVar.f30018b.b();
    }
}

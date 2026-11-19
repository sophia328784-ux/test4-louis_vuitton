package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzcn implements Runnable {
    final /* synthetic */ zzcv zza;

    public zzcn(zzcv zzcvVar) {
        this.zza = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.d.execute(new zzcm(this));
    }
}

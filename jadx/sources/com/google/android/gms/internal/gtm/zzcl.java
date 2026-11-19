package com.google.android.gms.internal.gtm;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzcl implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcv zzc;

    public zzcl(zzcv zzcvVar, String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        zzao.a(2);
        zzcv zzcvVar = this.zzc;
        if (zzcvVar.f30044k != 1) {
            zzan.c(zzcvVar.f30036a, "Unexpected state - container loading already initiated.");
            return;
        }
        zzcvVar.f30044k = 2;
        String str2 = this.zzb;
        zzde zzdeVar = zzcvVar.f30038c;
        zzct zzctVar = new zzct(zzcvVar);
        if (!zzdeVar.a()) {
            try {
                zzctVar.I1(str, false);
            } catch (RemoteException unused) {
                zzbg.b();
            }
        } else {
            try {
                zzdeVar.f30053f.c0(str, str2, null, zzctVar);
            } catch (RemoteException unused2) {
                zzao.a(5);
                try {
                    zzctVar.I1(str, false);
                } catch (RemoteException unused3) {
                    zzbg.b();
                }
            }
        }
    }
}

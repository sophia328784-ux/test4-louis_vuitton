package com.google.android.gms.internal.gtm;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzco implements Runnable {
    final /* synthetic */ zzcp zza;

    public zzco(zzcp zzcpVar) {
        this.zza = zzcpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzao.a(2);
        zzde zzdeVar = this.zza.f30033b.f30038c;
        if (zzdeVar.a()) {
            try {
                zzdeVar.f30053f.h0();
            } catch (RemoteException unused) {
                zzao.a(5);
            }
        }
    }
}

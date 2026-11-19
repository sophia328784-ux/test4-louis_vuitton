package com.google.android.gms.internal.gtm;

import android.net.Uri;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzcq implements Runnable {
    final /* synthetic */ Uri zza;
    final /* synthetic */ zzcv zzb;

    public zzcq(zzcv zzcvVar, Uri uri) {
        this.zza = uri;
        this.zzb = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Uri uri = this.zza;
        "Preview requested to uri ".concat(String.valueOf(uri));
        zzao.a(2);
        zzcv zzcvVar = this.zzb;
        synchronized (zzcvVar.f30041h) {
            try {
                if (zzcvVar.f30044k == 2) {
                    zzao.a(2);
                    zzcvVar.l.add(this);
                    return;
                }
                String str = (String) zzcvVar.c().first;
                if (str == null) {
                    zzao.a(5);
                    return;
                }
                if (!zzcvVar.f30040f.b(uri, str)) {
                    String.valueOf(uri);
                    zzao.a(5);
                    return;
                }
                if (!zzcvVar.m) {
                    String.valueOf(uri);
                    zzao.a(2);
                    return;
                }
                String.valueOf(uri);
                zzao.a(4);
                zzde zzdeVar = zzcvVar.f30038c;
                if (zzdeVar.a()) {
                    try {
                        zzdeVar.f30053f.c();
                        zzcvVar.m = false;
                        zzcvVar.f30044k = 1;
                        zzcvVar.b();
                        return;
                    } catch (RemoteException unused) {
                        zzao.a(5);
                    }
                }
                zzao.a(5);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

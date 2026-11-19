package com.google.android.gms.internal.gtm;

import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzy implements Runnable {
    final /* synthetic */ zzaa zza;

    public zzy(zzaa zzaaVar) {
        this.zza = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaa zzaaVar = this.zza;
        Process.setThreadPriority(10);
        while (true) {
            zzaaVar.getClass();
            AdvertisingIdClient.Info infoA = null;
            if (zzaaVar.f29932a) {
                zzx zzxVar = (zzx) zzaaVar.f29938i;
                try {
                    infoA = AdvertisingIdClient.a(zzxVar.f30206a.f29935e);
                } catch (GooglePlayServicesNotAvailableException unused) {
                    zzxVar.f30206a.f29932a = false;
                    zzao.a(5);
                } catch (GooglePlayServicesRepairableException unused2) {
                    zzao.a(5);
                } catch (IOException unused3) {
                    zzao.a(5);
                } catch (IllegalStateException unused4) {
                    zzao.a(5);
                } catch (Exception unused5) {
                    zzao.a(5);
                }
            }
            if (infoA != null) {
                zzaaVar.f29933b = infoA;
                zzaaVar.d = zzaaVar.f29936f.a();
                zzao.a(4);
            }
            synchronized (zzaaVar) {
                zzaaVar.notifyAll();
            }
            try {
                Object obj = zzaaVar.f29937h;
                synchronized (obj) {
                    try {
                        obj.wait(900000L);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (InterruptedException unused6) {
                zzao.a(4);
            }
        }
    }
}

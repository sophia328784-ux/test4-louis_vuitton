package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.pq0;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzcj implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzck zzf;
    private boolean zzg = false;

    public zzcj(zzck zzckVar, String str, Bundle bundle, String str2, long j2, String str3) {
        this.zza = str;
        this.zzb = bundle;
        this.zzc = str2;
        this.zzd = j2;
        this.zze = str3;
        this.zzf = zzckVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcv zzcvVar = this.zzf.f30032a;
        int i2 = zzcvVar.f30044k;
        if (i2 == 3) {
            String str = this.zza;
            Bundle bundle = this.zzb;
            String str2 = this.zzc;
            long j2 = this.zzd;
            zzde zzdeVar = zzcvVar.f30038c;
            if (zzdeVar.a()) {
                try {
                    zzdeVar.f30053f.S(str, bundle, str2, j2, false);
                    return;
                } catch (RemoteException unused) {
                    zzao.a(5);
                    return;
                }
            }
            return;
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 == 4) {
                Objects.toString(this.zzb);
                zzao.a(2);
                return;
            } else {
                zzan.c(zzcvVar.f30036a, pq0.k(i2, "Unexpected state:"));
                return;
            }
        }
        if (this.zzg) {
            zzao.a(5);
            return;
        }
        Objects.toString(this.zzb);
        zzao.a(2);
        this.zzg = true;
        zzcvVar.l.add(this);
    }
}

package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.pq0;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzch implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzci zzf;
    private boolean zzg = false;

    public zzch(zzci zzciVar, String str, Bundle bundle, String str2, long j2, String str3) {
        this.zza = str;
        this.zzb = bundle;
        this.zzc = str2;
        this.zzd = j2;
        this.zze = str3;
        this.zzf = zzciVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcv zzcvVar = this.zzf.f30031a;
        int i2 = zzcvVar.f30044k;
        if (i2 == 3) {
            String str = this.zza;
            Bundle bundle = this.zzb;
            String str2 = this.zzc;
            long j2 = this.zzd;
            zzde zzdeVar = zzcvVar.f30038c;
            if (zzdeVar.a()) {
                try {
                    zzdeVar.f30053f.S(str, bundle, str2, j2, true);
                    return;
                } catch (RemoteException unused) {
                    zzao.a(5);
                    return;
                }
            }
            return;
        }
        if (i2 == 4) {
            String str3 = this.zza;
            String str4 = this.zzc;
            Bundle bundle2 = this.zzb;
            Objects.toString(bundle2);
            zzao.a(2);
            try {
                zzcvVar.f30037b.J(str4, str3, bundle2, this.zzd);
                return;
            } catch (RemoteException e2) {
                zzan.b(e2, this.zzf.f30031a.f30036a);
                return;
            }
        }
        Context context = zzcvVar.f30036a;
        if (i2 != 1 && i2 != 2) {
            zzan.c(context, pq0.k(i2, "Unexpected state:"));
            return;
        }
        if (this.zzg) {
            zzan.c(context, "Invalid state - not expecting to see a deferredevent during container loading.");
            return;
        }
        Objects.toString(this.zzb);
        zzao.a(2);
        this.zzg = true;
        zzcvVar.l.add(this);
    }
}

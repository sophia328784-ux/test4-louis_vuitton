package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.tagmanager.zzq;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzcw implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzbb zzd;
    final /* synthetic */ zzcz zze;

    public zzcw(zzcz zzczVar, String str, String str2, String str3, zzbb zzbbVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzbbVar;
        this.zze = zzczVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            zzcz zzczVar = this.zze;
            HashMap map = zzczVar.f30045b;
            String str = this.zza;
            z = true;
            if (!map.containsKey(str)) {
                zzal zzalVar = zzczVar.f30047k;
                String str2 = this.zzb;
                String str3 = this.zzc;
                Context context = zzalVar.f29948a;
                zzq zzqVar = zzalVar.f29951e;
                zzczVar.f30045b.put(str, new zzak(context, str, str2, str3, new zzbu(context, zzqVar, zzalVar.f29952f, str), zzalVar.f29949b, zzalVar.f29950c, zzalVar.d, zzqVar, new zzam(context, str)));
            }
        } catch (Exception e2) {
            zzan.b(e2, this.zze.m);
            z = false;
        }
        try {
            zzbb zzbbVar = this.zzd;
            if (zzbbVar != null) {
                zzbbVar.I1(this.zza, z);
            }
        } catch (RemoteException e3) {
            zzan.b(e3, this.zze.m);
        }
    }
}

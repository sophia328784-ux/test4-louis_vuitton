package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.IntentFilter;
import androidx.core.content.ContextCompat;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzaw implements Runnable {
    final /* synthetic */ zzav zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ Map zzf;
    final /* synthetic */ String zzg;
    final /* synthetic */ zzax zzh;

    public zzaw(zzax zzaxVar, zzav zzavVar, long j2, String str, String str2, String str3, Map map, String str4) {
        this.zza = zzavVar;
        this.zzb = j2;
        this.zzc = str;
        this.zzd = str2;
        this.zze = str3;
        this.zzf = map;
        this.zzg = str4;
        this.zzh = zzaxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbk zzbkVar;
        zzax zzaxVar = this.zzh;
        if (zzaxVar.zze == null) {
            zzav zzavVar = this.zza;
            if (zzce.m == null) {
                zzce.m = new zzce();
            }
            zzce zzceVar = zzce.m;
            Context context = zzaxVar.zzf;
            synchronized (zzceVar) {
                if (zzceVar.f30017a == null) {
                    zzceVar.f30017a = context.getApplicationContext();
                    if (zzceVar.f30019c == null) {
                        zzceVar.f30019c = zzavVar;
                    }
                }
            }
            synchronized (zzceVar) {
                try {
                    if (zzceVar.f30018b == null) {
                        Context context2 = zzceVar.f30017a;
                        if (context2 == null) {
                            throw new IllegalStateException("Cant get a store unless we have a context");
                        }
                        zzceVar.f30018b = new zzbk(zzceVar.f30025k, context2);
                    }
                    if (zzceVar.f30022h == null) {
                        zzcc zzccVar = new zzcc(zzceVar);
                        zzceVar.f30022h = zzccVar;
                        zzccVar.a();
                    }
                    zzceVar.f30020e = true;
                    if (zzceVar.d) {
                        zzceVar.a();
                        zzceVar.d = false;
                    }
                    if (zzceVar.f30023i == null) {
                        zzbh zzbhVar = new zzbh(zzceVar);
                        zzceVar.f30023i = zzbhVar;
                        Context context3 = zzceVar.f30017a;
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                        ContextCompat.registerReceiver(context3, zzbhVar, intentFilter, 4);
                        IntentFilter intentFilter2 = new IntentFilter();
                        intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
                        intentFilter2.addCategory(context3.getPackageName());
                        ContextCompat.registerReceiver(context3, zzbhVar, intentFilter2, 4);
                    }
                    zzbkVar = zzceVar.f30018b;
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzaxVar.zze = zzbkVar;
        }
        zzaxVar.zze.a(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
    }
}

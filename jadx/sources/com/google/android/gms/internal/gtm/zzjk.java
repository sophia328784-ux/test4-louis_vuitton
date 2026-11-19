package com.google.android.gms.internal.gtm;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
final class zzjk implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zziw zzc;
    final /* synthetic */ zzjm zzd;

    public zzjk(zzjm zzjmVar, String str, String str2, zziw zziwVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zziwVar;
        this.zzd = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjm zzjmVar = this.zzd;
        String str = this.zzb;
        zziw zziwVar = this.zzc;
        zzjmVar.getClass();
        zzao.a(2);
        if (str == null) {
            zzao.a(2);
            zziwVar.b(0, 2);
            return;
        }
        try {
            InputStream inputStreamOpen = zzjmVar.f30133c.f30130a.getAssets().open(str);
            if (inputStreamOpen != null) {
                zziwVar.c(zzjm.b(inputStreamOpen));
            } else {
                zziwVar.b(0, 2);
            }
        } catch (IOException unused) {
            zzbg.a();
            zziwVar.b(0, 2);
        }
    }
}

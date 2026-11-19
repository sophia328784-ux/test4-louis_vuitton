package com.google.android.gms.internal.gtm;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes2.dex */
final class zzjj implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ zziw zzb;
    final /* synthetic */ zzjm zzc;

    public zzjj(zzjm zzjmVar, String str, zziw zziwVar) {
        this.zza = str;
        this.zzb = zziwVar;
        this.zzc = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjm zzjmVar = this.zzc;
        String str = this.zza;
        zziw zziwVar = this.zzb;
        zzjmVar.getClass();
        zzao.a(2);
        try {
            zziwVar.c(zzjm.b(new FileInputStream(zzjmVar.a(str))));
        } catch (FileNotFoundException unused) {
            "Saved resource not found: ".concat("resource_".concat(String.valueOf(str)));
            zzbg.a();
            zziwVar.b(0, 1);
        }
    }
}

package com.google.android.gms.internal.gtm;

import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
final class zzcs implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzct zzc;

    public zzcs(zzct zzctVar, boolean z, String str) {
        this.zza = z;
        this.zzb = str;
        this.zzc = zzctVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcv zzcvVar = this.zzc.f30035a;
        int i2 = zzcvVar.f30044k;
        LinkedList linkedList = zzcvVar.l;
        if (i2 != 2) {
            zzao.a(5);
            return;
        }
        if (this.zza) {
            zzcvVar.f30044k = 3;
            zzao.a(2);
        } else {
            zzcvVar.f30044k = 4;
            "Error loading container:".concat(String.valueOf(this.zzb));
            zzbg.a();
        }
        while (!linkedList.isEmpty()) {
            zzcvVar.d.execute((Runnable) linkedList.remove());
        }
    }
}

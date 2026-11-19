package com.google.android.gms.internal.gtm;

import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
final class zzcm implements Runnable {
    final /* synthetic */ zzcn zza;

    public zzcm(zzcn zzcnVar) {
        this.zza = zzcnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcv zzcvVar = this.zza.zza;
        int i2 = zzcvVar.f30044k;
        LinkedList linkedList = zzcvVar.l;
        if (i2 == 1 || i2 == 2) {
            zzcvVar.f30044k = 4;
            zzbg.a();
            while (!linkedList.isEmpty()) {
                zzcvVar.d.execute((Runnable) linkedList.remove());
            }
        }
    }
}

package com.google.android.gms.internal.gtm;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzjl implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ byte[] zzb;
    final /* synthetic */ zzjm zzc;

    public zzjl(zzjm zzjmVar, String str, byte[] bArr) {
        this.zza = str;
        this.zzb = bArr;
        this.zzc = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File fileA = this.zzc.a(this.zza);
        byte[] bArr = this.zzb;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileA);
            try {
                fileOutputStream.write(bArr);
            } catch (IOException unused) {
                zzbg.a();
                fileA.delete();
            } finally {
                try {
                    fileOutputStream.close();
                    zzao.a(2);
                } catch (IOException unused2) {
                    zzbg.a();
                }
            }
        } catch (FileNotFoundException unused3) {
            zzbg.a();
        }
    }
}

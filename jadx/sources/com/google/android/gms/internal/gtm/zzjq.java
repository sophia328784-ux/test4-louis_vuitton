package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjq implements Runnable {
    private final Context zza;
    private final zziw zzb;
    private final zzjf zzc;
    private final zzjn zzd;

    public zzjq(Context context, zzjf zzjfVar, zziw zziwVar) {
        zzjn zzjnVar = new zzjn();
        Preconditions.h(context);
        this.zza = context;
        Preconditions.h(zziwVar);
        this.zzb = zziwVar;
        this.zzc = zzjfVar;
        this.zzd = zzjnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        if (zza("android.permission.INTERNET") && zza("android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zza.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                zzao.a(5);
            } else {
                zzao.a(2);
                zzjo zzjoVar = new zzjo();
                InputStream inputStreamA = null;
                zzjoVar.f30135b = null;
                try {
                    String strA = this.zzd.a(this.zzc.f30123a);
                    zzao.a(2);
                    try {
                        try {
                            try {
                                inputStreamA = zzjoVar.a(strA);
                                while (true) {
                                    int i2 = inputStreamA.read(bArr, 0, 1024);
                                    if (i2 == -1) {
                                        this.zzb.c(byteArrayOutputStream.toByteArray());
                                        zzjoVar.b();
                                        return;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i2);
                                }
                            } catch (zzjs unused) {
                                "NetworkLoader: Error when loading resource for url: ".concat(strA);
                                zzbg.a();
                                this.zzb.b(3, 0);
                            }
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            bArr = new byte[1024];
                        } catch (IOException e2) {
                            e2.getMessage();
                            zzbg.b();
                            this.zzb.b(2, 0);
                            zzjoVar.b();
                            return;
                        }
                    } catch (FileNotFoundException unused2) {
                        "NetworkLoader: No data was retrieved from the given url: ".concat(strA);
                        zzbg.a();
                        this.zzb.b(2, 0);
                        zzjoVar.b();
                        return;
                    } catch (IOException e3) {
                        e3.getMessage();
                        zzbg.b();
                        this.zzb.b(1, 0);
                        zzjoVar.b();
                        return;
                    }
                } catch (Throwable th) {
                    zzjoVar.b();
                    throw th;
                }
            }
        } else {
            zzbg.a();
        }
        this.zzb.b(0, 0);
    }

    public final boolean zza(String str) {
        Context context = this.zza;
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}

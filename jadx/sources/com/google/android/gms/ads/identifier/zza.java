package com.google.android.gms.ads.identifier;

import android.net.Uri;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.internal.ads_identifier.zzh;
import com.google.android.gms.internal.ads_identifier.zzi;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zza extends Thread {
    final /* synthetic */ Map zza;

    public zza(AdvertisingIdClient advertisingIdClient, Map map) {
        this.zza = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Map map = this.zza;
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        String string = builderBuildUpon.build().toString();
        try {
            try {
                try {
                    zzh zzhVar = zzi.f29580a;
                    URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    try {
                        int iK = Callback.k(httpURLConnection);
                        if (iK < 200 || iK >= 300) {
                            new StringBuilder(String.valueOf(string).length() + 65);
                        }
                    } finally {
                        httpURLConnection.disconnect();
                    }
                } catch (IOException | RuntimeException e2) {
                    new StringBuilder(String.valueOf(string).length() + 27 + String.valueOf(e2.getMessage()).length());
                    zzh zzhVar2 = zzi.f29580a;
                }
            } catch (IndexOutOfBoundsException e3) {
                new StringBuilder(String.valueOf(string).length() + 32 + String.valueOf(e3.getMessage()).length());
                zzh zzhVar3 = zzi.f29580a;
            }
        } catch (Throwable th) {
            zzh zzhVar4 = zzi.f29580a;
            throw th;
        }
    }
}

package com.google.android.gms.internal.gtm;

import com.dynatrace.android.callback.Callback;
import defpackage.az;
import defpackage.pq0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes2.dex */
final class zzjo implements zzjp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HttpURLConnection f30134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InputStream f30135b;

    public final InputStream a(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        this.f30134a = httpURLConnection;
        int iK = Callback.k(httpURLConnection);
        if (iK == 200) {
            InputStream inputStreamG = Callback.g(httpURLConnection);
            this.f30135b = inputStreamG;
            return inputStreamG;
        }
        String strK = pq0.k(iK, "Bad response: ");
        if (iK == 404) {
            throw new FileNotFoundException(strK);
        }
        if (iK == 503) {
            throw new zzjs(strK);
        }
        az.o(strK);
        return null;
    }

    public final void b() {
        HttpURLConnection httpURLConnection = this.f30134a;
        try {
            InputStream inputStream = this.f30135b;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e2) {
            "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(String.valueOf(e2.getMessage()));
            zzbg.b();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}

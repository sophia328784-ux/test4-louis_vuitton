package com.google.firebase.crashlytics.internal.network;

import com.dynatrace.android.callback.Callback;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class HttpGetRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f34997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f34998c = new HashMap();

    public HttpGetRequest(String str, Map<String, String> map) {
        this.f34996a = str;
        this.f34997b = map;
    }

    public static String a(String str, Map map) {
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb.append((String) entry.getKey());
        sb.append("=");
        sb.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : "");
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append("&");
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : "");
        }
        String string = sb.toString();
        if (string.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return tr.h(str, "?", string);
        }
        if (!str.endsWith("&")) {
            string = "&".concat(string);
        }
        return str.concat(string);
    }

    public final HttpResponse b() {
        HttpsURLConnection httpsURLConnection;
        CrashlyticsWorkers.b();
        InputStream inputStream = null;
        String string = null;
        inputStream = null;
        try {
            String strA = a(this.f34996a, this.f34997b);
            Logger.f34483b.a(2);
            URLConnection uRLConnectionOpenConnection = new URL(strA).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : this.f34998c.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                Callback.a(httpsURLConnection);
                int iK = Callback.k(httpsURLConnection);
                InputStream inputStreamG = Callback.g(httpsURLConnection);
                if (inputStreamG != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamG, "UTF-8"));
                        char[] cArr = new char[8192];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int i2 = bufferedReader.read(cArr);
                            if (i2 == -1) {
                                break;
                            }
                            sb.append(cArr, 0, i2);
                        }
                        string = sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamG;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStreamG != null) {
                    inputStreamG.close();
                }
                httpsURLConnection.disconnect();
                return new HttpResponse(iK, string);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    public final void c(String str, String str2) {
        this.f34998c.put(str, str2);
    }
}

package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.instrumentation.NBSHttpURLConnectionExtension;
import com.networkbench.agent.impl.instrumentation.NBSHttpsURLConnectionExtension;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.w;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.OkUrlFactory;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOkHttp2Instrumentation {
    public static ResponseBody body(Response response) {
        return response.body();
    }

    public static Map<String, List<String>> getHeaderForOkhttp2(Headers headers) {
        if (headers == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strName = headers.name(i2);
            List arrayList = (List) linkedHashMap.get(strName);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                linkedHashMap.put(strName, arrayList);
            }
            arrayList.add(headers.value(i2));
        }
        return linkedHashMap;
    }

    public static OkHttpClient init() {
        try {
            if (!r.u().V() || isSpecificOkhttp(ak.j()) != 2) {
                return new OkHttpClient();
            }
            NBSOkHttp2Interceptor nBSOkHttp2Interceptor = new NBSOkHttp2Interceptor();
            OkHttpClient okHttpClient = new OkHttpClient();
            okHttpClient.interceptors().add(nBSOkHttp2Interceptor);
            nBSOkHttp2Interceptor.setClient(okHttpClient);
            return okHttpClient;
        } catch (Throwable unused) {
            return new OkHttpClient();
        }
    }

    public static int isSpecificOkhttp(String str) {
        try {
            w wVar = new w(str);
            if (wVar.a() == 0) {
                return 0;
            }
            if (wVar.a() < 2) {
                return 1;
            }
            return (wVar.a() != 2 || wVar.b() >= 2) ? 2 : 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static Call newCall(OkHttpClient okHttpClient, Request request) {
        return (r.u().V() && isSpecificOkhttp(ak.j()) == 1) ? new NBSCallExtension(okHttpClient, request) : okHttpClient.newCall(request);
    }

    public static HttpURLConnection open(OkUrlFactory okUrlFactory, URL url) {
        HttpURLConnection httpURLConnectionOpen = okUrlFactory.open(url);
        if (httpURLConnectionOpen instanceof HttpsURLConnection) {
            NBSHttpsURLConnectionExtension nBSHttpsURLConnectionExtension = new NBSHttpsURLConnectionExtension((HttpsURLConnection) httpURLConnectionOpen);
            Callback.m(nBSHttpsURLConnectionExtension);
            return nBSHttpsURLConnectionExtension;
        }
        if (httpURLConnectionOpen == null) {
            return httpURLConnectionOpen;
        }
        NBSHttpURLConnectionExtension nBSHttpURLConnectionExtension = new NBSHttpURLConnectionExtension(httpURLConnectionOpen);
        Callback.m(nBSHttpURLConnectionExtension);
        return nBSHttpURLConnectionExtension;
    }
}

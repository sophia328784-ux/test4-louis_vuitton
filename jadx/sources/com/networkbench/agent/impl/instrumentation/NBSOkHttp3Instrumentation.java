package com.networkbench.agent.impl.instrumentation;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.okhttp3.NBSOkHttp3Interceptor_;
import com.networkbench.agent.impl.okhttp3.d;
import com.networkbench.agent.impl.util.r;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.OkUrlFactory;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOkHttp3Instrumentation {
    public static Response.Builder body(Response.Builder builder, ResponseBody responseBody) {
        builder.getClass();
        responseBody.getClass();
        builder.g = responseBody;
        return builder;
    }

    public static OkHttpClient builderInit(OkHttpClient.Builder builder) {
        synchronized (NBSOkHttp3Instrumentation.class) {
            try {
                if (r.u().V()) {
                    checkNBSInterceptors(builder);
                    return d.a(builder);
                }
                builder.getClass();
                return new OkHttpClient(builder);
            } catch (Throwable th) {
                g.b("OkHttpClient builderInit() has an error : ", th);
                if (builder == null) {
                    return null;
                }
                return new OkHttpClient(builder);
            }
        }
    }

    private static boolean checkNBSInterceptors(OkHttpClient.Builder builder) {
        return filterNBSInterceptor(builder.f76962c);
    }

    private static boolean filterNBSInterceptor(List<Interceptor> list) {
        if (list != null && list.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (Interceptor interceptor : list) {
                if (interceptor instanceof NBSOkHttp3Interceptor_) {
                    arrayList.add(interceptor);
                }
            }
            g.s(" filterNBSInterceptor  removeAll : " + list.removeAll(arrayList));
        }
        return false;
    }

    public static OkHttpClient init() {
        synchronized (NBSOkHttp3Instrumentation.class) {
            try {
                if (r.u().V()) {
                    return d.a();
                }
                return new OkHttpClient();
            } catch (Throwable th) {
                g.b("OkHttpClient init() has an error : ", th);
                return new OkHttpClient();
            }
        }
    }

    public static Response.Builder newBuilder(Response response) {
        response.getClass();
        return new Response.Builder(response);
    }

    public static Call newCall(OkHttpClient okHttpClient, Request request) {
        return okHttpClient.a(request);
    }

    public static WebSocket newWebSocket(OkHttpClient okHttpClient, Request request, WebSocketListener webSocketListener) {
        try {
            if (r.u().V()) {
                g.h("NBSOkHttp3Instrumentation newWebSocket begin");
                NBSTransactionState nBSTransactionState = new NBSTransactionState();
                request.getClass();
                Request.Builder builder = new Request.Builder(request);
                try {
                    builder.d(NBSTransactionState.class, nBSTransactionState);
                } catch (Throwable th) {
                    g.h(" newWebSocket tag error:" + th);
                }
                return okHttpClient.b(new Request(builder), webSocketListener);
            }
        } catch (Throwable th2) {
            g.h("NBSOkHttp3Instrumentation newWebSocket error:" + th2.getMessage());
        }
        return okHttpClient.b(request, webSocketListener);
    }

    public static HttpURLConnection open(OkUrlFactory okUrlFactory, URL url) {
        HttpURLConnection httpURLConnectionOpen = okUrlFactory.open(url);
        if (httpURLConnectionOpen == null) {
            return null;
        }
        if (!Harvest.isHttp_network_enabled()) {
            return httpURLConnectionOpen;
        }
        g.l("okhttp3  open gather  begin !!");
        if (httpURLConnectionOpen instanceof HttpsURLConnection) {
            NBSHttpsURLConnectionExtension nBSHttpsURLConnectionExtension = new NBSHttpsURLConnectionExtension((HttpsURLConnection) httpURLConnectionOpen);
            Callback.m(nBSHttpsURLConnectionExtension);
            return nBSHttpsURLConnectionExtension;
        }
        NBSHttpURLConnectionExtension nBSHttpURLConnectionExtension = new NBSHttpURLConnectionExtension(httpURLConnectionOpen);
        Callback.m(nBSHttpURLConnectionExtension);
        return nBSHttpURLConnectionExtension;
    }
}

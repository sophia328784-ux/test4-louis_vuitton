package com.networkbench.agent.impl.instrumentation.okhttp2;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.k.d;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.agent.impl.util.w;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import defpackage.d21;
import java.io.IOException;
import java.util.UUID;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOkHttp2Interceptor implements Interceptor {
    private static final e log = f.a();
    private OkHttpClient client;
    private final NBSOKHttp2Reporter mEventReporter = new NBSOKHttp2Reporter();

    private void a(Request request, NBSTransactionState nBSTransactionState, Request.Builder builder) {
        try {
            if (r.u().b()) {
                String strReplace = UUID.randomUUID().toString().replace("-", "");
                g.o("HttpURLConnection setCrossProcessHeader uuid :" + strReplace);
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                for (int i2 = 0; i2 < a(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    g.o("okhttp2 setCrossProcessHeader apms  :" + string);
                    if (TextUtils.isEmpty(request.header(string))) {
                        builder.addHeader(string, strReplace);
                        nBSTransactionState.setUUid(strReplace);
                        g.o("okhttp2 setCrossProcessHeader apms  :" + string + "------  uuid : " + strReplace);
                    } else {
                        nBSTransactionState.getApmsList().put(string, request.header(string));
                        g.o("okhttp2 setCrossProcessHeader  apmsList  :" + string);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            g.o(" okhttp2 apms数据格式解析错误!!!" + th.getMessage());
        }
    }

    private Request b(Request request, NBSTransactionState nBSTransactionState) {
        try {
            if (!r.u().aH().b()) {
                return request;
            }
            b seriesData = nBSTransactionState.getSeriesData();
            if (request.header("traceparent") != null) {
                nBSTransactionState.getApmsList().put("traceparent", request.header("traceparent"));
                nBSTransactionState.getApmsList().put("tracestate", request.header("tracestate"));
                return request;
            }
            String strHeader = request.header("tracestate");
            String strA = d.a();
            String strA2 = d.a(strHeader, seriesData);
            Request requestBuild = request.newBuilder().header("traceparent", strA).header("tracestate", strA2).build();
            nBSTransactionState.getApmsList().put("traceparent", strA);
            nBSTransactionState.getApmsList().put("tracestate", strA2);
            return requestBuild;
        } catch (Throwable th) {
            g.d("setSeriesHeader has error .... ", th);
            return request;
        }
    }

    private Request c(Request request, NBSTransactionState nBSTransactionState) {
        try {
            Request.Builder builderNewBuilder = request.newBuilder();
            if (nBSTransactionState == null) {
                nBSTransactionState = new NBSTransactionState();
            }
            if (r.u().aj()) {
                nBSTransactionState.setRequestHeaderIdValue(request.header(r.u().f38396h));
            }
            String strAm = r.u().am();
            if (!TextUtils.isEmpty(strAm) && r.u().aj()) {
                builderNewBuilder.addHeader(r.u, r.a(strAm, r.ar()));
            }
            if (r.u().aH().a()) {
                builderNewBuilder.addHeader(r.v, r.u().an());
            }
            a(builderNewBuilder.build(), nBSTransactionState, builderNewBuilder);
            if (request.tag() == null) {
                log.a("set request tag");
                builderNewBuilder.tag(nBSTransactionState);
            }
            return builderNewBuilder.build();
        } catch (Exception e2) {
            log.e("NBSOkHttp2Interceptor setCrossProcessHeader---> has an error : " + e2);
            return request;
        }
    }

    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        if (request == null || !Harvest.isHttp_network_enabled()) {
            return chain.proceed(request);
        }
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            nBSTransactionState.setHttpLibType(HttpLibType.OkHttp);
            this.mEventReporter.isEnabled();
            try {
                Request requestA = a(b(request, nBSTransactionState), nBSTransactionState);
                this.mEventReporter.requestFinished(requestA, nBSTransactionState);
                request = c(requestA, nBSTransactionState);
            } catch (Exception e2) {
                log.a("okhttp2.0 -> setCrossProcessHeader occur an error", e2);
            }
            try {
                nBSTransactionState.requestHeaderParam = ak.f(NBSOkHttp2Instrumentation.getHeaderForOkhttp2(request.headers()));
            } catch (Throwable unused) {
                g.e("Util.getHeader  has error .... ");
            }
        } catch (Throwable th) {
            log.a("okhttp2 intercept error", th);
        }
        if (this.client != null) {
            if (!com.networkbench.agent.impl.socket.r.b(request.url().getHost())) {
                com.networkbench.agent.impl.socket.r.b(request.url().getHost(), v.a(request.url().getHost()));
            }
            nBSTransactionState.setDnsElapse(com.networkbench.agent.impl.socket.r.c(request.url().getHost()));
        }
        try {
            Response responseProceed = chain.proceed(request);
            try {
                nBSTransactionState.responseHeaderParam = ak.f(NBSOkHttp2Instrumentation.getHeaderForOkhttp2(responseProceed.headers()));
                nBSTransactionState.setContentType(ak.g(responseProceed.header("Content-Type")));
                nBSTransactionState.setBytesSent(a(request));
            } catch (Exception e3) {
                log.a("NBSOkHttp2Interceptor_. getContentType occur an error", e3);
            }
            if (this.mEventReporter.isEnabled() || responseProceed != null) {
                try {
                    this.mEventReporter.responseFinished(responseProceed, nBSTransactionState);
                } catch (Exception e4) {
                    log.e("NBSOkHttp2Interceptor_  intercept()---> responseFinished  has an error : " + e4);
                }
            }
            return responseProceed.newBuilder().body(new NBSPrebufferedResponseBody(responseProceed.body(), nBSTransactionState, a(responseProceed))).build();
        } catch (IOException e5) {
            if (this.mEventReporter.isEnabled()) {
                try {
                    this.mEventReporter.httpError(nBSTransactionState, e5);
                } catch (Exception e6) {
                    log.e("NBSOkHttp2Interceptor_  intercept() --->httpError has an error : " + e6);
                }
            }
            throw e5;
        }
    }

    public void setClient(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    private long a(Request request) {
        if (request != null && request.body() != null) {
            try {
                return request.body().contentLength();
            } catch (Throwable th) {
                d21.C(th, new StringBuilder("getRequestBodyLength error:"), log);
            }
        }
        return 0L;
    }

    private boolean a(Response response) {
        try {
            return !TextUtils.isEmpty(response.header("Content-Range", ""));
        } catch (Throwable th) {
            log.a("isContentRangeHeaderExist happened error", th);
            return false;
        }
    }

    private Request a(Request request, NBSTransactionState nBSTransactionState) {
        String str;
        try {
            if (!r.u().aH().c()) {
                return request;
            }
            if (request.header("sw8") != null) {
                nBSTransactionState.getApmsList().put("sw8", request.header("sw8"));
                return request;
            }
            if (nBSTransactionState.getSeriesData() == null) {
                return request;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(request.url().getHost());
            if (request.url().getPort() != -1) {
                str = ":" + request.url().getPort();
            } else {
                str = "";
            }
            sb.append(str);
            String strA = d.a(NBSAgent.getApplicationInformation().getAppName(), NBSAgent.getApplicationInformation().getAppVersion(), nBSTransactionState.getSeriesData().d, sb.toString());
            Request requestBuild = request.newBuilder().header("sw8", strA).build();
            nBSTransactionState.getApmsList().put("sw8", strA);
            return requestBuild;
        } catch (Throwable th) {
            g.d("setSeriesHeader has error .... ", th);
            return request;
        }
    }

    private int a(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    private boolean a() {
        boolean z = false;
        try {
            w wVar = new w(ak.j());
            if (wVar.a() == 2 && wVar.b() >= 6) {
                z = true;
            }
        } catch (Throwable th) {
            log.f("get okhttp2 version error:" + th);
        }
        log.a("okhttp2 dns interface is " + z);
        return z;
    }
}

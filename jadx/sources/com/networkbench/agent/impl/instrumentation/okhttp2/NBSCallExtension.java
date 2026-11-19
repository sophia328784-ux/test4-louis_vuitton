package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.k.d;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c.c;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.agent.impl.util.w;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import defpackage.z81;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSCallExtension extends Call {
    private static final e log = f.a();
    private Call impl;
    private boolean isOkhttp2;
    private Request request;
    private NBSTransactionState transactionState;

    public NBSCallExtension(OkHttpClient okHttpClient, Request request) {
        super(okHttpClient, request);
        this.isOkhttp2 = true;
        b();
        a(okHttpClient, request);
        this.request = b(request, this.transactionState);
        this.request = a(request, this.transactionState);
        Request requestA = a(request, okHttpClient);
        this.request = requestA;
        if (requestA != null) {
            this.transactionState.requestHeaderParam = ak.f(NBSOkHttp2Instrumentation.getHeaderForOkhttp2(requestA.headers()));
        }
        this.impl = okHttpClient.newCall(this.request);
    }

    private void a(Request request, NBSTransactionState nBSTransactionState, Request.Builder builder) {
        try {
            if (r.u().b()) {
                String strReplace = UUID.randomUUID().toString().replace("-", "");
                g.o("HttpURLConnection setCrossProcessHeader uuid :" + strReplace);
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                for (int i2 = 0; i2 < a(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    g.o("okhttp2 setCrossProcessHeader apms  :" + string);
                    if (ak.r(request.header(string))) {
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
            g.o(" okhttp2 apms数据格式解析错误!!!" + th.getMessage());
        }
    }

    private Request b(Request request, NBSTransactionState nBSTransactionState) {
        b seriesData;
        try {
            if (r.u().aH().b() && (seriesData = nBSTransactionState.getSeriesData()) != null) {
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
            }
            return request;
        } catch (Throwable th) {
            g.d("setSeriesHeader has error .... ", th);
            return request;
        }
    }

    public void cancel() {
        this.impl.cancel();
    }

    public void enqueue(Callback callback) {
        this.impl.enqueue(new NBSCallbackExtension(callback, b()));
    }

    public Response execute() throws IOException {
        try {
            b().setTraces();
            Response responseExecute = this.impl.execute();
            a(responseExecute);
            return responseExecute;
        } catch (IOException e2) {
            a(e2, (Response) null);
            throw e2;
        }
    }

    public boolean isCanceled() {
        return this.impl.isCanceled();
    }

    private NBSTransactionState b() {
        if (this.transactionState == null) {
            this.transactionState = new NBSTransactionState(this.isOkhttp2);
        }
        return this.transactionState;
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

    private void a(final Request request) {
        if (com.networkbench.agent.impl.socket.r.b(request.url().getHost())) {
            b().setDnsElapse(com.networkbench.agent.impl.socket.r.c(request.url().getHost()));
        } else {
            c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.instrumentation.okhttp2.NBSCallExtension.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.networkbench.agent.impl.socket.r.b(request.url().getHost(), v.a(request.url().getHost()));
                        if (NBSCallExtension.this.transactionState != null) {
                            NBSCallExtension.this.transactionState.setOk2DnsFromThread(true);
                            NBSCallExtension.this.transactionState.setDnsElapse(com.networkbench.agent.impl.socket.r.c(request.url().getHost()));
                        }
                    } catch (Throwable th) {
                        z81.k(new StringBuilder("NBSCallExtension calcDnsTime  has an error : "), th);
                    }
                }
            });
        }
    }

    private void a(OkHttpClient okHttpClient, Request request) {
        if (Harvest.isHttp_network_enabled() && request != null) {
            a(request);
        }
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

    private Request a(Request request, OkHttpClient okHttpClient) {
        if (request != null) {
            try {
                if (Harvest.isHttp_network_enabled()) {
                    if (this.transactionState == null) {
                        this.transactionState = new NBSTransactionState(this.isOkhttp2);
                    }
                    if (r.u().aj()) {
                        this.transactionState.setRequestHeaderIdValue(request.header(r.u().f38396h));
                    }
                    Request.Builder builderNewBuilder = request.newBuilder();
                    String strAm = r.u().am();
                    if (!ak.r(strAm) && r.u().aj()) {
                        builderNewBuilder.addHeader(r.u, r.a(strAm, r.ar()));
                    }
                    if (r.u().aH().a()) {
                        builderNewBuilder.addHeader(r.v, r.u().an());
                    }
                    Request requestBuild = builderNewBuilder.build();
                    a(requestBuild, this.transactionState, builderNewBuilder);
                    NBSOkHttp2TransactionStateUtil.inspectAndInstrument(this.transactionState, requestBuild);
                    return builderNewBuilder.build();
                }
            } catch (Throwable unused) {
            }
        }
        return request;
    }

    private void a(Response response) {
        try {
            if (Harvest.isHttp_network_enabled() && !b().isComplete()) {
                NBSOkHttp2TransactionStateUtil.inspectAndInstrumentResponse(b(), response);
            }
        } catch (Throwable th) {
            g.h("NBSCallExtension checkResponse() : " + th);
        }
    }

    private void a(Exception exc, Response response) {
        try {
            if (Harvest.isHttp_network_enabled()) {
                NBSTransactionState nBSTransactionStateB = b();
                NBSTransactionStateUtil.setErrorCodeFromException(nBSTransactionStateB, exc);
                if (!nBSTransactionStateB.isComplete() && nBSTransactionStateB.end() != null) {
                    if (response != null) {
                        nBSTransactionStateB.setContentType(ak.g(response.header("Content-Type")));
                    }
                    if (nBSTransactionStateB.isError()) {
                        String exception = nBSTransactionStateB.getException() != null ? nBSTransactionStateB.getException() : "";
                        log.a("error message:" + exception);
                        if (nBSTransactionStateB.isError()) {
                            nBSTransactionStateB.setErrorDataInfo(exception, new HashMap(), "");
                        }
                    }
                    ai.a(new com.networkbench.agent.impl.d.b.c(nBSTransactionStateB));
                }
            }
        } catch (Exception unused) {
            g.h("NBSCallExtension error() har an error :" + exc);
        }
    }

    private int a(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }
}

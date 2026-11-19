package com.networkbench.agent.impl.okhttp3;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.session.network.NBSNetworkCallbackManager;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.d21;
import defpackage.o60;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.UUID;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOkHttp3Interceptor_ implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37562a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37563b = "NBSOkHttp3Interceptor_";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f37564c = new b();
    private OkHttpClient d;

    private void a(Request request, NBSTransactionState nBSTransactionState, Request.Builder builder) {
        try {
            if (r.u().b()) {
                String strReplace = UUID.randomUUID().toString().replace("-", "");
                com.networkbench.agent.impl.c.g.o("OKhttp3 setCrossProcessHeader uuid :" + strReplace);
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                com.networkbench.agent.impl.c.g.o("okhttp3 setCrossProcessHeader apmsIssue  length :" + jSONArray.length());
                for (int i2 = 0; i2 < a(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    com.networkbench.agent.impl.c.g.o("okhttp3 setCrossProcessHeader apms  :" + string);
                    request.getClass();
                    Headers headers = request.f76971c;
                    string.getClass();
                    if (TextUtils.isEmpty(headers.a(string))) {
                        builder.a(string, strReplace);
                        nBSTransactionState.setUUid(strReplace);
                    } else {
                        nBSTransactionState.getApmsList().put(string, headers.a(string));
                        com.networkbench.agent.impl.c.g.o("okhttp3 setCrossProcessHeader  apmsList  :" + string);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            com.networkbench.agent.impl.c.g.o(" okhttp3 apms数据格式解析错误!!!" + th.getMessage());
        }
    }

    private Request b(Request request, NBSTransactionState nBSTransactionState) {
        com.networkbench.agent.impl.k.b seriesData;
        try {
            if (r.u().aH().b() && (seriesData = nBSTransactionState.getSeriesData()) != null) {
                request.getClass();
                Headers headers = request.f76971c;
                if (headers.a("traceparent") != null) {
                    nBSTransactionState.getApmsList().put("traceparent", headers.a("traceparent"));
                    nBSTransactionState.getApmsList().put("tracestate", headers.a("tracestate"));
                    return request;
                }
                String strA = headers.a("tracestate");
                String strA2 = com.networkbench.agent.impl.k.d.a();
                String strA3 = com.networkbench.agent.impl.k.d.a(strA, seriesData);
                Request.Builder builder = new Request.Builder(request);
                builder.b("traceparent", strA2);
                builder.b("tracestate", strA3);
                Request request2 = new Request(builder);
                nBSTransactionState.getApmsList().put("traceparent", strA2);
                nBSTransactionState.getApmsList().put("tracestate", strA3);
                return request2;
            }
            return request;
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.d("setSeriesHeader has error .... ", th);
            return request;
        }
    }

    private Request c(Request request, NBSTransactionState nBSTransactionState) {
        try {
            request.getClass();
            Request.Builder builder = new Request.Builder(request);
            if (nBSTransactionState == null) {
                nBSTransactionState = new NBSTransactionState();
            }
            if (r.u().aj()) {
                String str = r.u().f38396h;
                str.getClass();
                nBSTransactionState.setRequestHeaderIdValue(request.f76971c.a(str));
            }
            String strAm = r.u().am();
            if (!TextUtils.isEmpty(strAm) && r.u().aj()) {
                builder.a(r.u, r.a(strAm, r.ar()));
            }
            if (r.u().aH().a()) {
                builder.a(r.v, r.u().an());
            }
            a(new Request(builder), nBSTransactionState, builder);
            return new Request(builder);
        } catch (Exception e2) {
            f37562a.e("NBSOkHttp3Interceptor_  setCrossProcessHeader---> has an error : " + e2);
            return request;
        }
    }

    private String d(Request request) {
        request.getClass();
        RequestBody requestBody = request.d;
        Headers headers = request.f76971c;
        if (ab.c(headers.a("Content-Type"))) {
            return (requestBody == null || requestBody.getF76981c() == null) ? "" : requestBody.getF76981c().f76935a;
        }
        return headers.a("Content-Type");
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c7 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #6 {all -> 0x004b, blocks: (B:8:0x003a, B:10:0x0043, B:13:0x004e, B:26:0x00ab, B:28:0x00b3, B:30:0x00bd, B:32:0x00c7, B:25:0x009c, B:17:0x0066, B:14:0x0053, B:18:0x006d, B:20:0x0085, B:22:0x008f), top: B:106:0x003a, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01bc A[Catch: all -> 0x01a7, TryCatch #2 {all -> 0x01a7, blocks: (B:56:0x0171, B:58:0x0179, B:61:0x0182, B:63:0x0188, B:67:0x0196, B:71:0x01ab, B:74:0x01b4, B:76:0x01bc, B:78:0x01d2), top: B:98:0x0171 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01e1 A[LOOP:0: B:74:0x01b4->B:80:0x01e1, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00c7, please report this as an issue */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        int i2;
        String strC;
        Request f77173e = chain.getF77173e();
        if (f77173e == null || !Harvest.isHttp_network_enabled()) {
            return chain.b(f77173e);
        }
        NBSTransactionState nBSTransactionStateA = a(f77173e);
        nBSTransactionStateA.setokhttp3(true);
        d.f37578a.set(nBSTransactionStateA);
        com.networkbench.agent.impl.c.g.t("intercept new nbsTransactionState:" + nBSTransactionStateA.toString());
        try {
            nBSTransactionStateA.setHttpLibType(HttpLibType.OkHttp);
            if (this.f37564c == null) {
                this.f37564c = new b();
            }
            this.f37564c.a();
            try {
                f77173e = c(a(b(f77173e, nBSTransactionStateA), nBSTransactionStateA), nBSTransactionStateA);
                this.f37564c.a(f77173e, nBSTransactionStateA);
            } catch (Throwable th) {
                f37562a.a("okhttp3.0 -> setCrossProcessHeader occur an error", th);
            }
            try {
                nBSTransactionStateA.requestHeaderParam = ak.f(f77173e.f76971c.i());
                if (ab.c(f77173e.f76971c.a("Content-Type")) && !ab.c(d(f77173e))) {
                    nBSTransactionStateA.requestHeaderParam.put("content-type", d(f77173e));
                    if (NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
                        strC = c(f77173e);
                        if (!ab.c(strC)) {
                            Logger.debug(f37563b, "okhttp3 requestBody is:" + strC + ", bodyMaxLength:" + ((int) ak.o()));
                            nBSTransactionStateA.setRequestBody(ab.a(strC, (int) ak.o()));
                        }
                    }
                } else if (NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord() && ak.s(d(f77173e))) {
                    strC = c(f77173e);
                    if (!ab.c(strC)) {
                        Logger.debug(f37563b, "okhttp3 requestBody is:" + strC + ", bodyMaxLength:" + ((int) ak.o()));
                        nBSTransactionStateA.setRequestBody(ab.a(strC, (int) ak.o()));
                    }
                }
            } catch (Throwable th2) {
                com.networkbench.agent.impl.c.g.e("Util.getHeader  has error .... " + th2);
            }
        } catch (Throwable th3) {
            f37562a.a("okhttp3 intercept error", th3);
        }
        OkHttpClient okHttpClient = this.d;
        if (okHttpClient != null && okHttpClient.dns != null) {
            c.a(okHttpClient, nBSTransactionStateA);
        }
        try {
            Response responseB = chain.b(f77173e);
            com.networkbench.agent.impl.c.g.t("intercept  response " + d.f37578a.get().toString());
            String str = null;
            try {
                nBSTransactionStateA.responseHeaderParam = ak.f(responseB.g.i());
                String strA = responseB.g.a("Content-Type");
                if (strA == null) {
                    strA = null;
                }
                nBSTransactionStateA.setContentType(ak.g(strA));
                nBSTransactionStateA.setBytesSent(b(f77173e));
            } catch (Exception e2) {
                f37562a.a("NBSOkHttp3Interceptor_. getContentType occur an error", e2);
            }
            this.f37564c.a();
            try {
                this.f37564c.a(responseB, nBSTransactionStateA);
            } catch (Exception e3) {
                f37562a.e("NBSOkHttp3Interceptor_  intercept()---> responseFinished  has an error : " + e3);
            }
            ResponseBody responseBody = responseB.f76988h;
            if (responseBody != null) {
                try {
                    if (NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
                        String strA2 = responseB.g.a("Content-Type");
                        if (strA2 == null) {
                            strA2 = null;
                        }
                        if (ak.s(strA2)) {
                            long jO = ak.o();
                            String strA3 = responseB.g.a("Content-Type");
                            if (strA3 != null) {
                                str = strA3;
                            }
                            nBSTransactionStateA.setResponseBody(ab.a(a(responseBody, jO, str), (int) ak.o()));
                        }
                    }
                    if (responseBody != null && d.f37580c.size() > 0) {
                        for (i2 = 0; i2 < d.f37580c.size(); i2++) {
                            if (responseBody.getClass().getName().startsWith(d.f37580c.get(i2))) {
                                Response.Builder builder = new Response.Builder(responseB);
                                responseBody.getClass();
                                builder.g = responseBody;
                                return builder.a();
                            }
                        }
                    }
                } catch (Throwable th4) {
                    Logger.error(f37563b, "error process info", th4);
                    Response.Builder builder2 = new Response.Builder(responseB);
                    responseBody.getClass();
                    builder2.g = responseBody;
                    builder2.a();
                }
            } else if (responseBody != null) {
                while (i2 < d.f37580c.size()) {
                    if (responseBody.getClass().getName().startsWith(d.f37580c.get(i2))) {
                        Response.Builder builder3 = new Response.Builder(responseB);
                        responseBody.getClass();
                        builder3.g = responseBody;
                        return builder3.a();
                    }
                }
            }
            Response.Builder builder4 = new Response.Builder(responseB);
            builder4.g = new e(responseBody, nBSTransactionStateA, a(responseB));
            return builder4.a();
        } catch (IOException e4) {
            if (this.f37564c.a()) {
                try {
                    this.f37564c.a(nBSTransactionStateA, e4);
                } catch (Exception e5) {
                    f37562a.e("NBSOkHttp3Interceptor_  intercept() --->httpError has an error : " + e5);
                }
            }
            throw e4;
        }
    }

    public void setClient(OkHttpClient okHttpClient) {
        this.d = okHttpClient;
    }

    private long b(Request request) {
        RequestBody requestBody;
        if (request != null && (requestBody = request.d) != null) {
            try {
                return requestBody.a();
            } catch (Throwable th) {
                d21.C(th, new StringBuilder("getRequestBodyLength error:"), f37562a);
            }
        }
        return 0L;
    }

    private String c(Request request) {
        try {
            if (request.d != null) {
                Request request2 = new Request(new Request.Builder(request));
                Buffer buffer = new Buffer();
                request2.d.e(buffer);
                return buffer.H();
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private Request a(Request request, NBSTransactionState nBSTransactionState) {
        String str;
        try {
            if (!r.u().aH().c()) {
                return request;
            }
            request.getClass();
            Headers headers = request.f76971c;
            HttpUrl httpUrl = request.f76969a;
            if (headers.a("sw8") != null) {
                nBSTransactionState.getApmsList().put("sw8", headers.a("sw8"));
                return request;
            }
            if (nBSTransactionState.getSeriesData() == null) {
                return request;
            }
            StringBuilder sb = new StringBuilder();
            String str2 = httpUrl.d;
            int i2 = httpUrl.f76922e;
            sb.append(str2);
            if (i2 != -1) {
                str = ":" + i2;
            } else {
                str = "";
            }
            sb.append(str);
            String strA = com.networkbench.agent.impl.k.d.a(NBSAgent.getApplicationInformation().getAppName(), NBSAgent.getApplicationInformation().getAppVersion(), nBSTransactionState.getSeriesData().d, sb.toString());
            Request.Builder builder = new Request.Builder(request);
            builder.b("sw8", strA);
            Request request2 = new Request(builder);
            nBSTransactionState.getApmsList().put("sw8", strA);
            return request2;
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.d("setSeriesHeader has error .... ", th);
            return request;
        }
    }

    private boolean a(Response response) {
        try {
            String str = "";
            String strA = response.g.a("Content-Range");
            if (strA != null) {
                str = strA;
            }
            return !TextUtils.isEmpty(str);
        } catch (Throwable th) {
            f37562a.a("isContentRangeHeaderExist happened error", th);
            return false;
        }
    }

    private NBSTransactionState a(Request request) {
        try {
            request.getClass();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            if (request.a(reflectionFactory.b(NBSTransactionState.class)) != null) {
                f37562a.a("get transactionState tag from reqeust");
                return (NBSTransactionState) request.a(reflectionFactory.b(NBSTransactionState.class));
            }
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error getTransactionState:"), f37562a);
        }
        return new NBSTransactionState();
    }

    private int a(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    private String a(ResponseBody responseBody, long j2, String str) throws IOException {
        try {
            BufferedSource f77005h = responseBody.getF77005h();
            f77005h.request(j2);
            Buffer bufferQ = f77005h.Q();
            if (responseBody.getG() == 0) {
                return "";
            }
            String str2 = "utf-8";
            if (ak.t(str)) {
                str2 = "GBK";
            }
            return bufferQ.clone().i1(Charset.forName(str2));
        } catch (Throwable th) {
            Logger.error(f37563b, "get response body error:", th);
            return "";
        }
    }
}

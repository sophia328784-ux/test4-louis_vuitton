package com.networkbench.agent.impl.instrumentation.okhttp2;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.a.a.b;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import defpackage.z81;
import java.io.IOException;
import java.util.HashMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOKHttp2Reporter {
    private static final e log = f.a();
    private volatile boolean isEnable = true;

    private static void a(NBSTransactionState nBSTransactionState, Response response) {
        try {
            nBSTransactionState.setContentType(ak.g(response.header("Content-Type")));
        } catch (Exception unused) {
            log.e("NBSOkHttp2TransactionStateUtil content-type has an error ");
        }
    }

    private static void b(NBSTransactionState nBSTransactionState, Response response) {
        if (nBSTransactionState.getStatusCode() >= 400) {
            TreeMap treeMap = new TreeMap();
            Headers headers = response.headers();
            if (headers != null && headers.size() > 0) {
                for (String str : headers.names()) {
                    String str2 = headers.get(str);
                    if (str2 != null) {
                        treeMap.put(str, str2);
                    }
                }
            }
            String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
            if (TextUtils.isEmpty(response.message())) {
                nBSTransactionState.setErrorDataInfo(exception, treeMap, "");
            } else {
                nBSTransactionState.setErrorDataInfo(response.message(), treeMap, exception);
            }
        }
    }

    private static void c(NBSTransactionState nBSTransactionState, Response response) {
        b(nBSTransactionState, response);
        nBSTransactionState.setEndState();
        if (nBSTransactionState.getStatusCode() != 504 || !nBSTransactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
            ai.b(nBSTransactionState);
            return;
        }
        log.a("error  504 ,  message:" + nBSTransactionState.getErrorData().f36389a);
    }

    public static void inspectAndInstrumentResponse(NBSTransactionState nBSTransactionState, String str, int i2, int i3) {
        if (str != null && !"".equals(str) && r.u().aj()) {
            nBSTransactionState.setAppData(str);
        }
        nBSTransactionState.setStatusCode(i3);
        if (i2 >= 0) {
            nBSTransactionState.setBytesReceivedContent(i2);
        }
    }

    public void httpError(NBSTransactionState nBSTransactionState, IOException iOException) {
        b bVarEnd;
        if (isNetworkEnter()) {
            e eVar = log;
            eVar.a("okhttp2.0 ->httpError");
            NBSTransactionStateUtil.setErrorCodeFromException(nBSTransactionState, iOException);
            if (nBSTransactionState.isComplete() || (bVarEnd = nBSTransactionState.end()) == null) {
                return;
            }
            bVarEnd.a(HttpLibType.OkHttp);
            if (nBSTransactionState.isError()) {
                String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                eVar.a("okhttp2.0 ->error message:" + exception);
                nBSTransactionState.setErrorDataInfo(exception, new HashMap(), "");
            }
            ai.a(new c(nBSTransactionState));
        }
    }

    public boolean isEnabled() {
        return this.isEnable;
    }

    public boolean isNetworkEnter() {
        return Harvest.isHttp_network_enabled();
    }

    public void requestFinished(Request request, NBSTransactionState nBSTransactionState) {
        String strSubstring;
        if (isNetworkEnter()) {
            String string = request.url().toString();
            if (string == null || !string.contains("?")) {
                strSubstring = null;
            } else {
                int iIndexOf = string.indexOf("?");
                String strSubstring2 = string.substring(0, iIndexOf);
                strSubstring = string.substring(iIndexOf + 1);
                string = strSubstring2;
            }
            nBSTransactionState.setUrl(string);
            nBSTransactionState.setUrlParams(strSubstring);
            nBSTransactionState.setAllGetRequestParams(strSubstring);
            NBSTransactionStateUtil.setRequestMethod(nBSTransactionState, request.method());
            nBSTransactionState.setCarrier("");
            nBSTransactionState.setHttpLibType(HttpLibType.OkHttp);
            if (string != null) {
                a(nBSTransactionState, request);
            }
        }
    }

    public void responseFinished(Response response, NBSTransactionState nBSTransactionState) {
        NBSAndroidAgentImpl impl;
        if (isNetworkEnter()) {
            if (response == null) {
                log.f("okhttp2.0 ->CallBack.onResponse(response) response is null ");
                return;
            }
            String strHeader = r.u().aj() ? response.header(r.t) : "";
            if (Harvest.isCdn_enabled() && (impl = NBSAgent.getImpl()) != null) {
                String cdnHeaderName = impl.m().getCdnHeaderName();
                e eVar = log;
                z81.j("cdnHeaderName  key : ", cdnHeaderName, eVar);
                if (cdnHeaderName != null && !cdnHeaderName.isEmpty()) {
                    String strHeader2 = response.header(cdnHeaderName);
                    nBSTransactionState.setCdnVendorName(strHeader2 != null ? strHeader2 : "");
                    eVar.a("cdnHeaderName  value : " + strHeader2);
                }
            }
            int iCode = response.code();
            ResponseBody responseBodyBody = response.body();
            long jContentLength = 0;
            if (responseBodyBody != null) {
                try {
                    jContentLength = responseBodyBody.contentLength();
                } catch (Throwable unused) {
                }
            }
            inspectAndInstrumentResponse(nBSTransactionState, strHeader, (int) jContentLength, iCode);
            g.o("okhttp2  setAppDataNew  start ....");
            if (r.u().aj()) {
                nBSTransactionState.setAppDataNew(response.header(r.w));
            }
            a(nBSTransactionState, response);
            c(nBSTransactionState, response);
        }
    }

    private static void a(NBSTransactionState nBSTransactionState, final Request request) {
        NBSTransactionStateUtil.processParamsFilter(nBSTransactionState, nBSTransactionState.getUrlParams());
        NBSTransactionStateUtil.processHeaderParam(nBSTransactionState.getUrl(), new NBSNetworkProcessHeader() { // from class: com.networkbench.agent.impl.instrumentation.okhttp2.NBSOKHttp2Reporter.1
            @Override // com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader
            public String getFilterHeader(String str) {
                Request request2 = request;
                return (request2 == null || str == null) ? "" : request2.header(str);
            }
        }, nBSTransactionState);
    }
}

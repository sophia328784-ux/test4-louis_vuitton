package com.networkbench.agent.impl.instrumentation.okhttp2;

import com.networkbench.agent.impl.NBSAgent;
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
import defpackage.z81;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOkHttp2TransactionStateUtil extends NBSTransactionStateUtil {
    private static final String NO_BODY_TEXT = "Response BODY not found.";
    private static final e log = f.a();

    private static void a(NBSTransactionState nBSTransactionState, Response response) {
        try {
            nBSTransactionState.setContentType(ak.g(response.header("Content-Type")));
            nBSTransactionState.responseHeaderParam = ak.f(NBSOkHttp2Instrumentation.getHeaderForOkhttp2(response.headers()));
        } catch (Exception e2) {
            log.a("NBSOkHttp2TransactionStateUtil content-type has an error:", e2);
        }
        if (nBSTransactionState.end() == null) {
            return;
        }
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
            nBSTransactionState.setErrorDataInfo(response.message(), treeMap, nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "");
        }
        if (nBSTransactionState.getStatusCode() != 504 || !nBSTransactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
            ai.a(new c(nBSTransactionState));
            return;
        }
        log.a("error  504 ,  message:" + nBSTransactionState.getErrorData().f36389a);
    }

    public static void inspectAndInstrument(NBSTransactionState nBSTransactionState, Request request) {
        String strSubstring;
        String strUrlString = request.urlString();
        if (strUrlString == null || !strUrlString.contains("?")) {
            strSubstring = null;
        } else {
            int iIndexOf = strUrlString.indexOf("?");
            String strSubstring2 = strUrlString.substring(0, iIndexOf);
            strSubstring = strUrlString.substring(iIndexOf + 1);
            strUrlString = strSubstring2;
        }
        nBSTransactionState.setUrl(strUrlString);
        nBSTransactionState.setUrlParams(strSubstring);
        nBSTransactionState.setAllGetRequestParams(strSubstring);
        NBSTransactionStateUtil.setRequestMethod(nBSTransactionState, request.method());
        nBSTransactionState.setCarrier("");
        nBSTransactionState.setHttpLibType(HttpLibType.OkHttp);
        if (strUrlString != null) {
            a(nBSTransactionState, request);
        }
    }

    public static void inspectAndInstrumentResponse(NBSTransactionState nBSTransactionState, Response response) {
        NBSAndroidAgentImpl impl;
        if (response == null) {
            log.f("okhttp2.0 ->CallBack.onResponse(response) response is null ");
            return;
        }
        if (Harvest.isCdn_enabled() && (impl = NBSAgent.getImpl()) != null) {
            String cdnHeaderName = impl.m().getCdnHeaderName();
            e eVar = log;
            z81.j("cdnHeaderName  key : ", cdnHeaderName, eVar);
            if (cdnHeaderName != null && !cdnHeaderName.isEmpty()) {
                String strHeader = response.header(cdnHeaderName);
                nBSTransactionState.setCdnVendorName(strHeader == null ? "" : strHeader);
                eVar.a("cdnHeaderName  value : " + strHeader);
            }
        }
        try {
            inspectAndInstrumentResponse(nBSTransactionState, r.u().aj() ? response.header(r.t) : "", (int) response.body().contentLength(), response.code());
            if (r.u().aj()) {
                nBSTransactionState.setAppDataNew(response.header(r.w));
            }
            g.o("okhttp2  setAppDataNew  start ....");
            a(nBSTransactionState, response);
        } catch (Exception unused) {
        }
    }

    public static void inspectAndInstrument(NBSTransactionState nBSTransactionState, String str, String str2) {
        nBSTransactionState.setUrl(str);
        nBSTransactionState.setCarrier("");
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

    private static void a(NBSTransactionState nBSTransactionState, final Request request) {
        NBSTransactionStateUtil.processParamsFilter(nBSTransactionState, nBSTransactionState.getUrlParams());
        NBSTransactionStateUtil.processHeaderParam(nBSTransactionState.getUrl(), new NBSNetworkProcessHeader() { // from class: com.networkbench.agent.impl.instrumentation.okhttp2.NBSOkHttp2TransactionStateUtil.1
            @Override // com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader
            public String getFilterHeader(String str) {
                Request request2 = request;
                return (request2 == null || str == null) ? "" : request2.header(str);
            }
        }, nBSTransactionState);
    }

    @Deprecated
    public void a() {
    }
}

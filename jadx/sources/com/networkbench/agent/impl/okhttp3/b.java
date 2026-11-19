package com.networkbench.agent.impl.okhttp3;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.z81;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes2.dex */
public class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37572a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f37573b = true;

    private static void b(NBSTransactionState nBSTransactionState, Response response) {
        if (nBSTransactionState.getStatusCode() >= 400) {
            TreeMap treeMap = new TreeMap();
            Headers headers = response.g;
            String str = response.d;
            if (headers != null && headers.size() > 0) {
                StringCompanionObject.f71926a.getClass();
                Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                comparator.getClass();
                TreeSet treeSet = new TreeSet(comparator);
                int size = headers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    treeSet.add(headers.f(i2));
                }
                Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
                setUnmodifiableSet.getClass();
                for (String str2 : setUnmodifiableSet) {
                    String strA = headers.a(str2);
                    if (strA != null) {
                        treeMap.put(str2, strA);
                    }
                }
            }
            String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
            if (TextUtils.isEmpty(str)) {
                nBSTransactionState.setErrorDataInfo(exception, treeMap, "");
            } else {
                nBSTransactionState.setErrorDataInfo(str, treeMap, exception);
            }
        }
    }

    private static void c(NBSTransactionState nBSTransactionState, Response response) {
        b(nBSTransactionState, response);
        nBSTransactionState.setEndState();
        if (nBSTransactionState.getStatusCode() == 504 && nBSTransactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
            f37572a.a("error  504 ,  message:" + nBSTransactionState.getErrorData().f36389a);
            return;
        }
        ai.b(nBSTransactionState);
        com.networkbench.agent.impl.c.g.t("intercept  addTransactionAndErrorDataOk3  :  " + nBSTransactionState.toString());
    }

    @Override // com.networkbench.agent.impl.okhttp3.g
    public void a(Response response, NBSTransactionState nBSTransactionState) {
        NBSAndroidAgentImpl impl;
        if (b()) {
            if (response == null) {
                f37572a.f("okhttp3.0 ->CallBack.onResponse(response) response is null ");
                return;
            }
            Headers headers = response.g;
            String strA = "";
            if (Harvest.isCdn_enabled() && (impl = NBSAgent.getImpl()) != null) {
                String cdnHeaderName = impl.m().getCdnHeaderName();
                com.networkbench.agent.impl.c.e eVar = f37572a;
                z81.j("cdnHeaderName  key : ", cdnHeaderName, eVar);
                if (cdnHeaderName != null && !cdnHeaderName.isEmpty()) {
                    String strA2 = headers.a(cdnHeaderName);
                    if (strA2 == null) {
                        strA2 = null;
                    }
                    nBSTransactionState.setCdnVendorName(strA2 == null ? "" : strA2);
                    eVar.a("cdnHeaderName  value : " + strA2);
                }
            }
            int i2 = response.f76986e;
            ResponseBody responseBody = response.f76988h;
            long g = responseBody == null ? 0L : responseBody.getG();
            if (r.u().aj() && (strA = headers.a(r.t)) == null) {
                strA = null;
            }
            a(nBSTransactionState, strA, (int) g, i2);
            com.networkbench.agent.impl.c.g.o("okhttp3  setAppDataNew  start ....");
            if (r.u().aj()) {
                String strA3 = headers.a(r.w);
                nBSTransactionState.setAppDataNew(strA3 != null ? strA3 : null);
            }
            a(nBSTransactionState, response);
            c(nBSTransactionState, response);
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.g
    public boolean b() {
        return Harvest.isHttp_network_enabled();
    }

    public static void a(NBSTransactionState nBSTransactionState, String str, int i2, int i3) {
        if (str != null && !"".equals(str) && r.u().aj()) {
            nBSTransactionState.setAppData(str);
        }
        nBSTransactionState.setBytesReceivedContent(i2);
        nBSTransactionState.setStatusCode(i3);
    }

    @Override // com.networkbench.agent.impl.okhttp3.g
    public void a(NBSTransactionState nBSTransactionState, IOException iOException) {
        com.networkbench.agent.impl.a.a.b bVarEnd;
        if (b()) {
            com.networkbench.agent.impl.c.e eVar = f37572a;
            eVar.a("okhttp3.0 ->httpError");
            NBSTransactionStateUtil.setErrorCodeFromException(nBSTransactionState, iOException);
            if (nBSTransactionState.isComplete() || (bVarEnd = nBSTransactionState.end()) == null) {
                return;
            }
            bVarEnd.a(HttpLibType.OkHttp);
            if (nBSTransactionState.isError()) {
                String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                eVar.a("okhttp3.0 ->error message:" + exception);
                nBSTransactionState.setErrorDataInfo(exception, new HashMap(), "");
            }
            ai.a(new com.networkbench.agent.impl.d.b.c(nBSTransactionState));
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.g
    public void a(Request request, NBSTransactionState nBSTransactionState) {
        String strSubstring;
        if (b()) {
            String str = request.f76969a.f76925i;
            if (str == null || !str.contains("?")) {
                strSubstring = null;
            } else {
                int iIndexOf = str.indexOf("?");
                String strSubstring2 = str.substring(0, iIndexOf);
                strSubstring = str.substring(iIndexOf + 1);
                str = strSubstring2;
            }
            nBSTransactionState.setUrl(str);
            nBSTransactionState.setUrlParams(strSubstring);
            nBSTransactionState.setAllGetRequestParams(strSubstring);
            NBSTransactionStateUtil.setRequestMethod(nBSTransactionState, request.f76970b);
            nBSTransactionState.setCarrier("");
            nBSTransactionState.setHttpLibType(HttpLibType.OkHttp);
            if (str != null) {
                a(nBSTransactionState, request);
            }
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.g
    public boolean a() {
        return this.f37573b;
    }

    private static void a(NBSTransactionState nBSTransactionState, Response response) {
        try {
            response.getClass();
            String strA = response.g.a("Content-Type");
            if (strA == null) {
                strA = null;
            }
            nBSTransactionState.setContentType(ak.g(strA));
        } catch (Exception unused) {
            f37572a.e("NBSOkHttp2TransactionStateUtil content-type has an error ");
        }
    }

    private static void a(NBSTransactionState nBSTransactionState, final Request request) {
        NBSTransactionStateUtil.processParamsFilter(nBSTransactionState, nBSTransactionState.getUrlParams());
        NBSTransactionStateUtil.processHeaderParam(nBSTransactionState.getUrl(), new NBSNetworkProcessHeader() { // from class: com.networkbench.agent.impl.okhttp3.b.1
            @Override // com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader
            public String getFilterHeader(String str) {
                Request request2 = request;
                if (request2 == null || str == null) {
                    return "";
                }
                request2.getClass();
                return request2.f76971c.a(str);
            }
        }, nBSTransactionState);
    }
}

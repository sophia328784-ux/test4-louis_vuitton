package com.networkbench.agent.impl.instrumentation;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.j;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.k.d;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.cj;
import defpackage.o60;
import java.io.IOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLException;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSTransactionStateUtil {
    private static final e log = f.a();

    private static int chekSize(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    public static j.c getAvalidUrlParam(ConcurrentHashMap<HarvestConfiguration.UrlFilter, j.c> concurrentHashMap, String str) throws NullPointerException {
        for (Map.Entry<HarvestConfiguration.UrlFilter, j.c> entry : concurrentHashMap.entrySet()) {
            if (entry.getKey().isAvalidUrl(str)) {
                return entry.getValue();
            }
        }
        return null;
    }

    public static void inspectAndInstrumentResponse(NBSTransactionState nBSTransactionState, HttpURLConnection httpURLConnection) {
        NBSAndroidAgentImpl impl;
        try {
            if (Harvest.isHttp_network_enabled()) {
                if (Harvest.isCdn_enabled() && (impl = NBSAgent.getImpl()) != null) {
                    String cdnHeaderName = impl.m().getCdnHeaderName();
                    e eVar = log;
                    eVar.a("cdnHeaderName key : " + cdnHeaderName);
                    if (cdnHeaderName != null && !"".equals(cdnHeaderName)) {
                        nBSTransactionState.setCdnVendorName(Callback.e(cdnHeaderName, httpURLConnection) == null ? "" : Callback.e(cdnHeaderName, httpURLConnection));
                        eVar.a("cdnHeaderName value :" + Callback.e(cdnHeaderName, httpURLConnection));
                    }
                }
                String strE = r.u().aj() ? Callback.e(r.t, httpURLConnection) : "";
                if (strE != null && !"".equals(strE) && r.u().aj()) {
                    log.d("header:".concat(strE));
                    nBSTransactionState.setAppData(strE);
                }
                if (r.u().aj()) {
                    nBSTransactionState.setAppDataNew(Callback.e(r.w, httpURLConnection));
                }
                processUrlParams(nBSTransactionState, httpURLConnection);
                int statusCode = nBSTransactionState.getStatusCode();
                try {
                    statusCode = Callback.k(httpURLConnection);
                } catch (Throwable unused) {
                }
                nBSTransactionState.setStatusCode(statusCode);
            }
        } catch (Exception e2) {
            log.a("Failed to retrieve response code due to underlying (Harmony?) NPE", e2);
        }
    }

    public static boolean isSocketECONNRESET(Exception exc) {
        if (exc != null) {
            try {
                if ((exc instanceof SocketException) && exc.getMessage().contains("recvfrom failed: ECONNRESET (Connection reset by peer)")) {
                    return true;
                }
            } catch (Exception e2) {
                log.a("isSocketECONNRESET error", e2);
            }
        }
        return false;
    }

    public static void processHeaderParam(String str, NBSNetworkProcessHeader nBSNetworkProcessHeader, NBSTransactionState nBSTransactionState) {
        j.c avalidUrlParam;
        if (ak.r(str) || nBSTransactionState == null || nBSNetworkProcessHeader == null || (avalidUrlParam = getAvalidUrlParam(HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamArray(), str)) == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = avalidUrlParam.f36925c;
        if (strArr != null && strArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String filterHeader = nBSNetworkProcessHeader.getFilterHeader(strArr[i2]);
                if (!ak.r(filterHeader)) {
                    sb.append(strArr[i2]);
                    sb.append('=');
                    sb.append(filterHeader);
                    sb.append('&');
                }
            }
        }
        String string = sb.toString();
        if (!ak.r(string)) {
            string = string.substring(0, sb.length() - 1);
        }
        nBSTransactionState.setFormattedUrlParams(string);
    }

    public static String processParamsFilter(NBSTransactionState nBSTransactionState, String str) {
        String[] strArrSplit;
        String url = nBSTransactionState.getUrl();
        if (ak.r(url) || ak.r(str)) {
            nBSTransactionState.setUrlParams("");
            return "";
        }
        e eVar = log;
        eVar.a("processParam filter url:" + url + ", urlParam:" + str);
        j.c avalidUrlParam = getAvalidUrlParam(HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamArray(), url);
        if (avalidUrlParam == null) {
            eVar.a("not find url param");
            nBSTransactionState.setUrlParams("");
            return "";
        }
        String[] strArrSplit2 = str.split("&");
        HashMap map = new HashMap();
        for (String str2 : strArrSplit2) {
            if (str2 != null && (strArrSplit = str2.split("=")) != null && strArrSplit.length == 2) {
                map.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = avalidUrlParam.f36923a;
        if (strArr != null && strArr.length > 0) {
            for (String str3 : strArr) {
                String str4 = (String) map.get(str3);
                if (!ak.r(str4)) {
                    cj.C(sb, str3, "=", str4, "&");
                }
            }
        }
        String string = sb.toString();
        if (!ak.r(string)) {
            string = o60.g(1, 0, string);
        }
        log.a(" find url param : ".concat(string));
        nBSTransactionState.setUrlParams(string);
        return string;
    }

    public static void processUrlParams(NBSTransactionState nBSTransactionState, final HttpURLConnection httpURLConnection) {
        processParamsFilter(nBSTransactionState, nBSTransactionState.getUrlParams());
        processHeaderParam(nBSTransactionState.getUrl(), new NBSNetworkProcessHeader() { // from class: com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil.1
            @Override // com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader
            public String getFilterHeader(String str) {
                return httpURLConnection.getRequestProperty(str);
            }
        }, nBSTransactionState);
    }

    public static void setApmsHeader(NBSTransactionState nBSTransactionState, HttpURLConnection httpURLConnection) {
        try {
            if (r.u().b()) {
                String strAt = r.u().at();
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                for (int i2 = 0; i2 < chekSize(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    if (ak.r(httpURLConnection.getRequestProperty(string))) {
                        httpURLConnection.addRequestProperty(string, strAt);
                        nBSTransactionState.setUUid(strAt);
                        nBSTransactionState.getApmsList().put(string, strAt);
                    } else {
                        nBSTransactionState.getApmsList().put(string, httpURLConnection.getRequestProperty(string));
                    }
                }
            }
        } catch (Throwable unused) {
            g.o(" HttpURLConnection apms数据格式解析错误!!!");
        }
    }

    public static void setCrossProcessHeader(NBSTransactionState nBSTransactionState, HttpURLConnection httpURLConnection) {
        try {
            if (r.u().aj()) {
                nBSTransactionState.setRequestHeaderIdValue(httpURLConnection.getRequestProperty(r.u().f38396h));
            }
            String strAm = r.u().am();
            if (!ak.r(strAm) && r.u().aj()) {
                httpURLConnection.setRequestProperty(r.u, r.a(strAm, r.ar()));
            }
            if (r.u().aH().a()) {
                httpURLConnection.setRequestProperty(r.v, r.u().an());
            }
            setApmsHeader(nBSTransactionState, httpURLConnection);
        } catch (Exception e2) {
            log.e("NBSTransactionStateUtil  setCrossProcessHeader() has an error :" + e2);
        }
    }

    public static void setErrorCodeFromException(NBSTransactionState nBSTransactionState, Exception exc) {
        if (exc instanceof IOException) {
            if (isSocketECONNRESET(exc)) {
                o60.A(exc, nBSTransactionState, 411, 411);
                return;
            }
            String message = exc.getMessage();
            if (message != null && message.contains("ftruncate failed: ENOENT (No such file or directory)")) {
                o60.A(exc, nBSTransactionState, 517, 517);
                return;
            }
        }
        if (exc instanceof UnknownHostException) {
            o60.A(exc, nBSTransactionState, 901, 901);
            return;
        }
        if (exc instanceof SocketTimeoutException) {
            o60.A(exc, nBSTransactionState, 903, 903);
            return;
        }
        if (exc instanceof ConnectException) {
            o60.A(exc, nBSTransactionState, 902, 902);
            return;
        }
        if (exc instanceof MalformedURLException) {
            o60.A(exc, nBSTransactionState, 900, 900);
        } else if (exc instanceof SSLException) {
            o60.A(exc, nBSTransactionState, 908, 908);
        } else {
            o60.A(exc, nBSTransactionState, -1, -1);
        }
    }

    public static void setErrorCodeFromExceptionUrl(NBSTransactionState nBSTransactionState, Exception exc) {
        if (exc instanceof IOException) {
            if (isSocketECONNRESET(exc)) {
                o60.A(exc, nBSTransactionState, 411, 411);
                return;
            }
            String message = exc.getMessage();
            if (message != null && message.contains("ftruncate failed: ENOENT (No such file or directory)")) {
                o60.A(exc, nBSTransactionState, 517, 517);
                return;
            }
        }
        if (exc instanceof UnknownHostException) {
            o60.A(exc, nBSTransactionState, 901, 901);
            return;
        }
        if (exc instanceof SocketTimeoutException) {
            o60.A(exc, nBSTransactionState, 903, 903);
            return;
        }
        if (exc instanceof ConnectException) {
            o60.A(exc, nBSTransactionState, 902, 902);
        } else if (exc instanceof MalformedURLException) {
            o60.A(exc, nBSTransactionState, 900, 900);
        } else if (exc instanceof SSLException) {
            o60.A(exc, nBSTransactionState, 908, 908);
        }
    }

    public static RequestMethodType setRequestMethod(String str) {
        if (ak.r(str)) {
            return RequestMethodType.GET;
        }
        if (str.toUpperCase().equals("OPTIONS")) {
            return RequestMethodType.OPTIONS;
        }
        if (str.toUpperCase().equals("GET")) {
            return RequestMethodType.GET;
        }
        if (str.toUpperCase().equals("HEAD")) {
            return RequestMethodType.HEAD;
        }
        if (str.toUpperCase().equals("POST")) {
            return RequestMethodType.POST;
        }
        if (str.toUpperCase().equals("PUT")) {
            return RequestMethodType.PUT;
        }
        if (str.toUpperCase().equals("DELETE")) {
            return RequestMethodType.DELETE;
        }
        if (str.toUpperCase().equals("TRACE")) {
            return RequestMethodType.TRACE;
        }
        return str.toUpperCase().equals("CONNECT") ? RequestMethodType.CONNECT : RequestMethodType.GET;
    }

    public static void setSeriesHeader(HttpURLConnection httpURLConnection, NBSTransactionState nBSTransactionState) {
        String str;
        if (httpURLConnection == null) {
            return;
        }
        try {
            b seriesData = nBSTransactionState.getSeriesData();
            if (seriesData == null) {
                g.A("seriesData is null");
                return;
            }
            if (r.u().aH().c() && httpURLConnection.getRequestProperty("sw8") == null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(httpURLConnection.getURL().getHost());
                    if (httpURLConnection.getURL().getPort() != -1) {
                        str = ":" + httpURLConnection.getURL().getPort();
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    String strA = d.a(NBSAgent.getApplicationInformation().getAppName(), NBSAgent.getApplicationInformation().getAppVersion(), nBSTransactionState.getSeriesData().d, sb.toString());
                    httpURLConnection.setRequestProperty("sw8", strA);
                    nBSTransactionState.getApmsList().put("sw8", strA);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (r.u().aH().b() && httpURLConnection.getRequestProperty("traceparent") == null) {
                String requestProperty = httpURLConnection.getRequestProperty("tracestate");
                String strA2 = d.a();
                String strA3 = d.a(requestProperty, seriesData);
                httpURLConnection.setRequestProperty("traceparent", strA2);
                httpURLConnection.setRequestProperty("tracestate", strA3);
                nBSTransactionState.getApmsList().put("traceparent", strA2);
                nBSTransactionState.getApmsList().put("tracestate", strA3);
            }
        } catch (Exception unused) {
        }
    }

    public static void setUrlAndCarrier(NBSTransactionState nBSTransactionState, HttpURLConnection httpURLConnection) {
        String strSubstring;
        try {
            String string = httpURLConnection.getURL().toString();
            if (string.contains("?")) {
                int iIndexOf = string.indexOf("?");
                String strSubstring2 = string.substring(0, iIndexOf);
                strSubstring = string.substring(iIndexOf + 1);
                string = strSubstring2;
            } else {
                strSubstring = null;
            }
            nBSTransactionState.setUrl(string);
            nBSTransactionState.setUrlParams(strSubstring);
            nBSTransactionState.setAllGetRequestParams(strSubstring);
            nBSTransactionState.setAllGetRequestParams(strSubstring);
            nBSTransactionState.setCarrier("");
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    void a() {
    }

    public static void setRequestMethod(NBSTransactionState nBSTransactionState, String str) {
        nBSTransactionState.setRequestMethod(setRequestMethod(str));
    }
}

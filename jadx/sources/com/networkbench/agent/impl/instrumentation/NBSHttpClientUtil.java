package com.networkbench.agent.impl.instrumentation;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.instrumentation.httpclient.NBSContentBufferingResponseEntityImpl;
import com.networkbench.agent.impl.instrumentation.httpclient.NBSHttpRequestEntityImpl;
import com.networkbench.agent.impl.instrumentation.httpclient.NBSHttpResponseEntityImpl;
import com.networkbench.agent.impl.instrumentation.httpclient.NBSHttpResponseEntityWrapperImpl;
import com.networkbench.agent.impl.instrumentation.io.NBSCountingInputStream;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.k.d;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.o60;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class NBSHttpClientUtil {
    private static final e log = f.a();

    private static void addTransactionAndErrorData(NBSTransactionState nBSTransactionState, HttpResponse httpResponse) {
        if (Harvest.isHttp_network_enabled()) {
            try {
                if (nBSTransactionState.end() == null) {
                    log.f("HttpResponseEntityWrapperImpl transactionData is null!");
                    return;
                }
                if (nBSTransactionState.isError()) {
                    StringBuilder sb = new StringBuilder();
                    if (httpResponse != null) {
                        try {
                            if (!(httpResponse.getEntity() instanceof NBSHttpRequestEntityImpl)) {
                                httpResponse.setEntity(new NBSContentBufferingResponseEntityImpl(httpResponse.getEntity()));
                            }
                            InputStream content = httpResponse.getEntity().getContent();
                            if (content instanceof NBSCountingInputStream) {
                                sb.append(((NBSCountingInputStream) content).getBufferAsString());
                            } else {
                                log.e("Unable to wrap content stream for entity");
                            }
                        } catch (IOException e2) {
                            log.e(e2.toString());
                        } catch (IllegalStateException e3) {
                            log.e(e3.toString());
                        }
                    }
                    Map<String, Object> mapResolvingResponseHeader = resolvingResponseHeader(httpResponse);
                    mapResolvingResponseHeader.put("Content-Length", Long.valueOf(nBSTransactionState.getBytesReceived()));
                    e eVar = log;
                    eVar.d("response body content:".concat(sb.toString()));
                    String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                    eVar.d("error message:" + exception);
                    nBSTransactionState.setErrorDataInfo(sb.toString(), mapResolvingResponseHeader, exception);
                }
                ai.a(new c(nBSTransactionState));
            } catch (Exception e4) {
                log.a("addTransactionAndErrorData", e4);
            }
        }
    }

    private static int chekSize(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    private static String getContentTypeValue(HttpRequest httpRequest) {
        Header firstHeader;
        return (httpRequest == null || (firstHeader = httpRequest.getFirstHeader("Content-Type")) == null) ? "" : firstHeader.getValue();
    }

    private static HashMap<String, String> getHeader(Header[] headerArr) {
        HashMap<String, String> map = new HashMap<>();
        if (headerArr != null && headerArr.length > 0) {
            for (Header header : headerArr) {
                map.put(header.getName().toLowerCase(), header.getValue());
            }
        }
        return map;
    }

    public static void getHttpClientRequest(NBSTransactionState nBSTransactionState, HttpRequest httpRequest) {
        if (httpRequest instanceof HttpOptions) {
            nBSTransactionState.setRequestMethod(RequestMethodType.OPTIONS);
            return;
        }
        if (httpRequest instanceof HttpGet) {
            nBSTransactionState.setRequestMethod(RequestMethodType.GET);
            return;
        }
        if (httpRequest instanceof HttpHead) {
            nBSTransactionState.setRequestMethod(RequestMethodType.HEAD);
            return;
        }
        if (httpRequest instanceof HttpPost) {
            nBSTransactionState.setRequestMethod(RequestMethodType.POST);
            return;
        }
        if (httpRequest instanceof HttpPut) {
            nBSTransactionState.setRequestMethod(RequestMethodType.PUT);
            return;
        }
        if (httpRequest instanceof HttpDelete) {
            nBSTransactionState.setRequestMethod(RequestMethodType.DELETE);
        } else if (httpRequest instanceof HttpTrace) {
            nBSTransactionState.setRequestMethod(RequestMethodType.TRACE);
        } else {
            nBSTransactionState.setRequestMethod(RequestMethodType.GET);
        }
    }

    private static String getRequestBody(HttpEntity httpEntity) {
        if (httpEntity == null) {
            return "";
        }
        try {
            return EntityUtils.toString(httpEntity);
        } catch (Throwable th) {
            log.a("error get request entity", th);
            return "";
        }
    }

    public static HttpResponse inspectAndInstrument(NBSTransactionState nBSTransactionState, HttpResponse httpResponse) {
        NBSAndroidAgentImpl impl;
        Header[] headers;
        try {
            nBSTransactionState.responseHeaderParam = getHeader(httpResponse.getAllHeaders());
            nBSTransactionState.setStatusCode(httpResponse.getStatusLine().getStatusCode());
            String value = "";
            if (r.u().aj()) {
                Header[] headers2 = httpResponse.getHeaders(r.t);
                e eVar = log;
                eVar.d("get X-Tingyun-Tx-Data");
                if (headers2 != null && headers2.length > 0 && !"".equals(headers2[0].getValue())) {
                    eVar.d("header:" + headers2[0].getValue());
                    nBSTransactionState.setAppData(headers2[0].getValue());
                }
            }
            try {
                if (r.u().aj()) {
                    Header[] headers3 = httpResponse.getHeaders(r.w);
                    g.o("httpclient  setAppDataNew  start ....");
                    if (headers3 == null || headers3.length <= 0) {
                        nBSTransactionState.setAppDataNew(null);
                    } else {
                        nBSTransactionState.setAppDataNew(headers3[0].getValue());
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (Harvest.isCdn_enabled() && (impl = NBSAgent.getImpl()) != null && (headers = httpResponse.getHeaders(impl.m().getCdnHeaderName())) != null && headers.length > 0) {
                e eVar2 = log;
                eVar2.a("cdnHeaderName key : " + headers[0]);
                eVar2.a("cdnHeaderName value : " + headers[0].getValue());
                if (headers[0].getValue() != null) {
                    value = headers[0].getValue();
                }
                nBSTransactionState.setCdnVendorName(value);
            }
            Header[] headers4 = httpResponse.getHeaders("Content-Type");
            if (headers4 != null && headers4.length > 0) {
                nBSTransactionState.setContentType(ak.g(headers4[0].getValue()));
            }
            Header[] headers5 = httpResponse.getHeaders("Content-Length");
            if (headers5 != null && headers5.length > 0) {
                try {
                    HttpEntity entity = httpResponse.getEntity();
                    if (entity == null) {
                        httpResponse.setEntity(null);
                        addTransactionAndErrorData(nBSTransactionState, httpResponse);
                    } else if (entity instanceof HttpEntityWrapper) {
                        httpResponse.setEntity(new NBSHttpResponseEntityWrapperImpl(httpResponse, nBSTransactionState, -1L));
                    } else {
                        httpResponse.setEntity(new NBSHttpResponseEntityImpl(httpResponse, nBSTransactionState, -1L));
                    }
                } catch (NumberFormatException e2) {
                    log.f("Failed to parse content length: " + e2.toString());
                }
            } else if (httpResponse.getEntity() == null) {
                nBSTransactionState.setBytesReceived(0L);
                addTransactionAndErrorData(nBSTransactionState, null);
            } else if (httpResponse.getEntity() instanceof HttpEntityWrapper) {
                httpResponse.setEntity(new NBSHttpResponseEntityWrapperImpl(httpResponse, nBSTransactionState, -1L));
            } else {
                httpResponse.setEntity(new NBSHttpResponseEntityImpl(httpResponse, nBSTransactionState, -1L));
            }
        } catch (Throwable th2) {
            log.e(" java.lang.NoSuchMethodError: org.apache.http.HttpResponse.getHeaders" + th2);
        }
        return httpResponse;
    }

    private static void processParamsAndHeader(NBSTransactionState nBSTransactionState, final HttpRequest httpRequest, String str) {
        getHttpClientRequest(nBSTransactionState, httpRequest);
        NBSTransactionStateUtil.processParamsFilter(nBSTransactionState, nBSTransactionState.getUrlParams());
        NBSTransactionStateUtil.processHeaderParam(nBSTransactionState.getUrl(), new NBSNetworkProcessHeader() { // from class: com.networkbench.agent.impl.instrumentation.NBSHttpClientUtil.1
            @Override // com.networkbench.agent.impl.instrumentation.NBSNetworkProcessHeader
            public String getFilterHeader(String str2) {
                Header firstHeader = httpRequest.getFirstHeader(str2);
                return firstHeader != null ? firstHeader.getValue() : "";
            }
        }, nBSTransactionState);
    }

    public static Map<String, Object> resolvingResponseHeader(HttpResponse httpResponse) {
        Header[] allHeaders;
        TreeMap treeMap = new TreeMap();
        if (httpResponse != null && (allHeaders = httpResponse.getAllHeaders()) != null) {
            for (Header header : allHeaders) {
                treeMap.put(header.getName(), header.getValue());
            }
        }
        return treeMap;
    }

    private static void setApmsHeader(HttpRequest httpRequest, NBSTransactionState nBSTransactionState) {
        try {
            if (r.u().b()) {
                String strAt = r.u().at();
                g.o("HttpRequest setCrossProcessHeader uuid :" + strAt);
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                for (int i2 = 0; i2 < chekSize(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    g.o("HttpRequest setCrossProcessHeader apms  :" + string);
                    Header firstHeader = httpRequest.getFirstHeader(string);
                    if (firstHeader == null) {
                        httpRequest.setHeader(string, strAt);
                        nBSTransactionState.setUUid(strAt);
                    } else {
                        nBSTransactionState.getApmsList().put(string, firstHeader.getValue());
                        g.o("okhttp2 setCrossProcessHeader  apmsList  :" + string);
                    }
                }
            }
        } catch (Throwable unused) {
            g.o(" HttpRequest apms数据格式解析错误!!!");
        }
    }

    public static void setErrorCodeFromException(NBSTransactionState nBSTransactionState, Exception exc) {
        if (exc instanceof IOException) {
            if (NBSTransactionStateUtil.isSocketECONNRESET(exc)) {
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
        if ((exc instanceof SocketTimeoutException) || (exc instanceof ConnectTimeoutException)) {
            o60.A(exc, nBSTransactionState, 903, 903);
            return;
        }
        if (exc instanceof ConnectException) {
            o60.A(exc, nBSTransactionState, 902, 902);
            return;
        }
        if (exc instanceof MalformedURLException) {
            o60.A(exc, nBSTransactionState, 900, 900);
            return;
        }
        if (exc instanceof SSLException) {
            o60.A(exc, nBSTransactionState, 908, 908);
            return;
        }
        if (exc instanceof HttpResponseException) {
            nBSTransactionState.setStatusCode(((HttpResponseException) exc).getStatusCode());
            return;
        }
        if (exc instanceof ClientProtocolException) {
            o60.A(exc, nBSTransactionState, 904, 904);
        } else if (exc instanceof AuthenticationException) {
            o60.A(exc, nBSTransactionState, 907, 907);
        } else {
            o60.A(exc, nBSTransactionState, -1, -1);
        }
    }

    public static HttpRequest setHttpClientCrossProcessHeader(HttpRequest httpRequest, NBSTransactionState nBSTransactionState) {
        try {
            if (Harvest.isHttp_network_enabled() && httpRequest != null) {
                try {
                    setSeriesHeaderOfHttpClient(httpRequest, nBSTransactionState);
                    Header firstHeader = httpRequest.getFirstHeader(r.u().f38396h);
                    if (firstHeader != null && r.u().aj()) {
                        nBSTransactionState.setRequestHeaderIdValue(firstHeader.getValue());
                    }
                    String strAm = r.u().am();
                    if (!TextUtils.isEmpty(strAm) && r.u().aj()) {
                        httpRequest.setHeader(r.u, r.a(strAm, r.ar()));
                    }
                    if (r.u().aH().a()) {
                        httpRequest.setHeader(r.v, r.u().an());
                    }
                    setApmsHeader(httpRequest, nBSTransactionState);
                } catch (Throwable th) {
                    log.e("NBSTransactionStateUtil setHttpClientCrossProcessHeader has an error " + th);
                }
            }
        } catch (Exception e2) {
            log.e("NBSTransactionStateUtil set header has an error " + e2);
        }
        return httpRequest;
    }

    private static void setSeriesHeaderOfHttpClient(HttpRequest httpRequest, NBSTransactionState nBSTransactionState) {
        String value;
        if (httpRequest == null) {
            return;
        }
        try {
            b seriesData = nBSTransactionState.getSeriesData();
            if (seriesData == null) {
                return;
            }
            if (r.u().aH().c() && httpRequest.getHeaders("sw8").length == 0) {
                String uri = httpRequest.getRequestLine().getUri();
                if (uri.contains("?")) {
                    uri = uri.substring(0, uri.indexOf("?"));
                }
                String strA = d.a(NBSAgent.getApplicationInformation().getAppName(), NBSAgent.getApplicationInformation().getAppVersion(), nBSTransactionState.getSeriesData().d, uri);
                httpRequest.setHeader("sw8", strA);
                nBSTransactionState.getApmsList().put("sw8", strA);
            }
            if (r.u().aH().b()) {
                Header[] headers = httpRequest.getHeaders("traceparent");
                Header[] headers2 = httpRequest.getHeaders("tracestate");
                if (headers == null || headers.length == 0) {
                    value = headers2.length > 0 ? headers2[0].getValue() : "";
                    String strA2 = d.a();
                    String strA3 = d.a(value, seriesData);
                    httpRequest.setHeader("traceparent", strA2);
                    httpRequest.setHeader("tracestate", strA3);
                    nBSTransactionState.getApmsList().put("traceparent", strA2);
                    nBSTransactionState.getApmsList().put("tracestate", strA3);
                    return;
                }
                try {
                    String value2 = headers[0].getValue();
                    value = headers2.length > 0 ? headers2[0].getValue() : "";
                    nBSTransactionState.getApmsList().put("traceparent", value2);
                    nBSTransactionState.getApmsList().put("tracestate", value);
                } catch (Throwable th) {
                    g.u("NBSTransactionStateUtil  setSeriesHeader() has an error :" + th.getMessage());
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void wrapRequestEntity(NBSTransactionState nBSTransactionState, HttpRequest httpRequest) {
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            HttpEntityEnclosingRequest httpEntityEnclosingRequest = (HttpEntityEnclosingRequest) httpRequest;
            if (httpEntityEnclosingRequest.getEntity() != null) {
                httpEntityEnclosingRequest.setEntity(new NBSHttpRequestEntityImpl(httpEntityEnclosingRequest.getEntity(), nBSTransactionState));
            }
        }
    }

    public static HttpRequest inspectAndInstrument(NBSTransactionState nBSTransactionState, HttpHost httpHost, HttpRequest httpRequest) {
        String strSubstring;
        if (httpRequest == null) {
            return httpRequest;
        }
        RequestLine requestLine = httpRequest.getRequestLine();
        String str = null;
        if (requestLine != null) {
            String uri = requestLine.getUri();
            if (uri.contains("?")) {
                int iIndexOf = uri.indexOf("?");
                String strSubstring2 = uri.substring(0, iIndexOf);
                strSubstring = uri.substring(iIndexOf + 1);
                str = strSubstring2;
            } else {
                str = uri;
                strSubstring = null;
            }
        } else {
            strSubstring = null;
        }
        nBSTransactionState.setUrl(str);
        nBSTransactionState.setUrlParams(strSubstring);
        nBSTransactionState.setAllGetRequestParams(strSubstring);
        nBSTransactionState.setHttpLibType(HttpLibType.HttpClient);
        processParamsAndHeader(nBSTransactionState, httpRequest, strSubstring);
        nBSTransactionState.setCarrier("");
        nBSTransactionState.requestHeaderParam = getHeader(httpRequest.getAllHeaders());
        wrapRequestEntity(nBSTransactionState, httpRequest);
        return httpRequest;
    }

    public static HttpUriRequest inspectAndInstrument(NBSTransactionState nBSTransactionState, HttpUriRequest httpUriRequest) {
        String string;
        if (httpUriRequest == null) {
            return httpUriRequest;
        }
        RequestLine requestLine = httpUriRequest.getRequestLine();
        String strSubstring = null;
        if (requestLine != null) {
            string = requestLine.getUri();
            if (string.contains("?")) {
                int iIndexOf = string.indexOf("?");
                String strSubstring2 = string.substring(0, iIndexOf);
                strSubstring = string.substring(iIndexOf + 1);
                string = strSubstring2;
            }
        } else {
            string = httpUriRequest.getURI().toString();
        }
        nBSTransactionState.setUrl(string);
        nBSTransactionState.setCarrier("");
        nBSTransactionState.setUrlParams(strSubstring);
        nBSTransactionState.setAllGetRequestParams(strSubstring);
        nBSTransactionState.setHttpLibType(HttpLibType.HttpClient);
        nBSTransactionState.requestHeaderParam = getHeader(httpUriRequest.getAllHeaders());
        processParamsAndHeader(nBSTransactionState, httpUriRequest, strSubstring);
        wrapRequestEntity(nBSTransactionState, httpUriRequest);
        return httpUriRequest;
    }
}

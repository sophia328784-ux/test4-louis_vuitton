package com.networkbench.agent.impl.instrumentation;

import android.text.TextUtils;
import com.dynatrace.android.callback.HttpClientCallback;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.httpclient.NBSResponseHandlerImpl;
import com.networkbench.agent.impl.socket.r;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.v;
import defpackage.d21;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
public class NBSInstrumentationHttpClient {
    private static final e log = f.a();

    private static HttpRequest dispatchHttpClientRequest(HttpRequest httpRequest, NBSTransactionState nBSTransactionState) {
        String host;
        String uri = httpRequest.getRequestLine().getUri();
        try {
            host = new URL(uri).getHost();
        } catch (MalformedURLException e2) {
            log.e("dispatchHttpClientRequest error!" + e2.getMessage() + uri);
            host = null;
        }
        if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(host)) {
            try {
                if (!r.b(host)) {
                    r.b(host, v.a(host));
                }
                nBSTransactionState.setDnsElapse(r.c(host));
            } catch (Throwable unused) {
                log.e("dispatchHttpClientRequest error ! getByName the hostName is " + host);
                return httpRequest;
            }
        }
        return httpRequest;
    }

    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return (T) HttpClientCallback.k(responseHandler, HttpClientCallback.e(httpClient, httpHost, httpRequest, httpContext));
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpRequest = dispatchHttpClientRequest(httpRequest, nBSTransactionState);
        } catch (Exception e2) {
            log.e("error set transaction e:" + e2.getMessage());
        }
        try {
            return (T) HttpClientCallback.k(processRespInfo(responseHandler, nBSTransactionState), HttpClientCallback.e(httpClient, httpHost, processRequestInfo(httpHost, NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpRequest, nBSTransactionState), nBSTransactionState), httpContext));
        } catch (ClientProtocolException e3) {
            httpClientError(nBSTransactionState, e3);
            throw e3;
        } catch (IOException e4) {
            httpClientError(nBSTransactionState, e4);
            throw e4;
        }
    }

    private static void httpClientError(NBSTransactionState nBSTransactionState, Exception exc) {
        try {
            if (Harvest.isHttp_network_enabled() && !nBSTransactionState.isComplete()) {
                NBSHttpClientUtil.setErrorCodeFromException(nBSTransactionState, exc);
                if (nBSTransactionState.end() == null) {
                    log.e("transactionData is null");
                    return;
                }
                if (nBSTransactionState.isError()) {
                    String exception = nBSTransactionState.getException() != null ? nBSTransactionState.getException() : "";
                    log.a("error message:" + exception);
                    nBSTransactionState.setErrorDataInfo(exception, new HashMap(), "");
                }
                ai.a(new c(nBSTransactionState));
            }
        } catch (Exception e2) {
            log.e("error httpClientError e:" + e2.getMessage());
        }
    }

    public static DefaultHttpClient initDefaultHttpClient() {
        return new DefaultHttpClient();
    }

    private static HttpUriRequest processRequestInfo(HttpUriRequest httpUriRequest, NBSTransactionState nBSTransactionState) {
        return NBSHttpClientUtil.inspectAndInstrument(nBSTransactionState, httpUriRequest);
    }

    private static HttpResponse processRespInfo(HttpResponse httpResponse, NBSTransactionState nBSTransactionState) {
        return NBSHttpClientUtil.inspectAndInstrument(nBSTransactionState, httpResponse);
    }

    private static HttpRequest processRequestInfo(HttpHost httpHost, HttpRequest httpRequest, NBSTransactionState nBSTransactionState) {
        return NBSHttpClientUtil.inspectAndInstrument(nBSTransactionState, httpHost, httpRequest);
    }

    private static <T> ResponseHandler<? extends T> processRespInfo(ResponseHandler<? extends T> responseHandler, NBSTransactionState nBSTransactionState) {
        return NBSResponseHandlerImpl.wrap(responseHandler, nBSTransactionState);
    }

    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return HttpClientCallback.e(httpClient, httpHost, httpRequest, httpContext);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpRequest = dispatchHttpClientRequest(httpRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return processRespInfo(HttpClientCallback.e(httpClient, httpHost, processRequestInfo(httpHost, NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpRequest, nBSTransactionState), nBSTransactionState), httpContext), nBSTransactionState);
        } catch (IOException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        }
    }

    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return (T) HttpClientCallback.b(httpClient, httpHost, httpRequest, responseHandler);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpRequest = dispatchHttpClientRequest(httpRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return (T) HttpClientCallback.b(httpClient, httpHost, processRequestInfo(httpHost, NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpRequest, nBSTransactionState), nBSTransactionState), processRespInfo(responseHandler, nBSTransactionState));
        } catch (ClientProtocolException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        } catch (IOException e3) {
            httpClientError(nBSTransactionState, e3);
            throw e3;
        }
    }

    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return HttpClientCallback.d(httpClient, httpHost, httpRequest);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpRequest = dispatchHttpClientRequest(httpRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return processRespInfo(HttpClientCallback.d(httpClient, httpHost, processRequestInfo(httpHost, NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpRequest, nBSTransactionState), nBSTransactionState)), nBSTransactionState);
        } catch (IOException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        }
    }

    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return HttpClientCallback.g(httpClient, httpUriRequest, httpContext);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpUriRequest = (HttpUriRequest) dispatchHttpClientRequest(httpUriRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return processRespInfo(HttpClientCallback.g(httpClient, processRequestInfo((HttpUriRequest) NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpUriRequest, nBSTransactionState), nBSTransactionState), httpContext), nBSTransactionState);
        } catch (IOException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        }
    }

    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return (T) HttpClientCallback.k(responseHandler, HttpClientCallback.g(httpClient, httpUriRequest, httpContext));
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpUriRequest = (HttpUriRequest) dispatchHttpClientRequest(httpUriRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return (T) HttpClientCallback.k(processRespInfo(responseHandler, nBSTransactionState), HttpClientCallback.g(httpClient, processRequestInfo((HttpUriRequest) NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpUriRequest, nBSTransactionState), nBSTransactionState), httpContext));
        } catch (ClientProtocolException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        } catch (IOException e3) {
            httpClientError(nBSTransactionState, e3);
            throw e3;
        }
    }

    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return (T) HttpClientCallback.c(httpClient, httpUriRequest, responseHandler);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpUriRequest = (HttpUriRequest) dispatchHttpClientRequest(httpUriRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return (T) HttpClientCallback.c(httpClient, processRequestInfo((HttpUriRequest) NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpUriRequest, nBSTransactionState), nBSTransactionState), processRespInfo(responseHandler, nBSTransactionState));
        } catch (ClientProtocolException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        } catch (IOException e3) {
            httpClientError(nBSTransactionState, e3);
            throw e3;
        }
    }

    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        if (!Harvest.isHttp_network_enabled()) {
            return HttpClientCallback.f(httpClient, httpUriRequest);
        }
        g.l("httpClient execute gather  begin !!");
        NBSTransactionState nBSTransactionState = new NBSTransactionState();
        try {
            httpUriRequest = (HttpUriRequest) dispatchHttpClientRequest(httpUriRequest, nBSTransactionState);
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error set transaction e:"), log);
        }
        try {
            return processRespInfo(HttpClientCallback.f(httpClient, processRequestInfo((HttpUriRequest) NBSHttpClientUtil.setHttpClientCrossProcessHeader(httpUriRequest, nBSTransactionState), nBSTransactionState)), nBSTransactionState);
        } catch (IOException e2) {
            httpClientError(nBSTransactionState, e2);
            throw e2;
        }
    }
}

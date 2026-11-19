package com.dynatrace.android.callback;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import java.io.IOException;
import java.lang.reflect.UndeclaredThrowableException;
import java.net.URI;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HttpClientCallback {
    static {
        boolean z = Global.f27307a;
    }

    public static HttpHost a(HttpUriRequest httpUriRequest) {
        URI uri;
        if (httpUriRequest == null || (uri = httpUriRequest.getURI()) == null || !uri.isAbsolute()) {
            return null;
        }
        return new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
    }

    public static Object b(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler responseHandler) {
        return k(responseHandler, e(httpClient, httpHost, httpRequest, new BasicHttpContext()));
    }

    public static Object c(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler responseHandler) {
        return k(responseHandler, g(httpClient, httpUriRequest, new BasicHttpContext()));
    }

    public static HttpResponse d(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        return e(httpClient, httpHost, httpRequest, new BasicHttpContext());
    }

    public static HttpResponse e(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws Exception {
        if (!Global.f27308b.get()) {
            return httpClient.execute(httpHost, httpRequest, httpContext);
        }
        if (httpContext == null) {
            httpContext = new BasicHttpContext();
        }
        UriReqStateParms uriReqStateParms = new UriReqStateParms(httpHost, httpRequest, httpContext);
        try {
            j(uriReqStateParms);
            HttpResponse httpResponseExecute = httpClient.execute(httpHost, httpRequest, httpContext);
            h(httpResponseExecute, uriReqStateParms);
            uriReqStateParms.f27616c = CbConstants$WrStates.POST_EXEC_OK;
            j(uriReqStateParms);
            return httpResponseExecute;
        } catch (Exception e2) {
            uriReqStateParms.d = 0;
            uriReqStateParms.f27617e = e2.toString();
            uriReqStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
            j(uriReqStateParms);
            throw e2;
        }
    }

    public static HttpResponse f(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        return g(httpClient, httpUriRequest, new BasicHttpContext());
    }

    public static HttpResponse g(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws Exception {
        if (!Global.f27308b.get()) {
            return httpClient.execute(httpUriRequest, httpContext);
        }
        if (httpContext == null) {
            httpContext = new BasicHttpContext();
        }
        UriReqStateParms uriReqStateParms = new UriReqStateParms(a(httpUriRequest), httpUriRequest, httpContext);
        try {
            j(uriReqStateParms);
            HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest, httpContext);
            h(httpResponseExecute, uriReqStateParms);
            uriReqStateParms.f27616c = CbConstants$WrStates.POST_EXEC_OK;
            j(uriReqStateParms);
            return httpResponseExecute;
        } catch (Exception e2) {
            uriReqStateParms.d = 0;
            uriReqStateParms.f27617e = e2.toString();
            uriReqStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
            j(uriReqStateParms);
            throw e2;
        }
    }

    public static void h(HttpResponse httpResponse, UriReqStateParms uriReqStateParms) {
        int statusCode;
        if (httpResponse != null) {
            int i2 = 0;
            try {
                StatusLine statusLine = httpResponse.getStatusLine();
                if (statusLine != null) {
                    statusCode = statusLine.getStatusCode();
                    try {
                        uriReqStateParms.f27617e = statusLine.getReasonPhrase();
                    } catch (Exception e2) {
                        e = e2;
                        i2 = statusCode;
                        if (uriReqStateParms.f27617e == null) {
                            uriReqStateParms.f27617e = e.getMessage();
                        }
                        statusCode = i2;
                    }
                } else {
                    statusCode = 0;
                }
                try {
                    uriReqStateParms.g = UriReqStateParms.i(uriReqStateParms.p);
                    uriReqStateParms.f27619h = UriReqStateParms.j(httpResponse);
                } catch (Exception e3) {
                    if (Global.f27307a) {
                        e3.getMessage();
                        Utility.g();
                    }
                    uriReqStateParms.g = -1L;
                    uriReqStateParms.f27619h = -1L;
                }
                Header[] headers = httpResponse.getHeaders("Server-Timing");
                ArrayList arrayList = new ArrayList();
                int length = headers.length;
                while (i2 < length) {
                    arrayList.add(headers[i2].getValue());
                    i2++;
                }
                uriReqStateParms.a(arrayList);
            } catch (Exception e4) {
                e = e4;
            }
            uriReqStateParms.d = statusCode;
        }
    }

    public static void i(HttpRequestBase httpRequestBase) {
        if (Global.f27308b.get()) {
            WeakHashMap weakHashMap = HttpClientCallbackCore.f27606a;
            HttpClientCallbackCore.a(httpRequestBase, a(httpRequestBase));
        }
    }

    public static void j(UriReqStateParms uriReqStateParms) {
        try {
            HttpClientCallbackCore.b(uriReqStateParms);
        } catch (Exception unused) {
            boolean z = Global.f27307a;
        }
    }

    public static Object k(ResponseHandler responseHandler, HttpResponse httpResponse) throws IOException {
        try {
            Object objHandleResponse = responseHandler.handleResponse(httpResponse);
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                entity.consumeContent();
            }
            return objHandleResponse;
        } catch (Throwable th) {
            HttpEntity entity2 = httpResponse.getEntity();
            if (entity2 != null) {
                try {
                    entity2.consumeContent();
                } catch (Throwable unused) {
                }
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            throw new UndeclaredThrowableException(th);
        }
    }
}

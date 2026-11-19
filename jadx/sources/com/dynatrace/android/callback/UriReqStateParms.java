package com.dynatrace.android.callback;

import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes2.dex */
class UriReqStateParms extends WebReqStateParms {
    public final HttpUriRequest m;
    public final HttpRequest n;
    public final HttpHost o;
    public final HttpContext p;
    public final CbURIDesc q;

    static {
        boolean z = Global.f27307a;
    }

    public UriReqStateParms(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        super(CbConstants$WrMethod.execute, CbConstants$WrStates.PRE_EXEC);
        this.o = httpHost;
        this.n = httpRequest;
        this.p = httpContext;
        this.q = CbURIDesc.a(httpRequest, httpHost);
        if (httpRequest == null || !(httpRequest instanceof HttpUriRequest)) {
            return;
        }
        this.m = (HttpUriRequest) httpRequest;
    }

    public static long i(HttpContext httpContext) {
        RequestWrapper requestWrapper = (RequestWrapper) httpContext.getAttribute("http.request");
        long j2 = 0;
        int length = 2;
        for (Header header : requestWrapper.getAllHeaders()) {
            length += header.toString().length() + 2;
            if ("Content-Length".equalsIgnoreCase(header.getName())) {
                j2 = Long.parseLong(header.getValue());
            }
        }
        return ((long) (requestWrapper.getRequestLine().toString().length() + 2 + length)) + j2;
    }

    public static long j(HttpResponse httpResponse) {
        int length = httpResponse.getStatusLine().toString().length() + 2;
        long j2 = 0;
        boolean z = true;
        int length2 = 2;
        for (Header header : httpResponse.getAllHeaders()) {
            length2 += header.toString().length() + 2;
            if (z && "Content-Length".equals(header.getName())) {
                try {
                    j2 = Long.parseLong(header.getValue());
                } catch (NumberFormatException e2) {
                    if (Global.f27307a) {
                        Utility.n(e2.getMessage());
                    }
                }
                z = false;
            }
        }
        return ((long) (length + length2)) + j2;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String b() {
        HttpRequest httpRequest = this.n;
        return httpRequest != null ? httpRequest.getClass().getSimpleName() : "NA";
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String c() {
        String str = this.f27614a;
        if (str != null) {
            return str;
        }
        String str2 = this.q.f27594b;
        this.f27614a = str2;
        return str2;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String d() {
        return this.q.f27593a;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final String e() {
        RequestLine requestLine;
        HttpUriRequest httpUriRequest = this.m;
        if (httpUriRequest != null) {
            return httpUriRequest.getMethod();
        }
        HttpRequest httpRequest = this.n;
        return (!(httpRequest instanceof HttpEntityEnclosingRequest) || (requestLine = httpRequest.getRequestLine()) == null) ? "NA" : requestLine.getMethod();
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final URL f() {
        URI uri = this.q.f27595c;
        if (uri != null) {
            try {
                return uri.toURL();
            } catch (MalformedURLException e2) {
                if (Global.f27307a) {
                    e2.toString();
                    Utility.g();
                }
            } catch (Exception e3) {
                if (Global.f27307a) {
                    e3.toString();
                    Utility.g();
                }
                return null;
            }
        }
        return null;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final WebContext g() {
        return null;
    }

    @Override // com.dynatrace.android.callback.WebReqStateParms
    public final boolean h() {
        return false;
    }
}

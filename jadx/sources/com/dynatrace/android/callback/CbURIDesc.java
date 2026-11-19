package com.dynatrace.android.callback;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import defpackage.n00;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicHttpRequest;

/* JADX INFO: loaded from: classes2.dex */
class CbURIDesc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f27594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public URI f27595c;

    static {
        boolean z = Global.f27307a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    public static CbURIDesc a(HttpRequest httpRequest, HttpHost httpHost) {
        RequestLine requestLine;
        String uri;
        int iIndexOf;
        CbURIDesc cbURIDesc = new CbURIDesc();
        String strSubstring = null;
        String string = httpHost == null ? null : httpHost.toString();
        if (httpRequest instanceof HttpUriRequest) {
            URI uri2 = ((HttpUriRequest) httpRequest).getURI();
            if (uri2 != null) {
                if (uri2.getRawPath() == null) {
                    if (uri2.getHost() != null) {
                        strSubstring = "/";
                    }
                } else if (uri2.getRawPath().startsWith("/")) {
                    strSubstring = uri2.getRawPath();
                    if (uri2.getQuery() != null) {
                        StringBuilder sbU = n00.u(strSubstring, "?");
                        sbU.append(uri2.getRawQuery());
                        strSubstring = sbU.toString();
                    }
                    if (uri2.getFragment() != null) {
                        StringBuilder sbU2 = n00.u(strSubstring, "#");
                        sbU2.append(uri2.getRawFragment());
                        strSubstring = sbU2.toString();
                    }
                } else if (uri2.getRawPath().length() == 0) {
                    strSubstring = "/";
                }
            }
        } else if (((httpRequest instanceof HttpEntityEnclosingRequest) || (httpRequest instanceof BasicHttpRequest)) && (requestLine = httpRequest.getRequestLine()) != null && (uri = requestLine.getUri()) != null) {
            if (uri.startsWith("/")) {
                strSubstring = uri;
            } else {
                int iIndexOf2 = uri.indexOf("://");
                if (iIndexOf2 >= 0 && (iIndexOf = uri.indexOf("/", iIndexOf2 + 3)) >= 0) {
                    strSubstring = uri.substring(iIndexOf);
                }
            }
        }
        if (string != null && strSubstring != null) {
            try {
                cbURIDesc.f27595c = new URI(string.concat(strSubstring));
                cbURIDesc.f27593a = httpHost.getHostName();
                cbURIDesc.f27594b = Utility.l(cbURIDesc.f27595c.toString());
                return cbURIDesc;
            } catch (URISyntaxException e2) {
                if (Global.f27307a) {
                    e2.toString();
                    Utility.g();
                }
            }
        }
        if (string == null) {
            cbURIDesc.f27593a = "-";
            string = "-";
        } else {
            cbURIDesc.f27593a = httpHost.getHostName();
        }
        if (strSubstring == null) {
            strSubstring = "-";
        }
        cbURIDesc.f27594b = Utility.l(string + " " + strSubstring);
        return cbURIDesc;
    }
}

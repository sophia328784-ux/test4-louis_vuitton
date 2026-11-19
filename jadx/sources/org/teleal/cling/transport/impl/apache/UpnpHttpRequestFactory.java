package org.teleal.cling.transport.impl.apache;

import defpackage.md;
import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;
import org.apache.http.impl.DefaultHttpRequestFactory;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.message.BasicHttpRequest;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpHttpRequestFactory extends DefaultHttpRequestFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f78638a = {"SUBSCRIBE", "UNSUBSCRIBE"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f78639b = {"NOTIFY"};

    @Override // org.apache.http.impl.DefaultHttpRequestFactory, org.apache.http.HttpRequestFactory
    public final HttpRequest newHttpRequest(String str, String str2) {
        String[] strArr = f78638a;
        for (int i2 = 0; i2 < 2; i2++) {
            if (strArr[i2].equalsIgnoreCase(str)) {
                return new BasicHttpRequest(str, str2);
            }
        }
        return f78639b[0].equalsIgnoreCase(str) ? new BasicHttpEntityEnclosingRequest(str, str2) : super.newHttpRequest(str, str2);
    }

    @Override // org.apache.http.impl.DefaultHttpRequestFactory, org.apache.http.HttpRequestFactory
    public final HttpRequest newHttpRequest(RequestLine requestLine) {
        if (requestLine != null) {
            return newHttpRequest(requestLine.getMethod(), requestLine.getUri());
        }
        md.n("Request line may not be null");
        return null;
    }
}

package org.teleal.cling.model.message;

import defpackage.lc0;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpRequest extends UpnpOperation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Method f78415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URI f78416c;

    public enum Method {
        GET("GET"),
        POST("POST"),
        NOTIFY("NOTIFY"),
        MSEARCH("M-SEARCH"),
        SUBSCRIBE("SUBSCRIBE"),
        UNSUBSCRIBE("UNSUBSCRIBE"),
        UNKNOWN("UNKNOWN");

        private static Map<String, Method> byName;
        private String httpName;

        /* JADX INFO: renamed from: org.teleal.cling.model.message.UpnpRequest$Method$1, reason: invalid class name */
        public class AnonymousClass1 extends HashMap<String, Method> {
        }

        static {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            for (Method method : values()) {
                anonymousClass1.put(method.httpName, method);
            }
            byName = anonymousClass1;
        }

        Method(String str) {
            this.httpName = str;
        }

        public static Method a(String str) {
            Method method;
            return (str == null || (method = byName.get(str.toUpperCase())) == null) ? UNKNOWN : method;
        }

        public final String b() {
            return this.httpName;
        }
    }

    public UpnpRequest(Method method, URL url) {
        this.f78415b = method;
        if (url != null) {
            try {
                this.f78416c = url.toURI();
            } catch (URISyntaxException e2) {
                lc0.u(e2);
                throw null;
            }
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f78415b.b());
        URI uri = this.f78416c;
        if (uri != null) {
            str = " " + uri;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public UpnpRequest(Method method, URI uri) {
        this.f78415b = method;
        this.f78416c = uri;
    }

    public UpnpRequest(Method method) {
        this.f78415b = method;
    }
}

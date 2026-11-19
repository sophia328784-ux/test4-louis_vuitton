package com.dynatrace.android.agent;

import java.net.URI;

/* JADX INFO: loaded from: classes2.dex */
public final class WebRequestUtils {

    public static class FormattedUrl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27318a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27319b;

        public FormattedUrl(String str, String str2) {
            this.f27318a = str;
            this.f27319b = str2;
        }
    }

    public static FormattedUrl a(String str) {
        try {
            URI uri = new URI(str);
            URI uri2 = new URI(uri.getScheme(), null, uri.getHost(), uri.getPort(), uri.getPath(), uri.getQuery(), uri.getFragment());
            return new FormattedUrl(uri2.toString(), uri2.toString());
        } catch (Exception unused) {
            return new FormattedUrl(null, str);
        }
    }
}

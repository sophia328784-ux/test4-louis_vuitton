package com.google.android.gms.internal.gtm;

import android.net.Uri;
import com.batch.android.s.b;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbn {
    public static zzbn d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile String f29988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f29989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f29990c;

    public static zzbn a() {
        zzbn zzbnVar;
        synchronized (zzbn.class) {
            try {
                if (d == null) {
                    zzbn zzbnVar2 = new zzbn();
                    zzbnVar2.f29990c = 1;
                    zzbnVar2.f29989b = null;
                    zzbnVar2.f29988a = null;
                    d = zzbnVar2;
                }
                zzbnVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbnVar;
    }

    public final synchronized boolean b(Uri uri, String str) {
        try {
            String strDecode = URLDecoder.decode(uri.toString(), "UTF-8");
            if (!strDecode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+")) {
                "Bad preview url: ".concat(strDecode);
                zzao.a(5);
                return false;
            }
            String queryParameter = uri.getQueryParameter(b.a.f24015b);
            String queryParameter2 = uri.getQueryParameter("gtm_auth");
            String queryParameter3 = uri.getQueryParameter("gtm_preview");
            if (!str.equals(queryParameter)) {
                zzao.a(5);
                return false;
            }
            if (queryParameter == null || queryParameter.length() <= 0) {
                "Bad preview url: ".concat(strDecode);
                zzao.a(5);
                return false;
            }
            if (queryParameter3 != null && queryParameter3.length() == 0) {
                if (queryParameter.equals(this.f29988a) && this.f29990c != 1) {
                    "Exit preview mode for container: ".concat(String.valueOf(this.f29988a));
                    zzao.a(2);
                    this.f29990c = 1;
                    this.f29988a = null;
                    this.f29989b = null;
                }
                zzao.a(5);
                return false;
            }
            if (queryParameter3 == null || queryParameter3.length() <= 0 || queryParameter2 == null || queryParameter2.length() <= 0) {
                "Bad preview url: ".concat(strDecode);
                zzao.a(5);
                return false;
            }
            this.f29990c = 2;
            this.f29989b = uri.getQuery();
            this.f29988a = queryParameter;
            return true;
        } catch (UnsupportedEncodingException e2) {
            "Error decoding the preview url: ".concat(e2.toString());
            zzao.a(5);
            return false;
        }
    }
}

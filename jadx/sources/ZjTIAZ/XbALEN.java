package ZjTIAZ;

import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public abstract class XbALEN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f314a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile String f315b = CNATAC.a("j@sRF^[\u007faTGZZDZYGIN");

    public static synchronized String a() {
        return f315b;
    }

    public static synchronized String b() {
        return f314a;
    }

    public static synchronized void c() {
        GpYFMu.e(CNATAC.a("M|SvEWATCTFIYB"), CNATAC.a("\\@fVGFFNv\u0011C]YCRK"), new Throwable[0]);
        f315b = CNATAC.a("j@sRF^[\u007faTGZZDZYGIN");
        f314a = "";
    }
}

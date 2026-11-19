package okhttp3;

import java.net.CookieHandler;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "Ljava/net/CookieHandler;", "cookieHandler", "<init>", "(Ljava/net/CookieHandler;)V", "okhttp-urlconnection"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JavaNetCookieJar implements CookieJar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ okhttp3.java.net.cookiejar.JavaNetCookieJar f76932b;

    public JavaNetCookieJar(CookieHandler cookieHandler) {
        cookieHandler.getClass();
        this.f76932b = new okhttp3.java.net.cookiejar.JavaNetCookieJar(cookieHandler);
    }

    @Override // okhttp3.CookieJar
    public final List a(HttpUrl httpUrl) {
        httpUrl.getClass();
        return this.f76932b.a(httpUrl);
    }

    @Override // okhttp3.CookieJar
    public final void b(HttpUrl httpUrl, List list) {
        httpUrl.getClass();
        this.f76932b.b(httpUrl, list);
    }
}

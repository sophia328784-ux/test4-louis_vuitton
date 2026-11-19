package okhttp3;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/CookieJar;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CookieJar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CookieJar f76898a = new CookieJar() { // from class: okhttp3.CookieJar$Companion$NoCookies
        @Override // okhttp3.CookieJar
        public final List a(HttpUrl httpUrl) {
            httpUrl.getClass();
            return EmptyList.f71768b;
        }

        @Override // okhttp3.CookieJar
        public final void b(HttpUrl httpUrl, List list) {
            httpUrl.getClass();
        }
    };

    List a(HttpUrl httpUrl);

    void b(HttpUrl httpUrl, List list);
}

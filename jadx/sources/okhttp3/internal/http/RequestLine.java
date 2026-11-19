package okhttp3.internal.http;

import kotlin.Metadata;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/RequestLine;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RequestLine {
    public static String a(HttpUrl httpUrl) {
        httpUrl.getClass();
        String strB = httpUrl.b();
        String strD = httpUrl.d();
        if (strD == null) {
            return strB;
        }
        return strB + '?' + strD;
    }
}

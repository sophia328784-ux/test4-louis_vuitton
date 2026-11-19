package okhttp3.internal.cache;

import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.DateFormattingKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\b\tB\u001d\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy;", "", "Lokhttp3/Request;", "networkRequest", "Lokhttp3/Response;", "cacheResponse", "<init>", "(Lokhttp3/Request;Lokhttp3/Response;)V", "Factory", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CacheStrategy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f77027c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Request f77028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Response f77029b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Companion;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0034  */
        /* JADX WARN: Code duplicated, block: B:26:0x003e  */
        public static boolean a(Request request, Response response) {
            String strA;
            response.getClass();
            request.getClass();
            int i2 = response.f76986e;
            if (i2 != 200 && i2 != 410 && i2 != 414 && i2 != 501 && i2 != 203 && i2 != 204) {
                if (i2 == 307) {
                    strA = response.g.a("Expires");
                    if (strA == null) {
                        strA = null;
                    }
                    if (strA == null && response.h().f76843c == -1 && !response.h().f76845f && !response.h().f76844e) {
                        return false;
                    }
                } else if (i2 != 308 && i2 != 404 && i2 != 405) {
                    switch (i2) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            strA = response.g.a("Expires");
                            if (strA == null) {
                                strA = null;
                            }
                            if (strA == null) {
                                return false;
                            }
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (response.h().f76842b) {
                return false;
            }
            CacheControl cacheControlA = request.f76973f;
            if (cacheControlA == null) {
                CacheControl.Companion companion = CacheControl.n;
                Headers headers = request.f76971c;
                companion.getClass();
                cacheControlA = CacheControl.Companion.a(headers);
                request.f76973f = cacheControlA;
            }
            return !cacheControlA.f76842b;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", "", "", "nowMillis", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "cacheResponse", "<init>", "(JLokhttp3/Request;Lokhttp3/Response;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f77030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Request f77031b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Response f77032c;
        public final Date d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f77033e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Date f77034f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Date f77035h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f77036i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f77037j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f77038k;
        public final int l;

        public Factory(long j2, Request request, Response response) {
            request.getClass();
            this.f77030a = j2;
            this.f77031b = request;
            this.f77032c = response;
            this.l = -1;
            if (response != null) {
                this.f77036i = response.m;
                this.f77037j = response.n;
                Headers headers = response.g;
                int size = headers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String strF = headers.f(i2);
                    String strM = headers.m(i2);
                    if (strF.equalsIgnoreCase("Date")) {
                        this.d = DateFormattingKt.a(strM);
                        this.f77033e = strM;
                    } else if (strF.equalsIgnoreCase("Expires")) {
                        this.f77035h = DateFormattingKt.a(strM);
                    } else if (strF.equalsIgnoreCase("Last-Modified")) {
                        this.f77034f = DateFormattingKt.a(strM);
                        this.g = strM;
                    } else if (strF.equalsIgnoreCase("ETag")) {
                        this.f77038k = strM;
                    } else if (strF.equalsIgnoreCase("Age")) {
                        this.l = _UtilCommonKt.q(-1, strM);
                    }
                }
            }
        }
    }

    public CacheStrategy(Request request, Response response) {
        this.f77028a = request;
        this.f77029b = response;
    }
}

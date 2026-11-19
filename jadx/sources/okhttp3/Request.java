package okhttp3;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import okhttp3.internal.EmptyTags;
import okhttp3.internal.Tags;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.HttpMethod;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000fB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B1\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0004\u0010\u000e¨\u0006\u0010"}, d2 = {"Lokhttp3/Request;", "", "Lokhttp3/Request$Builder;", "builder", "<init>", "(Lokhttp3/Request$Builder;)V", "Lokhttp3/HttpUrl;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lokhttp3/Headers;", "headers", "", "method", "Lokhttp3/RequestBody;", "body", "(Lokhttp3/HttpUrl;Lokhttp3/Headers;Ljava/lang/String;Lokhttp3/RequestBody;)V", "Builder", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Request {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpUrl f76969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f76970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Headers f76971c;
    public final RequestBody d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Tags f76972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CacheControl f76973f;

    public Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody) {
        httpUrl.getClass();
        headers.getClass();
        str.getClass();
        Builder builder = new Builder();
        builder.f76974a = httpUrl;
        builder.f76976c = headers.h();
        builder.c(str.equals("\u0000") ? requestBody != null ? "POST" : "GET" : str, requestBody);
        this(builder);
    }

    public final Object a(KClass kClass) {
        kClass.getClass();
        return JvmClassMappingKt.b(kClass).cast(this.f76972e.a(kClass));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.f76970b);
        sb.append(", url=");
        sb.append(this.f76969a);
        Headers headers = this.f76971c;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            int i2 = 0;
            for (Pair<? extends String, ? extends String> pair : headers) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                Pair<? extends String, ? extends String> pair2 = pair;
                String str = (String) pair2.f71705b;
                String str2 = (String) pair2.f71706c;
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (_UtilCommonKt.m(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i2 = i3;
            }
            sb.append(']');
        }
        EmptyTags emptyTags = EmptyTags.f77010a;
        Tags tags = this.f76972e;
        if (!Intrinsics.c(tags, emptyTags)) {
            sb.append(", tags=");
            sb.append(tags);
        }
        sb.append('}');
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/Request$Builder;", "", "<init>", "()V", "Lokhttp3/Request;", "request", "(Lokhttp3/Request;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HttpUrl f76974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f76975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Headers.Builder f76976c;
        public RequestBody d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Tags f76977e;

        public Builder(Request request) {
            request.getClass();
            EmptyTags emptyTags = EmptyTags.f77010a;
            this.f76974a = request.f76969a;
            this.f76975b = request.f76970b;
            this.d = request.d;
            this.f76977e = request.f76972e;
            this.f76976c = request.f76971c.h();
        }

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f76976c.a(str, str2);
        }

        public final void b(String str, String str2) {
            str2.getClass();
            Headers.Builder builder = this.f76976c;
            builder.getClass();
            _HeadersCommonKt.b(str);
            _HeadersCommonKt.c(str2, str);
            builder.f(str);
            _HeadersCommonKt.a(builder, str, str2);
        }

        public final void c(String str, RequestBody requestBody) {
            str.getClass();
            if (str.length() <= 0) {
                md.n("method.isEmpty() == true");
                return;
            }
            if (requestBody == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                    b21.n(fc.h("method ", str, " must have a request body."));
                    return;
                }
            } else if (!HttpMethod.b(str)) {
                b21.n(fc.h("method ", str, " must not have a request body."));
                return;
            }
            this.f76975b = str;
            this.d = requestBody;
        }

        public final void d(Class cls, Object obj) {
            cls.getClass();
            this.f76977e = this.f76977e.b(Reflection.f71922a.b(cls), obj);
        }

        public final void e(String str) {
            str.getClass();
            HttpUrl.Companion companion = HttpUrl.f76918j;
            if (StringsKt.P(str, "ws:", true)) {
                str = "http:".concat(str.substring(3));
            } else if (StringsKt.P(str, "wss:", true)) {
                str = "https:".concat(str.substring(4));
            }
            companion.getClass();
            this.f76974a = HttpUrl.Companion.c(str);
        }

        public Builder() {
            this.f76977e = EmptyTags.f77010a;
            this.f76975b = "GET";
            this.f76976c = new Headers.Builder();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            Headers.f76915c.getClass();
            headers = Headers.Companion.a(new String[0]);
        }
        this(httpUrl, headers, (i2 & 4) != 0 ? "\u0000" : str, (i2 & 8) != 0 ? null : requestBody);
    }

    public Request(Builder builder) {
        builder.getClass();
        HttpUrl httpUrl = builder.f76974a;
        if (httpUrl != null) {
            this.f76969a = httpUrl;
            this.f76970b = builder.f76975b;
            this.f76971c = builder.f76976c.d();
            this.d = builder.d;
            this.f76972e = builder.f76977e;
            return;
        }
        md.k("url == null");
        throw null;
    }
}

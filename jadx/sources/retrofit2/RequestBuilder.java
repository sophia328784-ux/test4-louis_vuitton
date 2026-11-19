package retrofit2;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.b21;
import defpackage.r81;
import defpackage.tr;
import java.util.ArrayList;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes5.dex */
final class RequestBuilder {
    public static final char[] l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};
    public static final Pattern m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f79421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HttpUrl f79422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f79423c;
    public HttpUrl.Builder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Request.Builder f79424e = new Request.Builder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Headers.Builder f79425f;
    public MediaType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f79426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MultipartBody.Builder f79427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormBody.Builder f79428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RequestBody f79429k;

    public static class ContentTypeOverridingRequestBody extends RequestBody {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RequestBody f79430c;
        public final MediaType d;

        public ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.f79430c = requestBody;
            this.d = mediaType;
        }

        @Override // okhttp3.RequestBody
        public final long a() {
            return this.f79430c.a();
        }

        @Override // okhttp3.RequestBody
        /* JADX INFO: renamed from: b */
        public final MediaType getF76981c() {
            return this.d;
        }

        @Override // okhttp3.RequestBody
        public final void e(BufferedSink bufferedSink) {
            this.f79430c.e(bufferedSink);
        }
    }

    public RequestBuilder(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.f79421a = str;
        this.f79422b = httpUrl;
        this.f79423c = str2;
        this.g = mediaType;
        this.f79426h = z;
        if (headers != null) {
            this.f79425f = headers.h();
        } else {
            this.f79425f = new Headers.Builder();
        }
        if (z2) {
            this.f79428j = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f79427i = builder;
            builder.c(MultipartBody.f76939i);
        }
    }

    public final void a(String str, String str2, boolean z) {
        FormBody.Builder builder = this.f79428j;
        if (!z) {
            builder.a(str, str2);
            return;
        }
        builder.getClass();
        str.getClass();
        builder.f76909b.add(_UrlKt.b(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, builder.f76908a, 83));
        builder.f76910c.add(_UrlKt.b(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", true, false, true, false, builder.f76908a, 83));
    }

    public final void b(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                MediaType.f76933e.getClass();
                this.g = MediaType.Companion.a(str2);
                return;
            } catch (IllegalArgumentException e2) {
                r81.j(tr.g("Malformed content type: ", str2), e2);
                return;
            }
        }
        Headers.Builder builder = this.f79425f;
        if (z) {
            builder.c(str, str2);
        } else {
            builder.a(str, str2);
        }
    }

    public final void c(String str, String str2, boolean z) {
        HttpUrl.Builder builder;
        String str3 = this.f79423c;
        if (str3 != null) {
            HttpUrl httpUrl = this.f79422b;
            httpUrl.getClass();
            try {
                builder = new HttpUrl.Builder();
                builder.d(httpUrl, str3);
            } catch (IllegalArgumentException unused) {
                builder = null;
            }
            this.d = builder;
            if (builder == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(httpUrl);
                b21.w(sb, ", Relative: ", this.f79423c);
                return;
            }
            this.f79423c = null;
        }
        HttpUrl.Builder builder2 = this.d;
        if (!z) {
            builder2.b(str, str2);
            return;
        }
        builder2.getClass();
        str.getClass();
        if (builder2.g == null) {
            builder2.g = new ArrayList();
        }
        ArrayList arrayList = builder2.g;
        arrayList.getClass();
        arrayList.add(_UrlKt.a(str, 0, true, " \"'<>#&=", 0, 83));
        ArrayList arrayList2 = builder2.g;
        arrayList2.getClass();
        arrayList2.add(str2 != null ? _UrlKt.a(str2, 0, true, " \"'<>#&=", 0, 83) : null);
    }
}

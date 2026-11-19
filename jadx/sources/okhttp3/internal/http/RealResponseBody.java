package okhttp3.internal.http;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/http/RealResponseBody;", "Lokhttp3/ResponseBody;", "", "contentTypeString", "", "contentLength", "Lokio/BufferedSource;", Payload.SOURCE, "<init>", "(Ljava/lang/String;JLokio/BufferedSource;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealResponseBody extends ResponseBody {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f77179f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BufferedSource f77180h;

    public RealResponseBody(String str, long j2, BufferedSource bufferedSource) {
        bufferedSource.getClass();
        this.f77179f = str;
        this.g = j2;
        this.f77180h = bufferedSource;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength, reason: from getter */
    public final long getG() {
        return this.g;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType */
    public final MediaType getF77014f() {
        String str = this.f77179f;
        if (str != null) {
            MediaType.f76933e.getClass();
            try {
                return MediaType.Companion.a(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source, reason: from getter */
    public final BufferedSource getF77180h() {
        return this.f77180h;
    }
}

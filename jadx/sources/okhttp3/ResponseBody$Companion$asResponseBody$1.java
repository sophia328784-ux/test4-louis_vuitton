package okhttp3;

import kotlin.Metadata;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/ResponseBody$Companion$asResponseBody$1", "Lokhttp3/ResponseBody;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ResponseBody$Companion$asResponseBody$1 extends ResponseBody {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaType f77004f;
    public final /* synthetic */ long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BufferedSource f77005h;

    public ResponseBody$Companion$asResponseBody$1(MediaType mediaType, long j2, BufferedSource bufferedSource) {
        this.f77004f = mediaType;
        this.g = j2;
        this.f77005h = bufferedSource;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength, reason: from getter */
    public final long getG() {
        return this.g;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType, reason: from getter */
    public final MediaType getF77014f() {
        return this.f77004f;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source, reason: from getter */
    public final BufferedSource getF77005h() {
        return this.f77005h;
    }
}

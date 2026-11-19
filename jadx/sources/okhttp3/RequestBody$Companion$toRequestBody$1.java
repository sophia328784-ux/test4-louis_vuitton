package okhttp3;

import kotlin.Metadata;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/RequestBody$Companion$toRequestBody$1", "Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RequestBody$Companion$toRequestBody$1 extends RequestBody {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaType f76981c;
    public final /* synthetic */ ByteString d;

    public RequestBody$Companion$toRequestBody$1(MediaType mediaType, ByteString byteString) {
        this.f76981c = mediaType;
        this.d = byteString;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.d.e();
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: b, reason: from getter */
    public final MediaType getF76943e() {
        return this.f76981c;
    }

    @Override // okhttp3.RequestBody
    public final void e(BufferedSink bufferedSink) {
        bufferedSink.G1(this.d);
    }
}

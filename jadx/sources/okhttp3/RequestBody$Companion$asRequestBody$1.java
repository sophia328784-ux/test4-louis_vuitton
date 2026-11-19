package okhttp3;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/RequestBody$Companion$asRequestBody$1", "Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RequestBody$Companion$asRequestBody$1 extends RequestBody {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaType f76980c;
    public final /* synthetic */ File d;

    public RequestBody$Companion$asRequestBody$1(MediaType mediaType, File file) {
        this.f76980c = mediaType;
        this.d = file;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.d.length();
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: b, reason: from getter */
    public final MediaType getF76943e() {
        return this.f76980c;
    }

    @Override // okhttp3.RequestBody
    public final void e(BufferedSink bufferedSink) throws IOException {
        Source sourceE = Okio.e(this.d);
        try {
            bufferedSink.u0(sourceE);
            sourceE.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(sourceE, th);
                throw th2;
            }
        }
    }
}

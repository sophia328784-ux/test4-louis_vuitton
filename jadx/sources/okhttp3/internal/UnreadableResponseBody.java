package okhttp3.internal;

import kotlin.Metadata;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/UnreadableResponseBody;", "Lokhttp3/ResponseBody;", "Lokio/Source;", "Lokhttp3/MediaType;", "mediaType", "", "contentLength", "<init>", "(Lokhttp3/MediaType;J)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnreadableResponseBody extends ResponseBody implements Source {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaType f77014f;
    public final long g;

    public UnreadableResponseBody(MediaType mediaType, long j2) {
        this.f77014f = mediaType;
        this.g = j2;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength, reason: from getter */
    public final long getG() {
        return this.g;
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType, reason: from getter */
    public final MediaType getF77004f() {
        return this.f77014f;
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) {
        buffer.getClass();
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public final BufferedSource getF77005h() {
        return new RealBufferedSource(this);
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public final Timeout getF77426c() {
        return Timeout.d;
    }
}

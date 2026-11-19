package okio;

import defpackage.b21;
import defpackage.d21;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import okio.internal._JavaIoKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "Ljava/io/InputStream;", "input", "Lokio/Timeout;", "timeout", "<init>", "(Ljava/io/InputStream;Lokio/Timeout;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
class InputStreamSource implements Source {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputStream f77425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Timeout f77426c;

    public InputStreamSource(InputStream inputStream, Timeout timeout) {
        inputStream.getClass();
        timeout.getClass();
        this.f77425b = inputStream;
        this.f77426c = timeout;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f77425b.close();
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) throws IOException {
        buffer.getClass();
        if (j2 == 0) {
            return 0L;
        }
        if (j2 < 0) {
            b21.n(d21.g(j2, "byteCount < 0: "));
            return 0L;
        }
        try {
            this.f77426c.f();
            Segment segmentK0 = buffer.k0(1);
            int i2 = this.f77425b.read(segmentK0.f77446a, segmentK0.f77448c, (int) Math.min(j2, 8192 - segmentK0.f77448c));
            if (i2 != -1) {
                segmentK0.f77448c += i2;
                long j3 = i2;
                buffer.f77390c += j3;
                return j3;
            }
            if (segmentK0.f77447b != segmentK0.f77448c) {
                return -1L;
            }
            buffer.f77389b = segmentK0.a();
            SegmentPool.a(segmentK0);
            return -1L;
        } catch (AssertionError e2) {
            if (_JavaIoKt.a(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        }
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout, reason: from getter */
    public final Timeout getF77426c() {
        return this.f77426c;
    }

    public final String toString() {
        return "source(" + this.f77425b + ')';
    }
}

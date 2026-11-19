package okio;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "Ljava/io/OutputStream;", "out", "Lokio/Timeout;", "timeout", "<init>", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class OutputStreamSink implements Sink {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputStream f77430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Timeout f77431c;

    public OutputStreamSink(OutputStream outputStream, Timeout timeout) {
        outputStream.getClass();
        timeout.getClass();
        this.f77430b = outputStream;
        this.f77431c = timeout;
    }

    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) throws IOException {
        buffer.getClass();
        SegmentedByteString.b(buffer.f77390c, 0L, j2);
        while (j2 > 0) {
            this.f77431c.f();
            Segment segment = buffer.f77389b;
            segment.getClass();
            int iMin = (int) Math.min(j2, segment.f77448c - segment.f77447b);
            this.f77430b.write(segment.f77446a, segment.f77447b, iMin);
            int i2 = segment.f77447b + iMin;
            segment.f77447b = i2;
            long j3 = iMin;
            j2 -= j3;
            buffer.f77390c -= j3;
            if (i2 == segment.f77448c) {
                buffer.f77389b = segment.a();
                SegmentPool.a(segment);
            }
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f77430b.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() throws IOException {
        this.f77430b.flush();
    }

    @Override // okio.Sink
    /* JADX INFO: renamed from: timeout, reason: from getter */
    public final Timeout getF77431c() {
        return this.f77431c;
    }

    public final String toString() {
        return "sink(" + this.f77430b + ')';
    }
}

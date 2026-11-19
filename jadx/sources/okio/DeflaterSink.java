package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import okio.internal._ZlibJvmKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "Lokio/BufferedSink;", "sink", "Ljava/util/zip/Deflater;", "deflater", "<init>", "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V", "(Lokio/Sink;Ljava/util/zip/Deflater;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeflaterSink implements Sink {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSink f77402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Deflater f77403c;
    public boolean d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DeflaterSink(Sink sink, Deflater deflater) {
        this((BufferedSink) new RealBufferedSink(sink), deflater);
        sink.getClass();
        deflater.getClass();
    }

    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) throws IOException {
        buffer.getClass();
        SegmentedByteString.b(buffer.f77390c, 0L, j2);
        while (true) {
            Deflater deflater = this.f77403c;
            if (j2 <= 0) {
                deflater.setInput(_ZlibJvmKt.f77493a, 0, 0);
                return;
            }
            Segment segment = buffer.f77389b;
            segment.getClass();
            int iMin = (int) Math.min(j2, segment.f77448c - segment.f77447b);
            deflater.setInput(segment.f77446a, segment.f77447b, iMin);
            c(false);
            long j3 = iMin;
            buffer.f77390c -= j3;
            int i2 = segment.f77447b + iMin;
            segment.f77447b = i2;
            if (i2 == segment.f77448c) {
                buffer.f77389b = segment.a();
                SegmentPool.a(segment);
            }
            j2 -= j3;
        }
    }

    public final void c(boolean z) throws IOException {
        Segment segmentK0;
        int iDeflate;
        BufferedSink bufferedSink = this.f77402b;
        Buffer f77441c = bufferedSink.getF77441c();
        while (true) {
            segmentK0 = f77441c.k0(1);
            byte[] bArr = segmentK0.f77446a;
            int i2 = segmentK0.f77448c;
            Deflater deflater = this.f77403c;
            if (z) {
                try {
                    iDeflate = deflater.deflate(bArr, i2, 8192 - i2, 2);
                } catch (IllegalStateException e2) {
                    throw new IOException("Deflater already closed", e2);
                } catch (NullPointerException e3) {
                    throw new IOException("Deflater already closed", e3);
                }
            } else {
                iDeflate = deflater.deflate(bArr, i2, 8192 - i2);
            }
            if (iDeflate > 0) {
                segmentK0.f77448c += iDeflate;
                f77441c.f77390c += (long) iDeflate;
                bufferedSink.X();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (segmentK0.f77447b == segmentK0.f77448c) {
            f77441c.f77389b = segmentK0.a();
            SegmentPool.a(segmentK0);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.f77403c;
        if (this.d) {
            return;
        }
        deflater.finish();
        c(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.f77402b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() throws IOException {
        c(true);
        this.f77402b.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f77402b.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f77402b + ')';
    }

    public DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        bufferedSink.getClass();
        deflater.getClass();
        this.f77402b = bufferedSink;
        this.f77403c = deflater;
    }
}

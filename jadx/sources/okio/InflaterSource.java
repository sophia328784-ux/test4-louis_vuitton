package okio;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.b21;
import defpackage.d20;
import defpackage.d21;
import defpackage.md;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "Lokio/BufferedSource;", Payload.SOURCE, "Ljava/util/zip/Inflater;", "inflater", "<init>", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InflaterSource implements Source {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSource f77422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Inflater f77423c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f77424e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InflaterSource(Source source, Inflater inflater) {
        this((BufferedSource) new RealBufferedSource(source), inflater);
        source.getClass();
        inflater.getClass();
    }

    public final long c(Buffer buffer, long j2) throws IOException {
        Inflater inflater = this.f77423c;
        buffer.getClass();
        if (j2 < 0) {
            b21.n(d21.g(j2, "byteCount < 0: "));
            return 0L;
        }
        if (this.f77424e) {
            md.k("closed");
            return 0L;
        }
        if (j2 != 0) {
            try {
                Segment segmentK0 = buffer.k0(1);
                int iMin = (int) Math.min(j2, 8192 - segmentK0.f77448c);
                boolean zNeedsInput = inflater.needsInput();
                BufferedSource bufferedSource = this.f77422b;
                if (zNeedsInput && !bufferedSource.Z0()) {
                    Segment segment = bufferedSource.getF77441c().f77389b;
                    segment.getClass();
                    int i2 = segment.f77448c;
                    int i3 = segment.f77447b;
                    int i4 = i2 - i3;
                    this.d = i4;
                    inflater.setInput(segment.f77446a, i3, i4);
                }
                int iInflate = inflater.inflate(segmentK0.f77446a, segmentK0.f77448c, iMin);
                int i5 = this.d;
                if (i5 != 0) {
                    int remaining = i5 - inflater.getRemaining();
                    this.d -= remaining;
                    bufferedSource.skip(remaining);
                }
                if (iInflate > 0) {
                    segmentK0.f77448c += iInflate;
                    long j3 = iInflate;
                    buffer.f77390c += j3;
                    return j3;
                }
                if (segmentK0.f77447b == segmentK0.f77448c) {
                    buffer.f77389b = segmentK0.a();
                    SegmentPool.a(segmentK0);
                }
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        }
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f77424e) {
            return;
        }
        this.f77423c.end();
        this.f77424e = true;
        this.f77422b.close();
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) {
        buffer.getClass();
        do {
            long jC = c(buffer, j2);
            if (jC > 0) {
                return jC;
            }
            Inflater inflater = this.f77423c;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.f77422b.Z0());
        d20.g("source exhausted prematurely");
        return 0L;
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.f77422b.timeout();
    }

    public InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        bufferedSource.getClass();
        inflater.getClass();
        this.f77422b = bufferedSource;
        this.f77423c = inflater;
    }
}

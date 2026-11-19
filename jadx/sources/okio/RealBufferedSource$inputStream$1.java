package okio;

import defpackage.az;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okio/RealBufferedSource$inputStream$1", "Ljava/io/InputStream;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealBufferedSource$inputStream$1 extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RealBufferedSource f77445b;

    public RealBufferedSource$inputStream$1(RealBufferedSource realBufferedSource) {
        this.f77445b = realBufferedSource;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        RealBufferedSource realBufferedSource = this.f77445b;
        if (!realBufferedSource.d) {
            return (int) Math.min(realBufferedSource.f77444c.f77390c, 2147483647L);
        }
        az.o("closed");
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f77445b.close();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        bArr.getClass();
        RealBufferedSource realBufferedSource = this.f77445b;
        Buffer buffer = realBufferedSource.f77444c;
        if (realBufferedSource.d) {
            az.o("closed");
            return 0;
        }
        SegmentedByteString.b(bArr.length, i2, i3);
        if (buffer.f77390c == 0 && realBufferedSource.f77443b.read(buffer, 8192L) == -1) {
            return -1;
        }
        return buffer.read(bArr, i2, i3);
    }

    public final String toString() {
        return this.f77445b + ".inputStream()";
    }

    @Override // java.io.InputStream
    public final long transferTo(OutputStream outputStream) throws IOException {
        outputStream.getClass();
        RealBufferedSource realBufferedSource = this.f77445b;
        Buffer buffer = realBufferedSource.f77444c;
        if (realBufferedSource.d) {
            az.o("closed");
            return 0L;
        }
        long j2 = 0;
        while (true) {
            if (buffer.f77390c == 0 && realBufferedSource.f77443b.read(buffer, 8192L) == -1) {
                return j2;
            }
            long j3 = buffer.f77390c;
            j2 += j3;
            SegmentedByteString.b(j3, 0L, j3);
            Segment segment = buffer.f77389b;
            while (j3 > 0) {
                segment.getClass();
                int iMin = (int) Math.min(j3, segment.f77448c - segment.f77447b);
                outputStream.write(segment.f77446a, segment.f77447b, iMin);
                int i2 = segment.f77447b + iMin;
                segment.f77447b = i2;
                long j4 = iMin;
                buffer.f77390c -= j4;
                j3 -= j4;
                if (i2 == segment.f77448c) {
                    Segment segmentA = segment.a();
                    buffer.f77389b = segmentA;
                    SegmentPool.a(segment);
                    segment = segmentA;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        RealBufferedSource realBufferedSource = this.f77445b;
        Buffer buffer = realBufferedSource.f77444c;
        if (realBufferedSource.d) {
            az.o("closed");
            return 0;
        }
        if (buffer.f77390c == 0 && realBufferedSource.f77443b.read(buffer, 8192L) == -1) {
            return -1;
        }
        return buffer.readByte() & 255;
    }
}

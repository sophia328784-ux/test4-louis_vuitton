package okio;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", Payload.SOURCE, "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GzipSource implements Source {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f77418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RealBufferedSource f77419c;
    public final Inflater d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InflaterSource f77420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CRC32 f77421f;

    public GzipSource(Source source) {
        source.getClass();
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.f77419c = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.d = inflater;
        this.f77420e = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.f77421f = new CRC32();
    }

    public static void c(int i2, int i3, String str) throws IOException {
        if (i3 == i2) {
            return;
        }
        StringBuilder sbU = n00.u(str, ": actual 0x");
        sbU.append(StringsKt.B(8, SegmentedByteString.f(i3)));
        sbU.append(" != expected 0x");
        sbU.append(StringsKt.B(8, SegmentedByteString.f(i2)));
        throw new IOException(sbU.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f77420e.close();
    }

    public final void d(Buffer buffer, long j2, long j3) {
        Segment segment = buffer.f77389b;
        segment.getClass();
        while (true) {
            int i2 = segment.f77448c;
            int i3 = segment.f77447b;
            if (j2 < i2 - i3) {
                break;
            }
            j2 -= (long) (i2 - i3);
            segment = segment.f77450f;
            segment.getClass();
        }
        while (j3 > 0) {
            int i4 = (int) (((long) segment.f77447b) + j2);
            int iMin = (int) Math.min(segment.f77448c - i4, j3);
            this.f77421f.update(segment.f77446a, i4, iMin);
            j3 -= (long) iMin;
            segment = segment.f77450f;
            segment.getClass();
            j2 = 0;
        }
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) throws IOException {
        GzipSource gzipSource = this;
        buffer.getClass();
        if (j2 < 0) {
            b21.n(d21.g(j2, "byteCount < 0: "));
            return 0L;
        }
        if (j2 == 0) {
            return 0L;
        }
        byte b2 = gzipSource.f77418b;
        CRC32 crc32 = gzipSource.f77421f;
        RealBufferedSource realBufferedSource = gzipSource.f77419c;
        if (b2 == 0) {
            realBufferedSource.D0(10L);
            Buffer buffer2 = realBufferedSource.f77444c;
            byte bW = buffer2.w(3L);
            boolean z = ((bW >> 1) & 1) == 1;
            if (z) {
                gzipSource.d(realBufferedSource.f77444c, 0L, 10L);
            }
            c(8075, realBufferedSource.readShort(), "ID1ID2");
            realBufferedSource.skip(8L);
            if (((bW >> 2) & 1) == 1) {
                realBufferedSource.D0(2L);
                if (z) {
                    d(realBufferedSource.f77444c, 0L, 2L);
                }
                long jF = buffer2.F() & HPKE.aead_EXPORT_ONLY;
                realBufferedSource.D0(jF);
                if (z) {
                    d(realBufferedSource.f77444c, 0L, jF);
                }
                realBufferedSource.skip(jF);
            }
            if (((bW >> 3) & 1) == 1) {
                long jC = realBufferedSource.c((byte) 0, 0L, Long.MAX_VALUE);
                if (jC == -1) {
                    md.e();
                    return 0L;
                }
                if (z) {
                    d(realBufferedSource.f77444c, 0L, jC + 1);
                }
                realBufferedSource.skip(jC + 1);
            }
            if (((bW >> 4) & 1) == 1) {
                long jC2 = realBufferedSource.c((byte) 0, 0L, Long.MAX_VALUE);
                if (jC2 == -1) {
                    md.e();
                    return 0L;
                }
                if (z) {
                    gzipSource = this;
                    gzipSource.d(realBufferedSource.f77444c, 0L, jC2 + 1);
                } else {
                    gzipSource = this;
                }
                realBufferedSource.skip(jC2 + 1);
            } else {
                gzipSource = this;
            }
            if (z) {
                c(realBufferedSource.j(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            gzipSource.f77418b = (byte) 1;
        }
        if (gzipSource.f77418b == 1) {
            long j3 = buffer.f77390c;
            long j4 = gzipSource.f77420e.read(buffer, j2);
            if (j4 != -1) {
                gzipSource.d(buffer, j3, j4);
                return j4;
            }
            gzipSource.f77418b = (byte) 2;
        }
        if (gzipSource.f77418b == 2) {
            c(realBufferedSource.w1(), (int) crc32.getValue(), "CRC");
            c(realBufferedSource.w1(), (int) gzipSource.d.getBytesWritten(), "ISIZE");
            gzipSource.f77418b = (byte) 3;
            if (!realBufferedSource.Z0()) {
                az.o("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public final Timeout getF77426c() {
        return this.f77419c.f77443b.getF77426c();
    }
}

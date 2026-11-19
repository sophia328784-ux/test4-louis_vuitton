package okio;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.a61;
import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Source;", Payload.SOURCE, "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealBufferedSource implements BufferedSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Source f77443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer f77444c;
    public boolean d;

    public RealBufferedSource(Source source) {
        source.getClass();
        this.f77443b = source;
        this.f77444c = new Buffer();
    }

    @Override // okio.BufferedSource
    public final long A0() throws EOFException {
        D0(8L);
        return this.f77444c.A0();
    }

    @Override // okio.BufferedSource
    public final void D0(long j2) throws EOFException {
        if (request(j2)) {
            return;
        }
        md.e();
    }

    @Override // okio.BufferedSource
    public final String K0(long j2) throws EOFException {
        D0(j2);
        Buffer buffer = this.f77444c;
        buffer.getClass();
        return buffer.G(j2, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    /* JADX INFO: renamed from: L, reason: from getter */
    public final Buffer getF77441c() {
        return this.f77444c;
    }

    @Override // okio.BufferedSource
    public final ByteString N0(long j2) throws EOFException {
        D0(j2);
        return this.f77444c.N0(j2);
    }

    @Override // okio.BufferedSource
    public final long N1(BufferedSink bufferedSink) {
        Buffer buffer;
        long j2 = 0;
        while (true) {
            Source source = this.f77443b;
            buffer = this.f77444c;
            if (source.read(buffer, 8192L) == -1) {
                break;
            }
            long jK = buffer.k();
            if (jK > 0) {
                j2 += jK;
                bufferedSink.D(buffer, jK);
            }
        }
        long j3 = buffer.f77390c;
        if (j3 <= 0) {
            return j2;
        }
        long j4 = j2 + j3;
        bufferedSink.D(buffer, j3);
        return j4;
    }

    @Override // okio.BufferedSource
    public final Buffer Q() {
        return this.f77444c;
    }

    @Override // okio.BufferedSource
    public final long S1() throws EOFException {
        Buffer buffer;
        D0(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            boolean zRequest = request(i3);
            buffer = this.f77444c;
            if (!zRequest) {
                break;
            }
            byte bW = buffer.w(i2);
            if ((bW < 48 || bW > 57) && ((bW < 97 || bW > 102) && (bW < 65 || bW > 70))) {
                if (i2 != 0) {
                    break;
                }
                String string = Integer.toString(bW, CharsKt.checkRadix(16));
                string.getClass();
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + string);
            }
            i2 = i3;
        }
        return buffer.S1();
    }

    @Override // okio.BufferedSource
    public final long T(ByteString byteString) {
        byteString.getClass();
        return okio.internal.RealBufferedSource.a(this, byteString, byteString.e(), Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public final InputStream U1() {
        return new RealBufferedSource$inputStream$1(this);
    }

    @Override // okio.BufferedSource
    public final void V(Buffer buffer, long j2) throws EOFException {
        Buffer buffer2 = this.f77444c;
        buffer.getClass();
        try {
            D0(j2);
            buffer2.V(buffer, j2);
        } catch (EOFException e2) {
            buffer.u0(buffer2);
            throw e2;
        }
    }

    @Override // okio.BufferedSource
    public final byte[] V0() {
        Source source = this.f77443b;
        Buffer buffer = this.f77444c;
        buffer.u0(source);
        return buffer.E(buffer.f77390c);
    }

    @Override // okio.BufferedSource
    public final int V1(Options options) {
        Buffer buffer;
        options.getClass();
        if (this.d) {
            md.k("closed");
            return 0;
        }
        do {
            buffer = this.f77444c;
            int iD = okio.internal.Buffer.d(buffer, options, true);
            if (iD != -2) {
                if (iD == -1) {
                    break;
                }
                buffer.skip(options.f77429c[iD].e());
                return iD;
            }
        } while (this.f77443b.read(buffer, 8192L) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public final long W(ByteString byteString) {
        byteString.getClass();
        long jMax = 0;
        if (this.d) {
            md.k("closed");
            return 0L;
        }
        while (true) {
            Buffer buffer = this.f77444c;
            long jZ = buffer.z(jMax, byteString);
            if (jZ != -1) {
                return jZ;
            }
            long j2 = buffer.f77390c;
            if (this.f77443b.read(buffer, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j2);
        }
    }

    @Override // okio.BufferedSource
    public final String Z(long j2) throws EOFException {
        if (j2 < 0) {
            b21.n(d21.g(j2, "limit < 0: "));
            return null;
        }
        long j3 = j2 == Long.MAX_VALUE ? Long.MAX_VALUE : j2 + 1;
        long jC = c((byte) 10, 0L, j3);
        Buffer buffer = this.f77444c;
        if (jC != -1) {
            return okio.internal.Buffer.c(buffer, jC);
        }
        if (j3 < Long.MAX_VALUE && request(j3) && buffer.w(j3 - 1) == 13 && request(j3 + 1) && buffer.w(j3) == 10) {
            return okio.internal.Buffer.c(buffer, j3);
        }
        Buffer buffer2 = new Buffer();
        buffer.u(buffer2, 0L, Math.min(32L, buffer.f77390c));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.f77390c, j2) + " content=" + buffer2.N0(buffer2.f77390c).f() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public final boolean Z0() {
        if (this.d) {
            md.k("closed");
            return false;
        }
        Buffer buffer = this.f77444c;
        return buffer.Z0() && this.f77443b.read(buffer, 8192L) == -1;
    }

    public final long c(byte b2, long j2, long j3) {
        if (this.d) {
            md.k("closed");
            return 0L;
        }
        if (0 > j3) {
            b21.n(d21.g(j3, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j3) {
            byte b3 = b2;
            long j4 = j3;
            long jY = this.f77444c.y(b3, jMax, j4);
            if (jY != -1) {
                return jY;
            }
            Buffer buffer = this.f77444c;
            long j5 = buffer.f77390c;
            if (j5 >= j4 || this.f77443b.read(buffer, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j5);
            b2 = b3;
            j3 = j4;
        }
        return -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.f77443b.close();
        this.f77444c.h();
    }

    public final long h() throws EOFException {
        byte b2;
        byte b3;
        Buffer buffer;
        long j2;
        Buffer buffer2;
        Buffer buffer3;
        byte b4;
        long j3 = 1;
        D0(1L);
        long j4 = 0;
        long j5 = 0;
        while (true) {
            long j6 = j5 + 1;
            boolean zRequest = request(j6);
            b2 = 57;
            b3 = 48;
            buffer = this.f77444c;
            if (!zRequest) {
                break;
            }
            byte bW = buffer.w(j5);
            if ((bW < 48 || bW > 57) && !(j5 == 0 && bW == 45)) {
                if (j5 != 0) {
                    break;
                }
                String string = Integer.toString(bW, CharsKt.checkRadix(16));
                string.getClass();
                throw new NumberFormatException("Expected a digit or '-' but was 0x" + string);
            }
            j5 = j6;
        }
        if (buffer.f77390c != 0) {
            int i2 = 0;
            long j7 = 0;
            long j8 = -7;
            boolean z = false;
            boolean z2 = false;
            loop1: while (true) {
                Segment segment = buffer.f77389b;
                segment.getClass();
                long j9 = j3;
                byte[] bArr = segment.f77446a;
                int i3 = segment.f77447b;
                long j10 = j4;
                int i4 = segment.f77448c;
                while (true) {
                    if (i3 >= i4) {
                        buffer2 = buffer;
                        break;
                    }
                    b4 = bArr[i3];
                    if (b4 >= b3 && b4 <= b2) {
                        int i5 = 48 - b4;
                        if (j7 < -922337203685477580L) {
                            break loop1;
                        }
                        buffer2 = buffer;
                        if (j7 == -922337203685477580L && i5 < j8) {
                            break loop1;
                        }
                        j7 = (j7 * 10) + ((long) i5);
                    } else {
                        buffer2 = buffer;
                        if (b4 != 45 || i2 != 0) {
                            z2 = true;
                            break;
                        }
                        j8 -= j9;
                        z = true;
                    }
                    i3++;
                    i2++;
                    buffer = buffer2;
                    b2 = 57;
                    b3 = 48;
                }
                if (i3 == i4) {
                    buffer3 = buffer2;
                    buffer3.f77389b = segment.a();
                    SegmentPool.a(segment);
                } else {
                    buffer3 = buffer2;
                    segment.f77447b = i3;
                }
                if (z2 || buffer3.f77389b == null) {
                    long j11 = buffer3.f77390c - ((long) i2);
                    buffer3.f77390c = j11;
                    if (i2 >= (z ? 2 : 1)) {
                        return z ? j7 : -j7;
                    }
                    if (j11 != j10) {
                        StringBuilder sbU = n00.u(z ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
                        sbU.append(SegmentedByteString.e(buffer3.w(j10)));
                        throw new NumberFormatException(sbU.toString());
                    }
                    j2 = j10;
                    md.e();
                } else {
                    buffer = buffer3;
                    j3 = j9;
                    j4 = j10;
                    b2 = 57;
                    b3 = 48;
                }
            }
            Buffer buffer4 = new Buffer();
            buffer4.n0(j7);
            buffer4.m0(b4);
            if (!z) {
                buffer4.readByte();
            }
            throw new NumberFormatException("Number too large: ".concat(buffer4.H()));
        }
        j2 = 0;
        md.e();
        return j2;
    }

    @Override // okio.BufferedSource
    public final String i1(Charset charset) {
        charset.getClass();
        Source source = this.f77443b;
        Buffer buffer = this.f77444c;
        buffer.u0(source);
        return buffer.i1(charset);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    public final short j() throws EOFException {
        D0(2L);
        return this.f77444c.F();
    }

    @Override // okio.BufferedSource
    public final ByteString n1() {
        Source source = this.f77443b;
        Buffer buffer = this.f77444c;
        buffer.u0(source);
        return buffer.N0(buffer.f77390c);
    }

    @Override // okio.BufferedSource
    public final RealBufferedSource peek() {
        return new RealBufferedSource(new PeekSource(this));
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) {
        buffer.getClass();
        if (j2 < 0) {
            b21.n(d21.g(j2, "byteCount < 0: "));
            return 0L;
        }
        if (this.d) {
            md.k("closed");
            return 0L;
        }
        Buffer buffer2 = this.f77444c;
        if (buffer2.f77390c == 0) {
            if (j2 == 0) {
                return 0L;
            }
            if (this.f77443b.read(buffer2, 8192L) == -1) {
                return -1L;
            }
        }
        return buffer2.read(buffer, Math.min(j2, buffer2.f77390c));
    }

    @Override // okio.BufferedSource
    public final byte readByte() throws EOFException {
        D0(1L);
        return this.f77444c.readByte();
    }

    @Override // okio.BufferedSource
    public final void readFully(byte[] bArr) throws EOFException {
        Buffer buffer = this.f77444c;
        bArr.getClass();
        try {
            D0(bArr.length);
            buffer.readFully(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                long j2 = buffer.f77390c;
                if (j2 <= 0) {
                    throw e2;
                }
                int i3 = buffer.read(bArr, i2, (int) j2);
                if (i3 == -1) {
                    a61.h();
                    return;
                }
                i2 += i3;
            }
        }
    }

    @Override // okio.BufferedSource
    public final int readInt() throws EOFException {
        D0(4L);
        return this.f77444c.readInt();
    }

    @Override // okio.BufferedSource
    public final long readLong() throws EOFException {
        D0(8L);
        return this.f77444c.readLong();
    }

    @Override // okio.BufferedSource
    public final short readShort() throws EOFException {
        D0(2L);
        return this.f77444c.readShort();
    }

    @Override // okio.BufferedSource
    public final boolean request(long j2) {
        Buffer buffer;
        if (j2 < 0) {
            b21.n(d21.g(j2, "byteCount < 0: "));
            return false;
        }
        if (this.d) {
            md.k("closed");
            return false;
        }
        do {
            buffer = this.f77444c;
            if (buffer.f77390c >= j2) {
                return true;
            }
        } while (this.f77443b.read(buffer, 8192L) != -1);
        return false;
    }

    @Override // okio.BufferedSource
    public final boolean s0(long j2, ByteString byteString) {
        byteString.getClass();
        int iE = byteString.e();
        if (!this.d) {
            return iE >= 0 && iE <= byteString.e() && (iE == 0 || okio.internal.RealBufferedSource.a(this, byteString, iE, 1L) != -1);
        }
        md.k("closed");
        return false;
    }

    @Override // okio.BufferedSource
    public final void skip(long j2) throws EOFException {
        if (this.d) {
            md.k("closed");
            return;
        }
        while (j2 > 0) {
            Buffer buffer = this.f77444c;
            if (buffer.f77390c == 0 && this.f77443b.read(buffer, 8192L) == -1) {
                md.e();
                return;
            } else {
                long jMin = Math.min(j2, buffer.f77390c);
                buffer.skip(jMin);
                j2 -= jMin;
            }
        }
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public final Timeout getF77426c() {
        return this.f77443b.getF77426c();
    }

    public final String toString() {
        return "buffer(" + this.f77443b + ')';
    }

    @Override // okio.BufferedSource
    public final int w1() throws EOFException {
        D0(4L);
        return this.f77444c.w1();
    }

    @Override // okio.BufferedSource
    public final String x0() {
        return Z(Long.MAX_VALUE);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Buffer buffer = this.f77444c;
        if (buffer.f77390c == 0 && this.f77443b.read(buffer, 8192L) == -1) {
            return -1;
        }
        return buffer.read(byteBuffer);
    }
}

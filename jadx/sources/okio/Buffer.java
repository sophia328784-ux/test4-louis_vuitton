package okio;

import com.batch.android.x0.h;
import defpackage.b21;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0007B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "<init>", "()V", "UnsafeCursor", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Segment f77389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77390c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "<init>", "()V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UnsafeCursor implements Closeable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Buffer f77391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f77392c;
        public Segment d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte[] f77394f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f77393e = -1;
        public int g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f77395h = -1;

        public final void c(long j2) {
            Buffer buffer = this.f77391b;
            if (buffer == null) {
                md.k("not attached to a buffer");
                return;
            }
            if (!this.f77392c) {
                md.k("resizeBuffer() only permitted for read/write buffers");
                return;
            }
            long j3 = buffer.f77390c;
            if (j2 <= j3) {
                if (j2 < 0) {
                    b21.n(d21.g(j2, "newSize < 0: "));
                    return;
                }
                long j4 = j3 - j2;
                while (j4 > 0) {
                    Segment segment = buffer.f77389b;
                    segment.getClass();
                    Segment segment2 = segment.g;
                    segment2.getClass();
                    int i2 = segment2.f77448c;
                    long j5 = i2 - segment2.f77447b;
                    if (j5 > j4) {
                        segment2.f77448c = i2 - ((int) j4);
                        break;
                    } else {
                        buffer.f77389b = segment2.a();
                        SegmentPool.a(segment2);
                        j4 -= j5;
                    }
                }
                this.d = null;
                this.f77393e = j2;
                this.f77394f = null;
                this.g = -1;
                this.f77395h = -1;
            } else if (j2 > j3) {
                long j6 = j2 - j3;
                int i3 = 1;
                boolean z = true;
                for (long j7 = 0; j6 > j7; j7 = 0) {
                    Segment segmentK0 = buffer.k0(i3);
                    int iMin = (int) Math.min(j6, 8192 - segmentK0.f77448c);
                    int i4 = segmentK0.f77448c + iMin;
                    segmentK0.f77448c = i4;
                    j6 -= (long) iMin;
                    if (z) {
                        this.d = segmentK0;
                        this.f77393e = j3;
                        this.f77394f = segmentK0.f77446a;
                        this.g = i4 - iMin;
                        this.f77395h = i4;
                        z = false;
                    }
                    i3 = 1;
                }
            }
            buffer.f77390c = j2;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f77391b == null) {
                md.k("not attached to a buffer");
                return;
            }
            this.f77391b = null;
            this.d = null;
            this.f77393e = -1L;
            this.f77394f = null;
            this.g = -1;
            this.f77395h = -1;
        }

        public final int d(long j2) {
            Buffer buffer = this.f77391b;
            if (buffer == null) {
                md.k("not attached to a buffer");
                return 0;
            }
            if (j2 >= -1) {
                long j3 = buffer.f77390c;
                if (j2 <= j3) {
                    if (j2 == -1 || j2 == j3) {
                        this.d = null;
                        this.f77393e = j2;
                        this.f77394f = null;
                        this.g = -1;
                        this.f77395h = -1;
                        return -1;
                    }
                    Segment segment = buffer.f77389b;
                    Segment segment2 = this.d;
                    long j4 = 0;
                    if (segment2 != null) {
                        long j5 = this.f77393e - ((long) (this.g - segment2.f77447b));
                        if (j5 > j2) {
                            segment2 = segment;
                            segment = segment2;
                            j3 = j5;
                        } else {
                            j4 = j5;
                        }
                    } else {
                        segment2 = segment;
                    }
                    if (j3 - j2 > j2 - j4) {
                        while (true) {
                            segment2.getClass();
                            long j6 = ((long) (segment2.f77448c - segment2.f77447b)) + j4;
                            if (j2 < j6) {
                                break;
                            }
                            segment2 = segment2.f77450f;
                            j4 = j6;
                        }
                    } else {
                        while (j3 > j2) {
                            segment.getClass();
                            segment = segment.g;
                            segment.getClass();
                            j3 -= (long) (segment.f77448c - segment.f77447b);
                        }
                        segment2 = segment;
                        j4 = j3;
                    }
                    if (this.f77392c) {
                        segment2.getClass();
                        if (segment2.d) {
                            byte[] bArr = segment2.f77446a;
                            Segment segment3 = new Segment(Arrays.copyOf(bArr, bArr.length), segment2.f77447b, segment2.f77448c, false, true);
                            if (buffer.f77389b == segment2) {
                                buffer.f77389b = segment3;
                            }
                            segment2.b(segment3);
                            Segment segment4 = segment3.g;
                            segment4.getClass();
                            segment4.a();
                            segment2 = segment3;
                        }
                    }
                    this.d = segment2;
                    this.f77393e = j2;
                    segment2.getClass();
                    this.f77394f = segment2.f77446a;
                    int i2 = segment2.f77447b + ((int) (j2 - j4));
                    this.g = i2;
                    int i3 = segment2.f77448c;
                    this.f77395h = i3;
                    return i3 - i2;
                }
            }
            StringBuilder sbQ = pq0.q(j2, "offset=", " > size=");
            sbQ.append(buffer.f77390c);
            throw new ArrayIndexOutOfBoundsException(sbQ.toString());
        }
    }

    @Override // okio.BufferedSource
    public final long A0() {
        return SegmentedByteString.d(readLong());
    }

    public final boolean B(int i2, ByteString byteString, long j2) {
        byteString.getClass();
        if (i2 >= 0 && j2 >= 0 && ((long) i2) + j2 <= this.f77390c && i2 <= byteString.e()) {
            return i2 == 0 || okio.internal.Buffer.a(this, byteString, j2, j2 + 1, i2) != -1;
        }
        return false;
    }

    public final void C(UnsafeCursor unsafeCursor) {
        unsafeCursor.getClass();
        byte[] bArr = okio.internal.Buffer.f77460a;
        if (unsafeCursor.f77391b != null) {
            md.k("already attached to a buffer");
        } else {
            unsafeCursor.f77391b = this;
            unsafeCursor.f77392c = true;
        }
    }

    @Override // okio.Sink
    public final void D(Buffer buffer, long j2) {
        Segment segmentB;
        buffer.getClass();
        if (buffer == this) {
            md.n("source == this");
            return;
        }
        SegmentedByteString.b(buffer.f77390c, 0L, j2);
        while (j2 > 0) {
            Segment segment = buffer.f77389b;
            segment.getClass();
            int i2 = segment.f77448c;
            Segment segment2 = buffer.f77389b;
            segment2.getClass();
            long j3 = i2 - segment2.f77447b;
            int i3 = 0;
            if (j2 < j3) {
                Segment segment3 = this.f77389b;
                Segment segment4 = segment3 != null ? segment3.g : null;
                if (segment4 != null && segment4.f77449e) {
                    if ((((long) segment4.f77448c) + j2) - ((long) (segment4.d ? 0 : segment4.f77447b)) <= 8192) {
                        Segment segment5 = buffer.f77389b;
                        segment5.getClass();
                        segment5.d(segment4, (int) j2);
                        buffer.f77390c -= j2;
                        this.f77390c += j2;
                        return;
                    }
                }
                Segment segment6 = buffer.f77389b;
                segment6.getClass();
                int i4 = (int) j2;
                if (i4 <= 0 || i4 > segment6.f77448c - segment6.f77447b) {
                    md.n("byteCount out of range");
                    return;
                }
                if (i4 >= 1024) {
                    segmentB = segment6.c();
                } else {
                    segmentB = SegmentPool.b();
                    byte[] bArr = segment6.f77446a;
                    byte[] bArr2 = segmentB.f77446a;
                    int i5 = segment6.f77447b;
                    ArraysKt.j(0, bArr, i5, bArr2, i5 + i4);
                }
                segmentB.f77448c = segmentB.f77447b + i4;
                segment6.f77447b += i4;
                Segment segment7 = segment6.g;
                segment7.getClass();
                segment7.b(segmentB);
                buffer.f77389b = segmentB;
            }
            Segment segment8 = buffer.f77389b;
            segment8.getClass();
            long j4 = segment8.f77448c - segment8.f77447b;
            buffer.f77389b = segment8.a();
            Segment segment9 = this.f77389b;
            if (segment9 == null) {
                this.f77389b = segment8;
                segment8.g = segment8;
                segment8.f77450f = segment8;
            } else {
                Segment segment10 = segment9.g;
                segment10.getClass();
                segment10.b(segment8);
                Segment segment11 = segment8.g;
                if (segment11 == segment8) {
                    md.k("cannot compact");
                    return;
                }
                segment11.getClass();
                if (segment11.f77449e) {
                    int i6 = segment8.f77448c - segment8.f77447b;
                    Segment segment12 = segment8.g;
                    segment12.getClass();
                    int i7 = 8192 - segment12.f77448c;
                    Segment segment13 = segment8.g;
                    segment13.getClass();
                    if (!segment13.d) {
                        Segment segment14 = segment8.g;
                        segment14.getClass();
                        i3 = segment14.f77447b;
                    }
                    if (i6 <= i7 + i3) {
                        Segment segment15 = segment8.g;
                        segment15.getClass();
                        segment8.d(segment15, i6);
                        segment8.a();
                        SegmentPool.a(segment8);
                    }
                }
            }
            buffer.f77390c -= j4;
            this.f77390c += j4;
            j2 -= j4;
        }
    }

    @Override // okio.BufferedSource
    public final void D0(long j2) throws EOFException {
        if (this.f77390c >= j2) {
            return;
        }
        md.e();
    }

    public final byte[] E(long j2) throws EOFException {
        if (j2 < 0 || j2 > 2147483647L) {
            b21.n(d21.g(j2, "byteCount: "));
            return null;
        }
        if (this.f77390c < j2) {
            md.e();
            return null;
        }
        byte[] bArr = new byte[(int) j2];
        readFully(bArr);
        return bArr;
    }

    public final void E0(String str, int i2, int i3, Charset charset) {
        str.getClass();
        charset.getClass();
        if (i2 < 0) {
            b21.n(pq0.k(i2, "beginIndex < 0: "));
            return;
        }
        if (i3 < i2) {
            b21.n(o60.h(i3, i2, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i3 > str.length()) {
            b21.v(fc.q(i3, "endIndex > string.length: ", " > "), str.length());
        } else {
            if (charset.equals(Charsets.UTF_8)) {
                I0(i2, i3, str);
                return;
            }
            byte[] bytes = str.substring(i2, i3).getBytes(charset);
            bytes.getClass();
            write(bytes, 0, bytes.length);
        }
    }

    public final short F() throws EOFException {
        short s = readShort();
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink F0(long j2) {
        n0(j2);
        return this;
    }

    public final String G(long j2, Charset charset) {
        charset.getClass();
        if (j2 < 0 || j2 > 2147483647L) {
            b21.n(d21.g(j2, "byteCount: "));
            return null;
        }
        if (this.f77390c < j2) {
            md.e();
            return null;
        }
        if (j2 == 0) {
            return "";
        }
        Segment segment = this.f77389b;
        segment.getClass();
        int i2 = segment.f77447b;
        if (((long) i2) + j2 > segment.f77448c) {
            return new String(E(j2), charset);
        }
        int i3 = (int) j2;
        String str = new String(segment.f77446a, i2, i3, charset);
        int i4 = segment.f77447b + i3;
        segment.f77447b = i4;
        this.f77390c -= j2;
        if (i4 == segment.f77448c) {
            this.f77389b = segment.a();
            SegmentPool.a(segment);
        }
        return str;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink G1(ByteString byteString) {
        l0(byteString);
        return this;
    }

    public final String H() {
        return G(this.f77390c, Charsets.UTF_8);
    }

    public final void I0(int i2, int i3, String str) {
        char cCharAt;
        str.getClass();
        if (i2 < 0) {
            b21.n(pq0.k(i2, "beginIndex < 0: "));
            return;
        }
        if (i3 < i2) {
            b21.n(o60.h(i3, i2, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i3 > str.length()) {
            b21.v(fc.q(i3, "endIndex > string.length: ", " > "), str.length());
            return;
        }
        while (i2 < i3) {
            char cCharAt2 = str.charAt(i2);
            if (cCharAt2 < 128) {
                Segment segmentK0 = k0(1);
                byte[] bArr = segmentK0.f77446a;
                int i4 = segmentK0.f77448c - i2;
                int iMin = Math.min(i3, 8192 - i4);
                int i5 = i2 + 1;
                bArr[i2 + i4] = (byte) cCharAt2;
                while (true) {
                    i2 = i5;
                    if (i2 >= iMin || (cCharAt = str.charAt(i2)) >= 128) {
                        break;
                    }
                    i5 = i2 + 1;
                    bArr[i2 + i4] = (byte) cCharAt;
                }
                int i6 = segmentK0.f77448c;
                int i7 = (i4 + i2) - i6;
                segmentK0.f77448c = i6 + i7;
                this.f77390c += (long) i7;
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentK1 = k0(2);
                    byte[] bArr2 = segmentK1.f77446a;
                    int i8 = segmentK1.f77448c;
                    bArr2[i8] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i8 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentK1.f77448c = i8 + 2;
                    this.f77390c += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentK2 = k0(3);
                    byte[] bArr3 = segmentK2.f77446a;
                    int i9 = segmentK2.f77448c;
                    bArr3[i9] = (byte) ((cCharAt2 >> '\f') | BERTags.FLAGS);
                    bArr3[i9 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i9 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentK2.f77448c = i9 + 3;
                    this.f77390c += 3;
                } else {
                    int i10 = i2 + 1;
                    char cCharAt3 = i10 < i3 ? str.charAt(i10) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        m0(63);
                        i2 = i10;
                    } else {
                        int i11 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        Segment segmentK3 = k0(4);
                        byte[] bArr4 = segmentK3.f77446a;
                        int i12 = segmentK3.f77448c;
                        bArr4[i12] = (byte) ((i11 >> 18) | 240);
                        bArr4[i12 + 1] = (byte) (((i11 >> 12) & 63) | 128);
                        bArr4[i12 + 2] = (byte) (((i11 >> 6) & 63) | 128);
                        bArr4[i12 + 3] = (byte) ((i11 & 63) | 128);
                        segmentK3.f77448c = i12 + 4;
                        this.f77390c += 4;
                        i2 += 2;
                    }
                }
                i2++;
            }
        }
    }

    @Override // okio.BufferedSource
    public final String K0(long j2) {
        return G(j2, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    /* JADX INFO: renamed from: L */
    public final Buffer getF77441c() {
        return this;
    }

    public final void M0(String str) {
        str.getClass();
        I0(0, str.length(), str);
    }

    @Override // okio.BufferedSource
    public final ByteString N0(long j2) throws EOFException {
        if (j2 < 0 || j2 > 2147483647L) {
            b21.n(d21.g(j2, "byteCount: "));
            return null;
        }
        if (this.f77390c < j2) {
            md.e();
            return null;
        }
        if (j2 < 4096) {
            return new ByteString(E(j2));
        }
        ByteString byteStringJ0 = j0((int) j2);
        skip(j2);
        return byteStringJ0;
    }

    @Override // okio.BufferedSource
    public final long N1(BufferedSink bufferedSink) {
        long j2 = this.f77390c;
        if (j2 > 0) {
            bufferedSink.D(this, j2);
        }
        return j2;
    }

    public final void P0(int i2) {
        if (i2 < 128) {
            m0(i2);
            return;
        }
        if (i2 < 2048) {
            Segment segmentK0 = k0(2);
            byte[] bArr = segmentK0.f77446a;
            int i3 = segmentK0.f77448c;
            bArr[i3] = (byte) ((i2 >> 6) | 192);
            bArr[i3 + 1] = (byte) ((i2 & 63) | 128);
            segmentK0.f77448c = i3 + 2;
            this.f77390c += 2;
            return;
        }
        if (55296 <= i2 && i2 < 57344) {
            m0(63);
            return;
        }
        if (i2 < 65536) {
            Segment segmentK1 = k0(3);
            byte[] bArr2 = segmentK1.f77446a;
            int i4 = segmentK1.f77448c;
            bArr2[i4] = (byte) ((i2 >> 12) | BERTags.FLAGS);
            bArr2[i4 + 1] = (byte) (((i2 >> 6) & 63) | 128);
            bArr2[i4 + 2] = (byte) ((i2 & 63) | 128);
            segmentK1.f77448c = i4 + 3;
            this.f77390c += 3;
            return;
        }
        if (i2 > 1114111) {
            md.n("Unexpected code point: 0x".concat(SegmentedByteString.f(i2)));
            return;
        }
        Segment segmentK2 = k0(4);
        byte[] bArr3 = segmentK2.f77446a;
        int i5 = segmentK2.f77448c;
        bArr3[i5] = (byte) ((i2 >> 18) | 240);
        bArr3[i5 + 1] = (byte) (((i2 >> 12) & 63) | 128);
        bArr3[i5 + 2] = (byte) (((i2 >> 6) & 63) | 128);
        bArr3[i5 + 3] = (byte) ((i2 & 63) | 128);
        segmentK2.f77448c = i5 + 4;
        this.f77390c += 4;
    }

    @Override // okio.BufferedSource
    public final Buffer Q() {
        return this;
    }

    @Override // okio.BufferedSource
    public final long S1() throws EOFException {
        int i2;
        if (this.f77390c == 0) {
            md.e();
            return 0L;
        }
        int i3 = 0;
        boolean z = false;
        long j2 = 0;
        do {
            Segment segment = this.f77389b;
            segment.getClass();
            byte[] bArr = segment.f77446a;
            int i4 = segment.f77447b;
            int i5 = segment.f77448c;
            while (i4 < i5) {
                byte b2 = bArr[i4];
                if (b2 >= 48 && b2 <= 57) {
                    i2 = b2 + h.a.u;
                } else if (b2 >= 97 && b2 <= 102) {
                    i2 = b2 - 87;
                } else {
                    if (b2 < 65 || b2 > 70) {
                        if (i3 == 0) {
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(SegmentedByteString.e(b2)));
                        }
                        z = true;
                        break;
                    }
                    i2 = b2 + h.a.n;
                }
                if (((-1152921504606846976L) & j2) != 0) {
                    Buffer buffer = new Buffer();
                    buffer.o0(j2);
                    buffer.m0(b2);
                    throw new NumberFormatException("Number too large: ".concat(buffer.H()));
                }
                j2 = (j2 << 4) | ((long) i2);
                i4++;
                i3++;
            }
            if (i4 == i5) {
                this.f77389b = segment.a();
                SegmentPool.a(segment);
            } else {
                segment.f77447b = i4;
            }
            if (z) {
                break;
            }
        } while (this.f77389b != null);
        this.f77390c -= (long) i3;
        return j2;
    }

    @Override // okio.BufferedSource
    public final long T(ByteString byteString) {
        byteString.getClass();
        byte[] bArr = okio.internal.Buffer.f77460a;
        return okio.internal.Buffer.a(this, byteString, 0L, Long.MAX_VALUE, byteString.e());
    }

    @Override // okio.BufferedSource
    public final InputStream U1() {
        return new Buffer$inputStream$1(this);
    }

    @Override // okio.BufferedSource
    public final void V(Buffer buffer, long j2) throws EOFException {
        buffer.getClass();
        long j3 = this.f77390c;
        if (j3 >= j2) {
            buffer.D(this, j2);
        } else {
            buffer.D(this, j3);
            md.e();
        }
    }

    @Override // okio.BufferedSource
    public final byte[] V0() {
        return E(this.f77390c);
    }

    @Override // okio.BufferedSource
    public final int V1(Options options) {
        options.getClass();
        int iD = okio.internal.Buffer.d(this, options, false);
        if (iD == -1) {
            return -1;
        }
        skip(options.f77429c[iD].e());
        return iD;
    }

    @Override // okio.BufferedSource
    public final long W(ByteString byteString) {
        byteString.getClass();
        return z(0L, byteString);
    }

    @Override // okio.BufferedSink
    public final BufferedSink X() {
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink Y0(int i2) {
        p0(SegmentedByteString.c(i2));
        return this;
    }

    @Override // okio.BufferedSource
    public final String Z(long j2) throws EOFException {
        if (j2 < 0) {
            b21.n(d21.g(j2, "limit < 0: "));
            return null;
        }
        long j3 = j2 != Long.MAX_VALUE ? j2 + 1 : Long.MAX_VALUE;
        long jY = y((byte) 10, 0L, j3);
        if (jY != -1) {
            return okio.internal.Buffer.c(this, jY);
        }
        if (j3 < this.f77390c && w(j3 - 1) == 13 && w(j3) == 10) {
            return okio.internal.Buffer.c(this, j3);
        }
        Buffer buffer = new Buffer();
        u(buffer, 0L, Math.min(32L, this.f77390c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f77390c, j2) + " content=" + buffer.N0(buffer.f77390c).f() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public final boolean Z0() {
        return this.f77390c == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, okio.Sink
    public final void close() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        long j2 = this.f77390c;
        Buffer buffer = (Buffer) obj;
        if (j2 != buffer.f77390c) {
            return false;
        }
        if (j2 == 0) {
            return true;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        Segment segment2 = buffer.f77389b;
        segment2.getClass();
        int i2 = segment.f77447b;
        int i3 = segment2.f77447b;
        long j3 = 0;
        while (j3 < this.f77390c) {
            long jMin = Math.min(segment.f77448c - i2, segment2.f77448c - i3);
            long j4 = 0;
            while (j4 < jMin) {
                int i4 = i2 + 1;
                int i5 = i3 + 1;
                if (segment.f77446a[i2] != segment2.f77446a[i3]) {
                    return false;
                }
                j4++;
                i2 = i4;
                i3 = i5;
            }
            if (i2 == segment.f77448c) {
                segment = segment.f77450f;
                segment.getClass();
                i2 = segment.f77447b;
            }
            if (i3 == segment2.f77448c) {
                segment2 = segment2.f77450f;
                segment2.getClass();
                i3 = segment2.f77447b;
            }
            j3 += jMin;
        }
        return true;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink f1(int i2, byte[] bArr) {
        write(bArr, 0, i2);
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
    }

    public final void h() {
        skip(this.f77390c);
    }

    public final int hashCode() {
        Segment segment = this.f77389b;
        if (segment == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = segment.f77448c;
            for (int i4 = segment.f77447b; i4 < i3; i4++) {
                i2 = (i2 * 31) + segment.f77446a[i4];
            }
            segment = segment.f77450f;
            segment.getClass();
        } while (segment != this.f77389b);
        return i2;
    }

    public final int i0() throws EOFException {
        int i2;
        int i3;
        int i4;
        if (this.f77390c == 0) {
            md.e();
            return 0;
        }
        byte bW = w(0L);
        if ((bW & 128) == 0) {
            i2 = bW & 127;
            i4 = 0;
            i3 = 1;
        } else if ((bW & h.a.K) == 192) {
            i2 = bW & 31;
            i3 = 2;
            i4 = 128;
        } else if ((bW & 240) == 224) {
            i2 = bW & 15;
            i3 = 3;
            i4 = 2048;
        } else {
            if ((bW & 248) != 240) {
                skip(1L);
                return Constants.CallType.ATTENDEE;
            }
            i2 = bW & 7;
            i3 = 4;
            i4 = 65536;
        }
        long j2 = i3;
        if (this.f77390c < j2) {
            StringBuilder sbQ = fc.q(i3, "size < ", ": ");
            sbQ.append(this.f77390c);
            sbQ.append(" (to read code point prefixed 0x");
            sbQ.append(SegmentedByteString.e(bW));
            sbQ.append(')');
            throw new EOFException(sbQ.toString());
        }
        for (int i5 = 1; i5 < i3; i5++) {
            long j3 = i5;
            byte bW2 = w(j3);
            if ((bW2 & h.a.f24176e) != 128) {
                skip(j3);
                return Constants.CallType.ATTENDEE;
            }
            i2 = (i2 << 6) | (bW2 & 63);
        }
        skip(j2);
        if (i2 > 1114111) {
            return Constants.CallType.ATTENDEE;
        }
        return ((55296 > i2 || i2 >= 57344) && i2 >= i4) ? i2 : Constants.CallType.ATTENDEE;
    }

    @Override // okio.BufferedSource
    public final String i1(Charset charset) {
        charset.getClass();
        return G(this.f77390c, charset);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.f77390c == 0) {
            return buffer;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        Segment segmentC = segment.c();
        buffer.f77389b = segmentC;
        segmentC.g = segmentC;
        segmentC.f77450f = segmentC;
        for (Segment segment2 = segment.f77450f; segment2 != segment; segment2 = segment2.f77450f) {
            Segment segment3 = segmentC.g;
            segment3.getClass();
            segment2.getClass();
            segment3.b(segment2.c());
        }
        buffer.f77390c = this.f77390c;
        return buffer;
    }

    public final ByteString j0(int i2) {
        if (i2 == 0) {
            return ByteString.f77399f;
        }
        SegmentedByteString.b(this.f77390c, 0L, i2);
        Segment segment = this.f77389b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            segment.getClass();
            int i6 = segment.f77448c;
            int i7 = segment.f77447b;
            if (i6 == i7) {
                md.h("s.limit == s.pos");
                return null;
            }
            i4 += i6 - i7;
            i5++;
            segment = segment.f77450f;
        }
        byte[][] bArr = new byte[i5][];
        int[] iArr = new int[i5 * 2];
        Segment segment2 = this.f77389b;
        int i8 = 0;
        while (i3 < i2) {
            segment2.getClass();
            bArr[i8] = segment2.f77446a;
            i3 += segment2.f77448c - segment2.f77447b;
            iArr[i8] = Math.min(i3, i2);
            iArr[i8 + i5] = segment2.f77447b;
            segment2.d = true;
            i8++;
            segment2 = segment2.f77450f;
        }
        return new C0407SegmentedByteString(bArr, iArr);
    }

    public final long k() {
        long j2 = this.f77390c;
        if (j2 == 0) {
            return 0L;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        Segment segment2 = segment.g;
        segment2.getClass();
        int i2 = segment2.f77448c;
        return (i2 >= 8192 || !segment2.f77449e) ? j2 : j2 - ((long) (i2 - segment2.f77447b));
    }

    public final Segment k0(int i2) {
        if (i2 < 1 || i2 > 8192) {
            md.n("unexpected capacity");
            return null;
        }
        Segment segment = this.f77389b;
        if (segment == null) {
            Segment segmentB = SegmentPool.b();
            this.f77389b = segmentB;
            segmentB.g = segmentB;
            segmentB.f77450f = segmentB;
            return segmentB;
        }
        Segment segment2 = segment.g;
        segment2.getClass();
        if (segment2.f77448c + i2 <= 8192 && segment2.f77449e) {
            return segment2;
        }
        Segment segmentB2 = SegmentPool.b();
        segment2.b(segmentB2);
        return segmentB2;
    }

    public final void l0(ByteString byteString) {
        byteString.getClass();
        byteString.D(byteString.e(), this);
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink l1(long j2) {
        o0(j2);
        return this;
    }

    public final void m0(int i2) {
        Segment segmentK0 = k0(1);
        byte[] bArr = segmentK0.f77446a;
        int i3 = segmentK0.f77448c;
        segmentK0.f77448c = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f77390c++;
    }

    public final void n0(long j2) {
        boolean z;
        if (j2 == 0) {
            m0(48);
            return;
        }
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                M0("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = okio.internal.Buffer.f77460a;
        int iNumberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j2)) * 10) >>> 5;
        int i2 = iNumberOfLeadingZeros + (j2 > okio.internal.Buffer.f77461b[iNumberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i2++;
        }
        Segment segmentK0 = k0(i2);
        byte[] bArr2 = segmentK0.f77446a;
        int i3 = segmentK0.f77448c + i2;
        while (j2 != 0) {
            i3--;
            bArr2[i3] = okio.internal.Buffer.f77460a[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr2[i3 - 1] = 45;
        }
        segmentK0.f77448c += i2;
        this.f77390c += (long) i2;
    }

    @Override // okio.BufferedSource
    public final ByteString n1() {
        return N0(this.f77390c);
    }

    public final void o0(long j2) {
        if (j2 == 0) {
            m0(48);
            return;
        }
        long j3 = (j2 >>> 1) | j2;
        long j4 = j3 | (j3 >>> 2);
        long j5 = j4 | (j4 >>> 4);
        long j6 = j5 | (j5 >>> 8);
        long j7 = j6 | (j6 >>> 16);
        long j8 = j7 | (j7 >>> 32);
        long j9 = j8 - ((j8 >>> 1) & 6148914691236517205L);
        long j10 = ((j9 >>> 2) & 3689348814741910323L) + (j9 & 3689348814741910323L);
        long j11 = ((j10 >>> 4) + j10) & 1085102592571150095L;
        long j12 = j11 + (j11 >>> 8);
        long j13 = j12 + (j12 >>> 16);
        int i2 = (int) ((((j13 & 63) + ((j13 >>> 32) & 63)) + 3) / 4);
        Segment segmentK0 = k0(i2);
        byte[] bArr = segmentK0.f77446a;
        int i3 = segmentK0.f77448c;
        for (int i4 = (i3 + i2) - 1; i4 >= i3; i4--) {
            bArr[i4] = okio.internal.Buffer.f77460a[(int) (15 & j2)];
            j2 >>>= 4;
        }
        segmentK0.f77448c += i2;
        this.f77390c += (long) i2;
    }

    public final void p0(int i2) {
        Segment segmentK0 = k0(4);
        byte[] bArr = segmentK0.f77446a;
        int i3 = segmentK0.f77448c;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 3] = (byte) (i2 & 255);
        segmentK0.f77448c = i3 + 4;
        this.f77390c += 4;
    }

    @Override // okio.BufferedSource
    public final RealBufferedSource peek() {
        return new RealBufferedSource(new PeekSource(this));
    }

    public final void q0(long j2) {
        Segment segmentK0 = k0(8);
        byte[] bArr = segmentK0.f77446a;
        int i2 = segmentK0.f77448c;
        bArr[i2] = (byte) ((j2 >>> 56) & 255);
        bArr[i2 + 1] = (byte) ((j2 >>> 48) & 255);
        bArr[i2 + 2] = (byte) ((j2 >>> 40) & 255);
        bArr[i2 + 3] = (byte) ((j2 >>> 32) & 255);
        bArr[i2 + 4] = (byte) ((j2 >>> 24) & 255);
        bArr[i2 + 5] = (byte) ((j2 >>> 16) & 255);
        bArr[i2 + 6] = (byte) ((j2 >>> 8) & 255);
        bArr[i2 + 7] = (byte) (j2 & 255);
        segmentK0.f77448c = i2 + 8;
        this.f77390c += 8;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink r0(String str) {
        M0(str);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink r1(int i2, int i3, String str) {
        I0(i2, i3, str);
        return this;
    }

    public final int read(byte[] bArr, int i2, int i3) {
        bArr.getClass();
        SegmentedByteString.b(bArr.length, i2, i3);
        Segment segment = this.f77389b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i3, segment.f77448c - segment.f77447b);
        byte[] bArr2 = segment.f77446a;
        int i4 = segment.f77447b;
        ArraysKt.j(i2, bArr2, i4, bArr, i4 + iMin);
        int i5 = segment.f77447b + iMin;
        segment.f77447b = i5;
        this.f77390c -= (long) iMin;
        if (i5 == segment.f77448c) {
            this.f77389b = segment.a();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        if (this.f77390c == 0) {
            md.e();
            return (byte) 0;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        int i2 = segment.f77447b;
        int i3 = segment.f77448c;
        int i4 = i2 + 1;
        byte b2 = segment.f77446a[i2];
        this.f77390c--;
        if (i4 != i3) {
            segment.f77447b = i4;
            return b2;
        }
        this.f77389b = segment.a();
        SegmentPool.a(segment);
        return b2;
    }

    @Override // okio.BufferedSource
    public final void readFully(byte[] bArr) throws EOFException {
        bArr.getClass();
        int i2 = 0;
        while (i2 < bArr.length) {
            int i3 = read(bArr, i2, bArr.length - i2);
            if (i3 == -1) {
                md.e();
                return;
            }
            i2 += i3;
        }
    }

    @Override // okio.BufferedSource
    public final int readInt() throws EOFException {
        if (this.f77390c < 4) {
            md.e();
            return 0;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        int i2 = segment.f77447b;
        int i3 = segment.f77448c;
        if (i3 - i2 < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = segment.f77446a;
        int i4 = i2 + 3;
        int i5 = ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 2] & 255) << 8);
        int i6 = i2 + 4;
        int i7 = (bArr[i4] & 255) | i5;
        this.f77390c -= 4;
        if (i6 != i3) {
            segment.f77447b = i6;
            return i7;
        }
        this.f77389b = segment.a();
        SegmentPool.a(segment);
        return i7;
    }

    @Override // okio.BufferedSource
    public final long readLong() throws EOFException {
        if (this.f77390c < 8) {
            md.e();
            return 0L;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        int i2 = segment.f77447b;
        int i3 = segment.f77448c;
        if (i3 - i2 < 8) {
            return ((((long) readInt()) & BodyPartID.bodyIdMax) << 32) | (BodyPartID.bodyIdMax & ((long) readInt()));
        }
        byte[] bArr = segment.f77446a;
        int i4 = i2 + 7;
        long j2 = ((((long) bArr[i2]) & 255) << 56) | ((((long) bArr[i2 + 1]) & 255) << 48) | ((((long) bArr[i2 + 2]) & 255) << 40) | ((((long) bArr[i2 + 3]) & 255) << 32) | ((((long) bArr[i2 + 4]) & 255) << 24) | ((((long) bArr[i2 + 5]) & 255) << 16) | ((((long) bArr[i2 + 6]) & 255) << 8);
        int i5 = i2 + 8;
        long j3 = j2 | (((long) bArr[i4]) & 255);
        this.f77390c -= 8;
        if (i5 != i3) {
            segment.f77447b = i5;
            return j3;
        }
        this.f77389b = segment.a();
        SegmentPool.a(segment);
        return j3;
    }

    @Override // okio.BufferedSource
    public final short readShort() throws EOFException {
        if (this.f77390c < 2) {
            md.e();
            return (short) 0;
        }
        Segment segment = this.f77389b;
        segment.getClass();
        int i2 = segment.f77447b;
        int i3 = segment.f77448c;
        if (i3 - i2 < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = segment.f77446a;
        int i4 = i2 + 1;
        int i5 = (bArr[i2] & 255) << 8;
        int i6 = i2 + 2;
        int i7 = (bArr[i4] & 255) | i5;
        this.f77390c -= 2;
        if (i6 == i3) {
            this.f77389b = segment.a();
            SegmentPool.a(segment);
        } else {
            segment.f77447b = i6;
        }
        return (short) i7;
    }

    @Override // okio.BufferedSource
    public final boolean request(long j2) {
        return this.f77390c >= j2;
    }

    @Override // okio.BufferedSource
    public final boolean s0(long j2, ByteString byteString) {
        byteString.getClass();
        return B(byteString.e(), byteString, j2);
    }

    @Override // okio.BufferedSource
    public final void skip(long j2) {
        while (j2 > 0) {
            Segment segment = this.f77389b;
            if (segment == null) {
                md.e();
                return;
            }
            int iMin = (int) Math.min(j2, segment.f77448c - segment.f77447b);
            long j3 = iMin;
            this.f77390c -= j3;
            j2 -= j3;
            int i2 = segment.f77447b + iMin;
            segment.f77447b = i2;
            if (i2 == segment.f77448c) {
                this.f77389b = segment.a();
                SegmentPool.a(segment);
            }
        }
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return Timeout.d;
    }

    public final String toString() {
        long j2 = this.f77390c;
        if (j2 <= 2147483647L) {
            return j0((int) j2).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f77390c).toString());
    }

    public final void u(Buffer buffer, long j2, long j3) {
        buffer.getClass();
        long j4 = j2;
        SegmentedByteString.b(this.f77390c, j4, j3);
        if (j3 == 0) {
            return;
        }
        buffer.f77390c += j3;
        Segment segment = this.f77389b;
        while (true) {
            segment.getClass();
            long j5 = segment.f77448c - segment.f77447b;
            if (j4 < j5) {
                break;
            }
            j4 -= j5;
            segment = segment.f77450f;
        }
        long j6 = j3;
        while (j6 > 0) {
            segment.getClass();
            Segment segmentC = segment.c();
            int i2 = segmentC.f77447b + ((int) j4);
            segmentC.f77447b = i2;
            segmentC.f77448c = Math.min(i2 + ((int) j6), segmentC.f77448c);
            Segment segment2 = buffer.f77389b;
            if (segment2 == null) {
                segmentC.g = segmentC;
                segmentC.f77450f = segmentC;
                buffer.f77389b = segmentC;
            } else {
                Segment segment3 = segment2.g;
                segment3.getClass();
                segment3.b(segmentC);
            }
            j6 -= (long) (segmentC.f77448c - segmentC.f77447b);
            segment = segment.f77450f;
            j4 = 0;
        }
    }

    @Override // okio.BufferedSink
    public final long u0(Source source) {
        source.getClass();
        long j2 = 0;
        while (true) {
            long j3 = source.read(this, 8192L);
            if (j3 == -1) {
                return j2;
            }
            j2 += j3;
        }
    }

    public final void v0(int i2) {
        Segment segmentK0 = k0(2);
        byte[] bArr = segmentK0.f77446a;
        int i3 = segmentK0.f77448c;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 1] = (byte) (i2 & 255);
        segmentK0.f77448c = i3 + 2;
        this.f77390c += 2;
    }

    public final byte w(long j2) {
        SegmentedByteString.b(this.f77390c, j2, 1L);
        Segment segment = this.f77389b;
        segment.getClass();
        long j3 = this.f77390c;
        if (j3 - j2 < j2) {
            while (j3 > j2) {
                segment = segment.g;
                segment.getClass();
                j3 -= (long) (segment.f77448c - segment.f77447b);
            }
            return segment.f77446a[(int) ((((long) segment.f77447b) + j2) - j3)];
        }
        long j4 = 0;
        while (true) {
            int i2 = segment.f77448c;
            int i3 = segment.f77447b;
            long j5 = ((long) (i2 - i3)) + j4;
            if (j5 > j2) {
                return segment.f77446a[(int) ((((long) i3) + j2) - j4)];
            }
            segment = segment.f77450f;
            segment.getClass();
            j4 = j5;
        }
    }

    @Override // okio.BufferedSource
    public final int w1() {
        return SegmentedByteString.c(readInt());
    }

    public final void write(byte[] bArr, int i2, int i3) {
        bArr.getClass();
        long j2 = i3;
        SegmentedByteString.b(bArr.length, i2, j2);
        int i4 = i3 + i2;
        while (i2 < i4) {
            Segment segmentK0 = k0(1);
            int iMin = Math.min(i4 - i2, 8192 - segmentK0.f77448c);
            int i5 = i2 + iMin;
            ArraysKt.j(segmentK0.f77448c, bArr, i2, segmentK0.f77446a, i5);
            segmentK0.f77448c += iMin;
            i2 = i5;
        }
        this.f77390c += j2;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeByte(int i2) {
        m0(i2);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeInt(int i2) {
        p0(i2);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeShort(int i2) {
        v0(i2);
        return this;
    }

    @Override // okio.BufferedSink
    public final BufferedSink x(long j2) {
        q0(SegmentedByteString.d(j2));
        return this;
    }

    @Override // okio.BufferedSource
    public final String x0() {
        return Z(Long.MAX_VALUE);
    }

    public final long y(byte b2, long j2, long j3) {
        Segment segment;
        long j4 = 0;
        if (0 > j2 || j2 > j3) {
            throw new IllegalArgumentException(("size=" + this.f77390c + " fromIndex=" + j2 + " toIndex=" + j3).toString());
        }
        long j5 = this.f77390c;
        if (j3 > j5) {
            j3 = j5;
        }
        if (j2 == j3 || (segment = this.f77389b) == null) {
            return -1L;
        }
        if (j5 - j2 < j2) {
            while (j5 > j2) {
                segment = segment.g;
                segment.getClass();
                j5 -= (long) (segment.f77448c - segment.f77447b);
            }
            while (j5 < j3) {
                byte[] bArr = segment.f77446a;
                int iMin = (int) Math.min(segment.f77448c, (((long) segment.f77447b) + j3) - j5);
                for (int i2 = (int) ((((long) segment.f77447b) + j2) - j5); i2 < iMin; i2++) {
                    if (bArr[i2] == b2) {
                        return ((long) (i2 - segment.f77447b)) + j5;
                    }
                }
                j5 += (long) (segment.f77448c - segment.f77447b);
                segment = segment.f77450f;
                segment.getClass();
                j2 = j5;
            }
            return -1L;
        }
        while (true) {
            long j6 = ((long) (segment.f77448c - segment.f77447b)) + j4;
            if (j6 > j2) {
                break;
            }
            segment = segment.f77450f;
            segment.getClass();
            j4 = j6;
        }
        while (j4 < j3) {
            byte[] bArr2 = segment.f77446a;
            int iMin2 = (int) Math.min(segment.f77448c, (((long) segment.f77447b) + j3) - j4);
            for (int i3 = (int) ((((long) segment.f77447b) + j2) - j4); i3 < iMin2; i3++) {
                if (bArr2[i3] == b2) {
                    return ((long) (i3 - segment.f77447b)) + j4;
                }
            }
            j4 += (long) (segment.f77448c - segment.f77447b);
            segment = segment.f77450f;
            segment.getClass();
            j2 = j4;
        }
        return -1L;
    }

    public final long z(long j2, ByteString byteString) {
        byteString.getClass();
        long j3 = 0;
        if (j2 < 0) {
            b21.n(d21.g(j2, "fromIndex < 0: "));
            return 0L;
        }
        Segment segment = this.f77389b;
        if (segment == null) {
            return -1L;
        }
        long j4 = this.f77390c;
        if (j4 - j2 < j2) {
            while (j4 > j2) {
                segment = segment.g;
                segment.getClass();
                j4 -= (long) (segment.f77448c - segment.f77447b);
            }
            if (byteString.e() == 2) {
                byte bJ = byteString.j(0);
                byte bJ2 = byteString.j(1);
                while (j4 < this.f77390c) {
                    byte[] bArr = segment.f77446a;
                    int i2 = segment.f77448c;
                    for (int i3 = (int) ((((long) segment.f77447b) + j2) - j4); i3 < i2; i3++) {
                        byte b2 = bArr[i3];
                        if (b2 == bJ || b2 == bJ2) {
                            return ((long) (i3 - segment.f77447b)) + j4;
                        }
                    }
                    j4 += (long) (segment.f77448c - segment.f77447b);
                    segment = segment.f77450f;
                    segment.getClass();
                    j2 = j4;
                }
            } else {
                byte[] bArrI = byteString.getData();
                while (j4 < this.f77390c) {
                    byte[] bArr2 = segment.f77446a;
                    int i4 = segment.f77448c;
                    for (int i5 = (int) ((((long) segment.f77447b) + j2) - j4); i5 < i4; i5++) {
                        byte b3 = bArr2[i5];
                        for (byte b4 : bArrI) {
                            if (b3 == b4) {
                                return ((long) (i5 - segment.f77447b)) + j4;
                            }
                        }
                    }
                    j4 += (long) (segment.f77448c - segment.f77447b);
                    segment = segment.f77450f;
                    segment.getClass();
                    j2 = j4;
                }
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (segment.f77448c - segment.f77447b)) + j3;
            if (j5 > j2) {
                break;
            }
            segment = segment.f77450f;
            segment.getClass();
            j3 = j5;
        }
        if (byteString.e() == 2) {
            byte bJ3 = byteString.j(0);
            byte bJ4 = byteString.j(1);
            while (j3 < this.f77390c) {
                byte[] bArr3 = segment.f77446a;
                int i6 = segment.f77448c;
                for (int i7 = (int) ((((long) segment.f77447b) + j2) - j3); i7 < i6; i7++) {
                    byte b5 = bArr3[i7];
                    if (b5 == bJ3 || b5 == bJ4) {
                        return ((long) (i7 - segment.f77447b)) + j3;
                    }
                }
                j3 += (long) (segment.f77448c - segment.f77447b);
                segment = segment.f77450f;
                segment.getClass();
                j2 = j3;
            }
        } else {
            byte[] bArrI2 = byteString.getData();
            while (j3 < this.f77390c) {
                byte[] bArr4 = segment.f77446a;
                int i8 = segment.f77448c;
                for (int i9 = (int) ((((long) segment.f77447b) + j2) - j3); i9 < i8; i9++) {
                    byte b6 = bArr4[i9];
                    for (byte b7 : bArrI2) {
                        if (b6 == b7) {
                            return ((long) (i9 - segment.f77447b)) + j3;
                        }
                    }
                }
                j3 += (long) (segment.f77448c - segment.f77447b);
                segment = segment.f77450f;
                segment.getClass();
                j2 = j3;
            }
        }
        return -1L;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i2 = iRemaining;
        while (i2 > 0) {
            Segment segmentK0 = k0(1);
            int iMin = Math.min(i2, 8192 - segmentK0.f77448c);
            byteBuffer.get(segmentK0.f77446a, segmentK0.f77448c, iMin);
            i2 -= iMin;
            segmentK0.f77448c += iMin;
        }
        this.f77390c += (long) iRemaining;
        return iRemaining;
    }

    /* JADX INFO: renamed from: write, reason: collision with other method in class */
    public final void m87write(byte[] bArr) {
        bArr.getClass();
        write(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink write(byte[] bArr) {
        m87write(bArr);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Segment segment = this.f77389b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), segment.f77448c - segment.f77447b);
        byteBuffer.put(segment.f77446a, segment.f77447b, iMin);
        int i2 = segment.f77447b + iMin;
        segment.f77447b = i2;
        this.f77390c -= (long) iMin;
        if (i2 == segment.f77448c) {
            this.f77389b = segment.a();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j2) {
        buffer.getClass();
        if (j2 >= 0) {
            long j3 = this.f77390c;
            if (j3 == 0) {
                return -1L;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            buffer.D(this, j2);
            return j2;
        }
        b21.n(d21.g(j2, "byteCount < 0: "));
        return 0L;
    }
}

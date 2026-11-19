package okio.internal;

import defpackage.b21;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.text.Charsets;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentedByteString;

/* JADX INFO: renamed from: okio.internal.-Buffer, reason: invalid class name */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Buffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f77460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f77461b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(Charsets.UTF_8);
        bytes.getClass();
        f77460a = bytes;
        f77461b = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final long a(okio.Buffer buffer, ByteString byteString, long j2, long j3, int i2) {
        Segment segment;
        long j4 = j2;
        long j5 = j3;
        buffer.getClass();
        byteString.getClass();
        long j6 = i2;
        SegmentedByteString.b(byteString.e(), 0L, j6);
        if (i2 <= 0) {
            md.n("byteCount == 0");
            return 0L;
        }
        if (j4 < 0) {
            b21.n(d21.g(j4, "fromIndex < 0: "));
            return 0L;
        }
        if (j4 > j5) {
            StringBuilder sbQ = pq0.q(j4, "fromIndex > toIndex: ", " > ");
            sbQ.append(j5);
            throw new IllegalArgumentException(sbQ.toString().toString());
        }
        long j7 = buffer.f77390c;
        if (j5 > j7) {
            j5 = j7;
        }
        if (j4 == j5 || (segment = buffer.f77389b) == null) {
            return -1L;
        }
        long j8 = 0;
        if (j7 - j4 < j4) {
            while (j7 > j4) {
                segment = segment.g;
                segment.getClass();
                j7 -= (long) (segment.f77448c - segment.f77447b);
            }
            byte[] data = byteString.getData();
            byte b2 = data[0];
            long jMin = Math.min(j5, (buffer.f77390c - j6) + 1);
            while (j7 < jMin) {
                byte[] bArr = segment.f77446a;
                int iMin = (int) Math.min(segment.f77448c, (((long) segment.f77447b) + jMin) - j7);
                for (int i3 = (int) ((((long) segment.f77447b) + j4) - j7); i3 < iMin; i3++) {
                    if (bArr[i3] == b2 && b(segment, i3 + 1, data, 1, i2)) {
                        return ((long) (i3 - segment.f77447b)) + j7;
                    }
                }
                j7 += (long) (segment.f77448c - segment.f77447b);
                segment = segment.f77450f;
                segment.getClass();
                j4 = j7;
            }
            return -1L;
        }
        while (true) {
            long j9 = j8 + ((long) (segment.f77448c - segment.f77447b));
            if (j9 > j4) {
                break;
            }
            segment = segment.f77450f;
            segment.getClass();
            j8 = j9;
        }
        byte[] data2 = byteString.getData();
        byte b3 = data2[0];
        long jMin2 = Math.min(j5, (buffer.f77390c - j6) + 1);
        while (j8 < jMin2) {
            byte[] bArr2 = segment.f77446a;
            int iMin2 = (int) Math.min(segment.f77448c, (((long) segment.f77447b) + jMin2) - j8);
            for (int i4 = (int) ((((long) segment.f77447b) + j4) - j8); i4 < iMin2; i4++) {
                if (bArr2[i4] == b3 && b(segment, i4 + 1, data2, 1, i2)) {
                    return ((long) (i4 - segment.f77447b)) + j8;
                }
            }
            j8 += (long) (segment.f77448c - segment.f77447b);
            segment = segment.f77450f;
            segment.getClass();
            j4 = j8;
        }
        return -1L;
    }

    public static final boolean b(Segment segment, int i2, byte[] bArr, int i3, int i4) {
        int i5 = segment.f77448c;
        byte[] bArr2 = segment.f77446a;
        while (i3 < i4) {
            if (i2 == i5) {
                segment = segment.f77450f;
                segment.getClass();
                byte[] bArr3 = segment.f77446a;
                bArr2 = bArr3;
                i2 = segment.f77447b;
                i5 = segment.f77448c;
            }
            if (bArr2[i2] != bArr[i3]) {
                return false;
            }
            i2++;
            i3++;
        }
        return true;
    }

    public static final String c(okio.Buffer buffer, long j2) {
        buffer.getClass();
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (buffer.w(j3) == 13) {
                String strG = buffer.G(j3, Charsets.UTF_8);
                buffer.skip(2L);
                return strG;
            }
        }
        buffer.getClass();
        String strG2 = buffer.G(j2, Charsets.UTF_8);
        buffer.skip(1L);
        return strG2;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a4 A[LOOP:0: B:8:0x001f->B:49:0x00a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a3 A[SYNTHETIC] */
    public static final int d(okio.Buffer buffer, Options options, boolean z) {
        int i2;
        int i3;
        int i4;
        Segment segment;
        int i5;
        buffer.getClass();
        options.getClass();
        Segment segment2 = buffer.f77389b;
        if (segment2 == null) {
            return z ? -2 : -1;
        }
        byte[] bArr = segment2.f77446a;
        int i6 = segment2.f77447b;
        int i7 = segment2.f77448c;
        int[] iArr = options.d;
        Segment segment3 = segment2;
        int i8 = -1;
        int i9 = 0;
        loop0: while (true) {
            int i10 = i9 + 1;
            int i11 = iArr[i9];
            int i12 = i9 + 2;
            int i13 = iArr[i10];
            if (i13 != -1) {
                i8 = i13;
            }
            if (segment3 == null) {
                break;
            }
            if (i11 >= 0) {
                int i14 = i6 + 1;
                int i15 = bArr[i6] & 255;
                int i16 = i12 + i11;
                while (i12 != i16) {
                    if (i15 == iArr[i12]) {
                        i2 = iArr[i12 + i11];
                        if (i14 == i7) {
                            segment3 = segment3.f77450f;
                            segment3.getClass();
                            int i17 = segment3.f77447b;
                            byte[] bArr2 = segment3.f77446a;
                            i3 = segment3.f77448c;
                            if (segment3 == segment2) {
                                i4 = i17;
                                bArr = bArr2;
                                segment3 = null;
                            } else {
                                i4 = i17;
                                bArr = bArr2;
                            }
                        } else {
                            i3 = i7;
                            i4 = i14;
                        }
                        if (i2 >= 0) {
                            return i2;
                        }
                        int i18 = i3;
                        i9 = -i2;
                        i6 = i4;
                        i7 = i18;
                    } else {
                        i12++;
                    }
                }
                return i8;
            }
            int i19 = (i11 * (-1)) + i12;
            while (true) {
                int i20 = i6 + 1;
                int i21 = i12 + 1;
                if ((bArr[i6] & 255) == iArr[i12]) {
                    boolean z2 = i21 == i19;
                    if (i20 == i7) {
                        segment3.getClass();
                        Segment segment4 = segment3.f77450f;
                        segment4.getClass();
                        i4 = segment4.f77447b;
                        byte[] bArr3 = segment4.f77446a;
                        i5 = segment4.f77448c;
                        if (segment4 != segment2) {
                            segment = segment4;
                            bArr = bArr3;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr3;
                            segment = null;
                        }
                    } else {
                        segment = segment3;
                        i5 = i7;
                        i4 = i20;
                    }
                    if (z2) {
                        i2 = iArr[i21];
                        int i22 = i5;
                        segment3 = segment;
                        i3 = i22;
                        break;
                    }
                    i6 = i4;
                    i7 = i5;
                    segment3 = segment;
                    i12 = i21;
                }
                return i8;
            }
            if (i2 >= 0) {
                return i2;
            }
            int i110 = i3;
            i9 = -i2;
            i6 = i4;
            i7 = i110;
        }
        if (z) {
            return -2;
        }
        return i8;
    }
}

package okio;

import defpackage.b21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: renamed from: okio.SegmentedByteString, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "", "", "segments", "", "directory", "<init>", "([[B[I)V", "Ljava/lang/Object;", "writeReplace", "()Ljava/lang/Object;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class C0407SegmentedByteString extends ByteString {
    public final transient byte[][] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int[] f77454h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0407SegmentedByteString(byte[][] bArr, int[] iArr) {
        super(ByteString.f77399f.data);
        bArr.getClass();
        iArr.getClass();
        this.g = bArr;
        this.f77454h = iArr;
    }

    private final Object writeReplace() {
        return F();
    }

    @Override // okio.ByteString
    public final ByteString B() {
        return F().B();
    }

    @Override // okio.ByteString
    public final void D(int i2, Buffer buffer) {
        int iA = okio.internal.SegmentedByteString.a(this, 0);
        int i3 = 0;
        while (i3 < i2) {
            int[] iArr = this.f77454h;
            int i4 = iA == 0 ? 0 : iArr[iA - 1];
            int i5 = iArr[iA] - i4;
            byte[][] bArr = this.g;
            int i6 = iArr[bArr.length + iA];
            int iMin = Math.min(i2, i5 + i4) - i3;
            int i7 = (i3 - i4) + i6;
            Segment segment = new Segment(bArr[iA], i7, i7 + iMin, true, false);
            Segment segment2 = buffer.f77389b;
            if (segment2 == null) {
                segment.g = segment;
                segment.f77450f = segment;
                buffer.f77389b = segment;
            } else {
                Segment segment3 = segment2.g;
                segment3.getClass();
                segment3.b(segment);
            }
            i3 += iMin;
            iA++;
        }
        buffer.f77390c += (long) i2;
    }

    public final byte[] E() {
        byte[] bArr = new byte[e()];
        byte[][] bArr2 = this.g;
        int length = bArr2.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.f77454h;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = i6 - i3;
            ArraysKt.j(i4, bArr2[i2], i5, bArr, i5 + i7);
            i4 += i7;
            i2++;
            i3 = i6;
        }
        return bArr;
    }

    public final ByteString F() {
        return new ByteString(E());
    }

    @Override // okio.ByteString
    public final String a() {
        throw null;
    }

    @Override // okio.ByteString
    public final void c(int i2, int i3, byte[] bArr, int i4) {
        bArr.getClass();
        long j2 = i4;
        SegmentedByteString.b(e(), i2, j2);
        SegmentedByteString.b(bArr.length, i3, j2);
        int i5 = i4 + i2;
        int iA = okio.internal.SegmentedByteString.a(this, i2);
        while (i2 < i5) {
            int[] iArr = this.f77454h;
            int i6 = iA == 0 ? 0 : iArr[iA - 1];
            int i7 = iArr[iA] - i6;
            byte[][] bArr2 = this.g;
            int i8 = iArr[bArr2.length + iA];
            int iMin = Math.min(i5, i7 + i6) - i2;
            int i9 = (i2 - i6) + i8;
            ArraysKt.j(i3, bArr2[iA], i9, bArr, i9 + iMin);
            i3 += iMin;
            i2 += iMin;
            iA++;
        }
    }

    @Override // okio.ByteString
    public final ByteString d(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.g;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f77454h;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            messageDigest.update(bArr[i2], i4, i5 - i3);
            i2++;
            i3 = i5;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new ByteString(bArrDigest);
    }

    @Override // okio.ByteString
    public final int e() {
        return this.f77454h[this.g.length - 1];
    }

    @Override // okio.ByteString
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.e() == e() && w(0, byteString, e())) {
                return true;
            }
        }
        return false;
    }

    @Override // okio.ByteString
    public final String f() {
        return F().f();
    }

    @Override // okio.ByteString
    public final int g(int i2, byte[] bArr) {
        bArr.getClass();
        return F().g(i2, bArr);
    }

    @Override // okio.ByteString
    public final int hashCode() {
        int i2 = this.f77401c;
        if (i2 != 0) {
            return i2;
        }
        byte[][] bArr = this.g;
        int length = bArr.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            int[] iArr = this.f77454h;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            byte[] bArr2 = bArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr2[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.f77401c = i4;
        return i4;
    }

    @Override // okio.ByteString
    /* JADX INFO: renamed from: i */
    public final byte[] getData() {
        return E();
    }

    @Override // okio.ByteString
    public final byte j(int i2) {
        byte[][] bArr = this.g;
        int length = bArr.length - 1;
        int[] iArr = this.f77454h;
        SegmentedByteString.b(iArr[length], i2, 1L);
        int iA = okio.internal.SegmentedByteString.a(this, i2);
        return bArr[iA][(i2 - (iA == 0 ? 0 : iArr[iA - 1])) + iArr[bArr.length + iA]];
    }

    @Override // okio.ByteString
    public final int k(int i2, byte[] bArr) {
        bArr.getClass();
        return F().k(i2, bArr);
    }

    @Override // okio.ByteString
    public final String toString() {
        return F().toString();
    }

    @Override // okio.ByteString
    public final boolean v(int i2, int i3, byte[] bArr, int i4) {
        bArr.getClass();
        if (i2 < 0 || i2 > e() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int i5 = i4 + i2;
        int iA = okio.internal.SegmentedByteString.a(this, i2);
        while (i2 < i5) {
            int[] iArr = this.f77454h;
            int i6 = iA == 0 ? 0 : iArr[iA - 1];
            int i7 = iArr[iA] - i6;
            byte[][] bArr2 = this.g;
            int i8 = iArr[bArr2.length + iA];
            int iMin = Math.min(i5, i7 + i6) - i2;
            if (!SegmentedByteString.a((i2 - i6) + i8, bArr2[iA], i3, bArr, iMin)) {
                return false;
            }
            i3 += iMin;
            i2 += iMin;
            iA++;
        }
        return true;
    }

    @Override // okio.ByteString
    public final boolean w(int i2, ByteString byteString, int i3) {
        byteString.getClass();
        if (i2 >= 0 && i2 <= e() - i3) {
            int i4 = i3 + i2;
            int iA = okio.internal.SegmentedByteString.a(this, i2);
            int i5 = 0;
            while (i2 < i4) {
                int[] iArr = this.f77454h;
                int i6 = iA == 0 ? 0 : iArr[iA - 1];
                int i7 = iArr[iA] - i6;
                byte[][] bArr = this.g;
                int i8 = iArr[bArr.length + iA];
                int iMin = Math.min(i4, i7 + i6) - i2;
                if (byteString.v(i5, (i2 - i6) + i8, bArr[iA], iMin)) {
                    i5 += iMin;
                    i2 += iMin;
                    iA++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // okio.ByteString
    public final String x(Charset charset) {
        charset.getClass();
        return F().x(charset);
    }

    @Override // okio.ByteString
    public final ByteString y(int i2, int i3) {
        if (i2 < 0) {
            b21.n(n00.m(i2, "beginIndex=", " < 0"));
            return null;
        }
        if (i3 > e()) {
            StringBuilder sbQ = fc.q(i3, "endIndex=", " > length(");
            sbQ.append(e());
            sbQ.append(')');
            throw new IllegalArgumentException(sbQ.toString().toString());
        }
        int i4 = i3 - i2;
        if (i4 < 0) {
            b21.n(o60.h(i3, i2, "endIndex=", " < beginIndex="));
            return null;
        }
        if (i2 == 0 && i3 == e()) {
            return this;
        }
        if (i2 == i3) {
            return ByteString.f77399f;
        }
        int iA = okio.internal.SegmentedByteString.a(this, i2);
        int iA2 = okio.internal.SegmentedByteString.a(this, i3 - 1);
        byte[][] bArr = this.g;
        byte[][] bArr2 = (byte[][]) ArraysKt.q(iA, iA2 + 1, bArr);
        int[] iArr = new int[bArr2.length * 2];
        int[] iArr2 = this.f77454h;
        if (iA <= iA2) {
            int i5 = iA;
            int i6 = 0;
            while (true) {
                iArr[i6] = Math.min(iArr2[i5] - i2, i4);
                int i7 = i6 + 1;
                iArr[i6 + bArr2.length] = iArr2[bArr.length + i5];
                if (i5 == iA2) {
                    break;
                }
                i5++;
                i6 = i7;
            }
        }
        int i8 = iA != 0 ? iArr2[iA - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i2 - i8) + iArr[length];
        return new C0407SegmentedByteString(bArr2, iArr);
    }
}

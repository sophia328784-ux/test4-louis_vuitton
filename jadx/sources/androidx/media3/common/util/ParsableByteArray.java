package androidx.media3.common.util;

import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CheckReturnValue;
import defpackage.az;
import defpackage.d20;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.pq0;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
public final class ParsableByteArray {
    public static final char[] d = {'\r', '\n'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final char[] f14192e = {'\n'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableSet f14193f = ImmutableSet.r(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    public static final AtomicBoolean g = new AtomicBoolean();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f14194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14196c;

    public ParsableByteArray(int i2) {
        this.f14194a = new byte[i2];
        this.f14196c = i2;
    }

    public static int b(int i2, int i3, int i4, int i5) {
        byte b2 = (byte) i4;
        return Ints.d((byte) 0, UnsignedBytes.a(((i2 & 7) << 2) | ((i3 & 48) >> 4)), UnsignedBytes.a(((((byte) i3) & 15) << 4) | ((b2 & 60) >> 2)), UnsignedBytes.a(((b2 & 3) << 6) | (((byte) i5) & 63)));
    }

    public static int d(Charset charset) {
        Preconditions.e(charset, "Unsupported charset: %s", f14193f.contains(charset));
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    public static boolean e(byte b2) {
        return (b2 & h.a.f24176e) == 128;
    }

    public final int A() {
        f(1);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        this.f14195b = i2 + 1;
        return bArr[i2] & 255;
    }

    public final int B() {
        f(4);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = (bArr[i2] & 255) << 8;
        this.f14195b = i2 + 2;
        int i5 = (bArr[i3] & 255) | i4;
        this.f14195b = i2 + 4;
        return i5;
    }

    public final long C() {
        f(4);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        long j2 = (((long) bArr[i2]) & 255) << 24;
        int i4 = i2 + 2;
        this.f14195b = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        int i5 = i2 + 3;
        this.f14195b = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 8);
        this.f14195b = i2 + 4;
        return (((long) bArr[i5]) & 255) | j4;
    }

    public final int D() {
        f(3);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = (bArr[i2] & 255) << 16;
        int i5 = i2 + 2;
        this.f14195b = i5;
        int i6 = ((bArr[i3] & 255) << 8) | i4;
        this.f14195b = i2 + 3;
        return (bArr[i5] & 255) | i6;
    }

    public final int E() {
        int iM = m();
        if (iM >= 0) {
            return iM;
        }
        md.k(pq0.k(iM, "Top bit not zero: "));
        return 0;
    }

    public final int F() {
        long j2 = 0;
        for (int i2 = 0; i2 < 9; i2++) {
            if (this.f14195b == this.f14196c) {
                md.k("Attempting to read a byte over the limit.");
                return 0;
            }
            long jA = A();
            j2 |= (127 & jA) << (i2 * 7);
            if ((jA & 128) == 0) {
                break;
            }
        }
        return Ints.b(j2);
    }

    public final long G() {
        long jU = u();
        if (jU >= 0) {
            return jU;
        }
        md.k(d21.g(jU, "Top bit not zero: "));
        return 0L;
    }

    public final int H() {
        f(2);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = (bArr[i2] & 255) << 8;
        this.f14195b = i2 + 2;
        return (bArr[i3] & 255) | i4;
    }

    public final long I() {
        int i2;
        f(1);
        long j2 = this.f14194a[this.f14195b];
        int i3 = 7;
        while (true) {
            if (i3 >= 0) {
                int i4 = 1 << i3;
                if ((((long) i4) & j2) == 0) {
                    if (i3 < 6) {
                        j2 &= (long) (i4 - 1);
                        i2 = 7 - i3;
                        break;
                    }
                    if (i3 == 7) {
                        i2 = 1;
                        break;
                    }
                } else {
                    i3--;
                }
            }
            i2 = 0;
            break;
        }
        if (i2 == 0) {
            throw new NumberFormatException(d21.g(j2, "Invalid UTF-8 sequence first byte: "));
        }
        f(i2);
        for (int i5 = 1; i5 < i2; i5++) {
            byte b2 = this.f14194a[this.f14195b + i5];
            if ((b2 & h.a.f24176e) != 128) {
                throw new NumberFormatException(d21.g(j2, "Invalid UTF-8 sequence continuation byte: "));
            }
            j2 = (j2 << 6) | ((long) (b2 & 63));
        }
        this.f14195b += i2;
        return j2;
    }

    public final Charset J() {
        if (a() >= 3) {
            byte[] bArr = this.f14194a;
            int i2 = this.f14195b;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f14195b = i2 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() < 2) {
            return null;
        }
        byte[] bArr2 = this.f14194a;
        int i3 = this.f14195b;
        byte b2 = bArr2[i3];
        if (b2 == -2 && bArr2[i3 + 1] == -1) {
            this.f14195b = i3 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b2 != -1 || bArr2[i3 + 1] != -2) {
            return null;
        }
        this.f14195b = i3 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final void K(int i2) {
        byte[] bArr = this.f14194a;
        if (bArr.length < i2) {
            bArr = new byte[i2];
        }
        L(i2, bArr);
    }

    public final void L(int i2, byte[] bArr) {
        this.f14194a = bArr;
        this.f14196c = i2;
        this.f14195b = 0;
    }

    public final void M(int i2) {
        Preconditions.g(i2 >= 0 && i2 <= this.f14194a.length);
        this.f14196c = i2;
    }

    public final void N(int i2) {
        Preconditions.g(i2 >= 0 && i2 <= this.f14196c);
        this.f14195b = i2;
    }

    public final void O(int i2) {
        N(this.f14195b + i2);
    }

    public final int a() {
        return Math.max(this.f14196c - this.f14195b, 0);
    }

    public final void c(int i2) {
        byte[] bArr = this.f14194a;
        if (i2 > bArr.length) {
            this.f14194a = Arrays.copyOf(bArr, i2);
        }
    }

    public final void f(int i2) {
        if (!g.get() || a() >= i2) {
            return;
        }
        no0.s(fc.q(i2, "bytesNeeded= ", ", bytesLeft="), a());
    }

    public final char g(int i2, ByteOrder byteOrder) {
        byte b2;
        byte b3;
        f(2);
        ByteOrder byteOrder2 = ByteOrder.BIG_ENDIAN;
        byte[] bArr = this.f14194a;
        int i3 = this.f14195b;
        if (byteOrder == byteOrder2) {
            int i4 = i3 + i2;
            b2 = bArr[i4];
            b3 = bArr[i4 + 1];
        } else {
            int i5 = i3 + i2;
            b2 = bArr[i5 + 1];
            b3 = bArr[i5];
        }
        return (char) ((b3 & 255) | (b2 << 8));
    }

    public final int h(Charset charset) {
        int codePoint;
        int i2;
        Preconditions.e(charset, "Unsupported charset: %s", f14193f.contains(charset));
        if (a() < d(charset)) {
            d20.b(this.f14195b, this.f14196c);
            return 0;
        }
        int i3 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b2 = this.f14194a[this.f14195b];
            if ((b2 & 128) == 0) {
                codePoint = Byte.toUnsignedInt(b2);
                return (codePoint << 8) | i3;
            }
            return 0;
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            byte b3 = this.f14194a[this.f14195b];
            if ((b3 & 128) == 0) {
                i2 = 1;
            } else if ((b3 & h.a.K) == 192 && a() >= 2 && e(this.f14194a[this.f14195b + 1])) {
                i2 = 2;
            } else if ((this.f14194a[this.f14195b] & 240) == 224 && a() >= 3 && e(this.f14194a[this.f14195b + 1]) && e(this.f14194a[this.f14195b + 2])) {
                i2 = 3;
            } else {
                i2 = ((this.f14194a[this.f14195b] & 248) == 240 && a() >= 4 && e(this.f14194a[this.f14195b + 1]) && e(this.f14194a[this.f14195b + 2]) && e(this.f14194a[this.f14195b + 3])) ? 4 : 0;
            }
            if (i2 == 1) {
                codePoint = Byte.toUnsignedInt(this.f14194a[this.f14195b]);
            } else if (i2 == 2) {
                byte[] bArr = this.f14194a;
                int i4 = this.f14195b;
                codePoint = b(0, 0, bArr[i4], bArr[i4 + 1]);
            } else {
                if (i2 != 3) {
                    if (i2 == 4) {
                        byte[] bArr2 = this.f14194a;
                        int i5 = this.f14195b;
                        codePoint = b(bArr2[i5], bArr2[i5 + 1], bArr2[i5 + 2], bArr2[i5 + 3]);
                    }
                    return 0;
                }
                byte[] bArr3 = this.f14194a;
                int i6 = this.f14195b;
                codePoint = b(0, bArr3[i6] & 15, bArr3[i6 + 1], bArr3[i6 + 2]);
            }
            i3 = i2;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char cG = g(0, byteOrder);
            if (!Character.isHighSurrogate(cG) || a() < 4) {
                codePoint = cG;
                i3 = 2;
            } else {
                codePoint = Character.toCodePoint(cG, g(2, byteOrder));
                i3 = 4;
            }
        }
        return (codePoint << 8) | i3;
    }

    public final int i() {
        if (a() < 4) {
            d20.b(this.f14195b, this.f14196c);
            return 0;
        }
        int iM = m();
        this.f14195b -= 4;
        return iM;
    }

    public final int j() {
        f(1);
        return this.f14194a[this.f14195b] & 255;
    }

    public final void k(int i2, int i3, byte[] bArr) {
        f(i3);
        System.arraycopy(this.f14194a, this.f14195b, bArr, i2, i3);
        this.f14195b += i3;
    }

    public final char l(Charset charset, char[] cArr) {
        int iH;
        if (a() >= d(charset) && (iH = h(charset)) != 0) {
            long j2 = iH >>> 8;
            Preconditions.d(j2, "out of range: %s", (j2 >> 32) == 0);
            int i2 = (int) j2;
            if (!Character.isSupplementaryCodePoint(i2)) {
                long j3 = i2;
                char c2 = (char) j3;
                Preconditions.d(j3, "Out of range: %s", ((long) c2) == j3);
                for (char c3 : cArr) {
                    if (c3 == c2) {
                        this.f14195b = Ints.b(iH & 255) + this.f14195b;
                        return c2;
                    }
                }
            }
        }
        return (char) 0;
    }

    public final int m() {
        f(4);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = (bArr[i2] & 255) << 24;
        int i5 = i2 + 2;
        this.f14195b = i5;
        int i6 = ((bArr[i3] & 255) << 16) | i4;
        int i7 = i2 + 3;
        this.f14195b = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 8);
        this.f14195b = i2 + 4;
        return (bArr[i7] & 255) | i8;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ae A[SYNTHETIC] */
    public final String n(Charset charset) {
        int i2;
        byte[] bArr;
        Preconditions.e(charset, "Unsupported charset: %s", f14193f.contains(charset));
        if (a() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            J();
        }
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(charset2)) {
            i2 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                az.m(charset, "Unsupported charset: ");
                return null;
            }
            i2 = 2;
        }
        int i3 = this.f14195b;
        while (true) {
            int i4 = this.f14196c;
            if (i3 >= i4 - (i2 - 1)) {
                i3 = i4;
                break;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && Util.M(this.f14194a[i3])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr2 = this.f14194a;
                if (bArr2[i3] == 0 && Util.M(bArr2[i3 + 1])) {
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.f14194a;
                    if (bArr[i3 + 1] == 0 && Util.M(bArr[i3])) {
                        break;
                    }
                }
                i3 += i2;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.f14194a;
                    if (bArr[i3 + 1] == 0) {
                        continue;
                    }
                }
                i3 += i2;
            }
        }
        String strY = y(i3 - this.f14195b, charset);
        if (this.f14195b != this.f14196c && l(charset, d) == '\r') {
            l(charset, f14192e);
        }
        return strY;
    }

    public final int o() {
        f(4);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = bArr[i2] & 255;
        int i5 = i2 + 2;
        this.f14195b = i5;
        int i6 = ((bArr[i3] & 255) << 8) | i4;
        int i7 = i2 + 3;
        this.f14195b = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 16);
        this.f14195b = i2 + 4;
        return ((bArr[i7] & 255) << 24) | i8;
    }

    public final long p() {
        f(8);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        long j2 = ((long) bArr[i2]) & 255;
        int i4 = i2 + 2;
        this.f14195b = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        int i5 = i2 + 3;
        this.f14195b = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 16);
        int i6 = i2 + 4;
        this.f14195b = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 24);
        int i7 = i2 + 5;
        this.f14195b = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 32);
        int i8 = i2 + 6;
        this.f14195b = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 40);
        int i9 = i2 + 7;
        this.f14195b = i9;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 48);
        this.f14195b = i2 + 8;
        return ((((long) bArr[i9]) & 255) << 56) | j8;
    }

    public final short q() {
        f(2);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = bArr[i2] & 255;
        this.f14195b = i2 + 2;
        return (short) (((bArr[i3] & 255) << 8) | i4);
    }

    public final long r() {
        f(4);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        long j2 = ((long) bArr[i2]) & 255;
        int i4 = i2 + 2;
        this.f14195b = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        int i5 = i2 + 3;
        this.f14195b = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 16);
        this.f14195b = i2 + 4;
        return ((((long) bArr[i5]) & 255) << 24) | j4;
    }

    public final int s() {
        int iO = o();
        if (iO >= 0) {
            return iO;
        }
        md.k(pq0.k(iO, "Top bit not zero: "));
        return 0;
    }

    public final int t() {
        f(2);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = bArr[i2] & 255;
        this.f14195b = i2 + 2;
        return ((bArr[i3] & 255) << 8) | i4;
    }

    public final long u() {
        f(8);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        long j2 = (((long) bArr[i2]) & 255) << 56;
        int i4 = i2 + 2;
        this.f14195b = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 48);
        int i5 = i2 + 3;
        this.f14195b = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 40);
        int i6 = i2 + 4;
        this.f14195b = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i7 = i2 + 5;
        this.f14195b = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 24);
        int i8 = i2 + 6;
        this.f14195b = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 16);
        int i9 = i2 + 7;
        this.f14195b = i9;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 8);
        this.f14195b = i2 + 8;
        return (((long) bArr[i9]) & 255) | j8;
    }

    public final String v() {
        if (a() == 0) {
            return null;
        }
        int i2 = this.f14195b;
        while (i2 < this.f14196c && this.f14194a[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.f14194a;
        int i3 = this.f14195b;
        String str = Util.f14242a;
        String str2 = new String(bArr, i3, i2 - i3, StandardCharsets.UTF_8);
        this.f14195b = i2;
        if (i2 < this.f14196c) {
            this.f14195b = i2 + 1;
        }
        return str2;
    }

    public final String w(int i2) {
        f(i2);
        if (i2 == 0) {
            return "";
        }
        int i3 = this.f14195b;
        int i4 = (i3 + i2) - 1;
        int i5 = (i4 >= this.f14196c || this.f14194a[i4] != 0) ? i2 : i2 - 1;
        byte[] bArr = this.f14194a;
        String str = Util.f14242a;
        String str2 = new String(bArr, i3, i5, StandardCharsets.UTF_8);
        this.f14195b += i2;
        return str2;
    }

    public final short x() {
        f(2);
        byte[] bArr = this.f14194a;
        int i2 = this.f14195b;
        int i3 = i2 + 1;
        this.f14195b = i3;
        int i4 = (bArr[i2] & 255) << 8;
        this.f14195b = i2 + 2;
        return (short) ((bArr[i3] & 255) | i4);
    }

    public final String y(int i2, Charset charset) {
        f(i2);
        String str = new String(this.f14194a, this.f14195b, i2, charset);
        this.f14195b += i2;
        return str;
    }

    public final int z() {
        return A() | (A() << 21) | (A() << 14) | (A() << 7);
    }

    public ParsableByteArray() {
        this.f14194a = Util.f14243b;
    }

    public ParsableByteArray(byte[] bArr) {
        this.f14194a = bArr;
        this.f14196c = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i2) {
        this.f14194a = bArr;
        this.f14196c = i2;
    }
}

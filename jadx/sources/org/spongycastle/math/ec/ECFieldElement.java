package org.spongycastle.math.ec;

import defpackage.md;
import defpackage.r81;
import defpackage.v7;
import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECFieldElement implements ECConstants {
    public abstract ECFieldElement a(ECFieldElement eCFieldElement);

    public abstract ECFieldElement b();

    public int c() {
        return s().bitLength();
    }

    public abstract ECFieldElement d(ECFieldElement eCFieldElement);

    public final byte[] e() {
        int iF = (f() + 7) / 8;
        BigInteger bigIntegerS = s();
        int i2 = BigIntegers.f78264a;
        byte[] byteArray = bigIntegerS.toByteArray();
        if (byteArray.length == iF) {
            return byteArray;
        }
        int i3 = byteArray[0] == 0 ? 1 : 0;
        int length = byteArray.length - i3;
        if (length > iF) {
            md.n("standard length exceeded for value");
            return null;
        }
        byte[] bArr = new byte[iF];
        System.arraycopy(byteArray, i3, bArr, iF - length, length);
        return bArr;
    }

    public abstract int f();

    public abstract ECFieldElement g();

    public boolean h() {
        return c() == 1;
    }

    public boolean i() {
        return s().signum() == 0;
    }

    public abstract ECFieldElement j(ECFieldElement eCFieldElement);

    public ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return j(eCFieldElement).q(eCFieldElement2.j(eCFieldElement3));
    }

    public ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return j(eCFieldElement).a(eCFieldElement2.j(eCFieldElement3));
    }

    public abstract ECFieldElement m();

    public abstract ECFieldElement n();

    public abstract ECFieldElement o();

    public ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return o().a(eCFieldElement.j(eCFieldElement2));
    }

    public abstract ECFieldElement q(ECFieldElement eCFieldElement);

    public boolean r() {
        return s().testBit(0);
    }

    public abstract BigInteger s();

    public final String toString() {
        return s().toString(16);
    }

    public static class Fp extends ECFieldElement {
        public final BigInteger d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final BigInteger f77935e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final BigInteger f77936f;

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                md.n("x value invalid in Fp field element");
                throw null;
            }
            this.d = bigInteger;
            this.f77935e = bigInteger2;
            this.f77936f = bigInteger3;
        }

        public static BigInteger t(BigInteger bigInteger) {
            int iBitLength = bigInteger.bitLength();
            if (iBitLength < 96 || bigInteger.shiftRight(iBitLength - 64).longValue() != -1) {
                return null;
            }
            return ECConstants.f77916b.shiftLeft(iBitLength).subtract(bigInteger);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement a(ECFieldElement eCFieldElement) {
            BigInteger bigIntegerAdd = this.f77936f.add(eCFieldElement.s());
            BigInteger bigInteger = this.d;
            if (bigIntegerAdd.compareTo(bigInteger) >= 0) {
                bigIntegerAdd = bigIntegerAdd.subtract(bigInteger);
            }
            return new Fp(bigInteger, this.f77935e, bigIntegerAdd);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement b() {
            BigInteger bigIntegerAdd = this.f77936f.add(ECConstants.f77916b);
            BigInteger bigInteger = this.d;
            if (bigIntegerAdd.compareTo(bigInteger) == 0) {
                bigIntegerAdd = ECConstants.f77915a;
            }
            return new Fp(bigInteger, this.f77935e, bigIntegerAdd);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement d(ECFieldElement eCFieldElement) {
            BigInteger bigIntegerS = eCFieldElement.s();
            BigInteger bigInteger = this.d;
            int iBitLength = bigInteger.bitLength();
            int i2 = (iBitLength + 31) >> 5;
            int[] iArrJ = Nat.j(iBitLength, bigInteger);
            int[] iArrJ2 = Nat.j(iBitLength, bigIntegerS);
            int[] iArr = new int[i2];
            Mod.b(iArrJ, iArrJ2, iArr);
            return new Fp(bigInteger, this.f77935e, u(this.f77936f, Nat.z(i2, iArr)));
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Fp)) {
                return false;
            }
            Fp fp = (Fp) obj;
            return this.d.equals(fp.d) && this.f77936f.equals(fp.f77936f);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final int f() {
            return this.d.bitLength();
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement g() {
            BigInteger bigInteger = this.d;
            int iBitLength = bigInteger.bitLength();
            int i2 = (iBitLength + 31) >> 5;
            int[] iArr = new int[i2];
            Mod.b(Nat.j(iBitLength, bigInteger), Nat.j(iBitLength, this.f77936f), iArr);
            return new Fp(bigInteger, this.f77935e, Nat.z(i2, iArr));
        }

        public final int hashCode() {
            return this.f77936f.hashCode() ^ this.d.hashCode();
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement j(ECFieldElement eCFieldElement) {
            return new Fp(this.d, this.f77935e, u(this.f77936f, eCFieldElement.s()));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return new Fp(this.d, this.f77935e, v(this.f77936f.multiply(eCFieldElement.s()).subtract(eCFieldElement2.s().multiply(eCFieldElement3.s()))));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return new Fp(this.d, this.f77935e, v(this.f77936f.multiply(eCFieldElement.s()).add(eCFieldElement2.s().multiply(eCFieldElement3.s()))));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement m() {
            BigInteger bigInteger = this.f77936f;
            if (bigInteger.signum() == 0) {
                return this;
            }
            BigInteger bigInteger2 = this.f77935e;
            BigInteger bigInteger3 = this.d;
            return new Fp(bigInteger3, bigInteger2, bigInteger3.subtract(bigInteger));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement n() {
            ECFieldElement eCFieldElement;
            int i2;
            BigInteger bigInteger;
            if (i() || h()) {
                return this;
            }
            BigInteger bigInteger2 = this.d;
            int i3 = 0;
            ECFieldElement eCFieldElement2 = null;
            if (!bigInteger2.testBit(0)) {
                v7.h("not done yet");
                return null;
            }
            int i4 = 1;
            boolean zTestBit = bigInteger2.testBit(1);
            BigInteger bigInteger3 = this.f77935e;
            BigInteger bigInteger4 = this.f77936f;
            BigInteger bigInteger5 = ECConstants.f77916b;
            if (zTestBit) {
                Fp fp = new Fp(bigInteger2, bigInteger3, bigInteger4.modPow(bigInteger2.shiftRight(2).add(bigInteger5), bigInteger2));
                if (fp.o().equals(this)) {
                    return fp;
                }
                return null;
            }
            boolean zTestBit2 = bigInteger2.testBit(2);
            BigInteger bigIntegerV = ECConstants.f77917c;
            if (zTestBit2) {
                BigInteger bigIntegerModPow = bigInteger4.modPow(bigInteger2.shiftRight(3), bigInteger2);
                BigInteger bigIntegerU = u(bigIntegerModPow, bigInteger4);
                if (u(bigIntegerU, bigIntegerModPow).equals(bigInteger5)) {
                    Fp fp2 = new Fp(bigInteger2, bigInteger3, bigIntegerU);
                    if (fp2.o().equals(this)) {
                        return fp2;
                    }
                    return null;
                }
                Fp fp3 = new Fp(bigInteger2, bigInteger3, v(bigIntegerU.multiply(bigIntegerV.modPow(bigInteger2.shiftRight(2), bigInteger2))));
                if (fp3.o().equals(this)) {
                    return fp3;
                }
                return null;
            }
            BigInteger bigIntegerShiftRight = bigInteger2.shiftRight(1);
            if (!bigInteger4.modPow(bigIntegerShiftRight, bigInteger2).equals(bigInteger5)) {
                return null;
            }
            BigInteger bigIntegerShiftLeft = bigInteger4.shiftLeft(1);
            if (bigIntegerShiftLeft.compareTo(bigInteger2) >= 0) {
                bigIntegerShiftLeft = bigIntegerShiftLeft.subtract(bigInteger2);
            }
            BigInteger bigIntegerShiftLeft2 = bigIntegerShiftLeft.shiftLeft(1);
            if (bigIntegerShiftLeft2.compareTo(bigInteger2) >= 0) {
                bigIntegerShiftLeft2 = bigIntegerShiftLeft2.subtract(bigInteger2);
            }
            BigInteger bigIntegerAdd = bigIntegerShiftRight.add(bigInteger5);
            BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger5);
            Random random = new Random();
            while (true) {
                BigInteger bigInteger6 = new BigInteger(bigInteger2.bitLength(), random);
                if (bigInteger6.compareTo(bigInteger2) >= 0 || !v(bigInteger6.multiply(bigInteger6).subtract(bigIntegerShiftLeft2)).modPow(bigIntegerShiftRight, bigInteger2).equals(bigIntegerSubtract)) {
                    eCFieldElement = eCFieldElement2;
                    i2 = i3;
                    i3 = i2;
                    eCFieldElement2 = eCFieldElement;
                } else {
                    int iBitLength = bigIntegerAdd.bitLength();
                    eCFieldElement = eCFieldElement2;
                    int lowestSetBit = bigIntegerAdd.getLowestSetBit();
                    int i5 = iBitLength - i4;
                    int i6 = i3;
                    BigInteger bigInteger7 = bigIntegerShiftRight;
                    BigInteger bigIntegerU2 = bigInteger5;
                    BigInteger bigIntegerU3 = bigIntegerU2;
                    BigInteger bigInteger8 = bigIntegerU3;
                    BigInteger bigInteger9 = bigIntegerV;
                    Random random2 = random;
                    BigInteger bigIntegerV2 = bigInteger6;
                    while (true) {
                        bigInteger = bigIntegerSubtract;
                        if (i5 < lowestSetBit + 1) {
                            break;
                        }
                        bigIntegerU2 = u(bigIntegerU2, bigIntegerU3);
                        if (bigIntegerAdd.testBit(i5)) {
                            bigIntegerU3 = u(bigIntegerU2, bigInteger4);
                            BigInteger bigIntegerU4 = u(bigInteger8, bigIntegerV2);
                            bigIntegerV = v(bigIntegerV2.multiply(bigIntegerV).subtract(bigInteger6.multiply(bigIntegerU2)));
                            bigIntegerV2 = v(bigIntegerV2.multiply(bigIntegerV2).subtract(bigIntegerU3.shiftLeft(1)));
                            bigInteger8 = bigIntegerU4;
                        } else {
                            BigInteger bigIntegerV3 = v(bigInteger8.multiply(bigIntegerV).subtract(bigIntegerU2));
                            BigInteger bigIntegerV4 = v(bigIntegerV2.multiply(bigIntegerV).subtract(bigInteger6.multiply(bigIntegerU2)));
                            bigIntegerV = v(bigIntegerV.multiply(bigIntegerV).subtract(bigIntegerU2.shiftLeft(1)));
                            bigIntegerV2 = bigIntegerV4;
                            bigInteger8 = bigIntegerV3;
                            bigIntegerU3 = bigIntegerU2;
                        }
                        i5--;
                        bigIntegerSubtract = bigInteger;
                    }
                    BigInteger bigIntegerU5 = u(bigIntegerU2, bigIntegerU3);
                    BigInteger bigIntegerU6 = u(bigIntegerU5, bigInteger4);
                    BigInteger bigIntegerV5 = v(bigInteger8.multiply(bigIntegerV).subtract(bigIntegerU5));
                    BigInteger bigIntegerV6 = v(bigIntegerV2.multiply(bigIntegerV).subtract(bigInteger6.multiply(bigIntegerU5)));
                    BigInteger bigIntegerV7 = v(bigIntegerU5.multiply(bigIntegerU6));
                    for (int i7 = 1; i7 <= lowestSetBit; i7++) {
                        bigIntegerV5 = u(bigIntegerV5, bigIntegerV6);
                        bigIntegerV6 = v(bigIntegerV6.multiply(bigIntegerV6).subtract(bigIntegerV7.shiftLeft(1)));
                        bigIntegerV7 = v(bigIntegerV7.multiply(bigIntegerV7));
                    }
                    BigInteger[] bigIntegerArr = {bigIntegerV5, bigIntegerV6};
                    BigInteger bigInteger10 = bigIntegerArr[i6];
                    BigInteger bigIntegerSubtract2 = bigIntegerArr[1];
                    if (u(bigIntegerSubtract2, bigIntegerSubtract2).equals(bigIntegerShiftLeft2)) {
                        if (bigIntegerSubtract2.testBit(i6)) {
                            bigIntegerSubtract2 = bigInteger2.subtract(bigIntegerSubtract2);
                        }
                        return new Fp(bigInteger2, bigInteger3, bigIntegerSubtract2.shiftRight(1));
                    }
                    i2 = i6;
                    if (bigInteger10.equals(bigInteger5)) {
                        i3 = i2;
                        i4 = 1;
                        eCFieldElement2 = eCFieldElement;
                        bigIntegerShiftRight = bigInteger7;
                        bigIntegerV = bigInteger9;
                        random = random2;
                        bigIntegerSubtract = bigInteger;
                    } else {
                        if (!bigInteger10.equals(bigInteger)) {
                            return eCFieldElement;
                        }
                        i4 = 1;
                        bigIntegerShiftRight = bigInteger7;
                        bigIntegerV = bigInteger9;
                        random = random2;
                        bigIntegerSubtract = bigInteger;
                        i3 = i2;
                        eCFieldElement2 = eCFieldElement;
                    }
                }
            }
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement o() {
            BigInteger bigInteger = this.f77936f;
            return new Fp(this.d, this.f77935e, u(bigInteger, bigInteger));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigIntegerS = eCFieldElement.s();
            BigInteger bigIntegerS2 = eCFieldElement2.s();
            BigInteger bigInteger = this.f77936f;
            return new Fp(this.d, this.f77935e, v(bigInteger.multiply(bigInteger).add(bigIntegerS.multiply(bigIntegerS2))));
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement q(ECFieldElement eCFieldElement) {
            BigInteger bigIntegerSubtract = this.f77936f.subtract(eCFieldElement.s());
            int iSignum = bigIntegerSubtract.signum();
            BigInteger bigInteger = this.d;
            if (iSignum < 0) {
                bigIntegerSubtract = bigIntegerSubtract.add(bigInteger);
            }
            return new Fp(bigInteger, this.f77935e, bigIntegerSubtract);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final BigInteger s() {
            return this.f77936f;
        }

        public final BigInteger u(BigInteger bigInteger, BigInteger bigInteger2) {
            return v(bigInteger.multiply(bigInteger2));
        }

        public final BigInteger v(BigInteger bigInteger) {
            BigInteger bigInteger2 = this.d;
            BigInteger bigInteger3 = this.f77935e;
            if (bigInteger3 == null) {
                return bigInteger.mod(bigInteger2);
            }
            boolean z = bigInteger.signum() < 0;
            if (z) {
                bigInteger = bigInteger.abs();
            }
            int iBitLength = bigInteger2.bitLength();
            boolean zEquals = bigInteger3.equals(ECConstants.f77916b);
            while (bigInteger.bitLength() > iBitLength + 1) {
                BigInteger bigIntegerShiftRight = bigInteger.shiftRight(iBitLength);
                BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerShiftRight.shiftLeft(iBitLength));
                if (!zEquals) {
                    bigIntegerShiftRight = bigIntegerShiftRight.multiply(bigInteger3);
                }
                bigInteger = bigIntegerShiftRight.add(bigIntegerSubtract);
            }
            while (bigInteger.compareTo(bigInteger2) >= 0) {
                bigInteger = bigInteger.subtract(bigInteger2);
            }
            return (!z || bigInteger.signum() == 0) ? bigInteger : bigInteger2.subtract(bigInteger);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2) {
            this(bigInteger, t(bigInteger), bigInteger2);
        }
    }

    public static class F2m extends ECFieldElement {
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f77933e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f77934f;
        public final LongArray g;

        public F2m(int i2, int i3, int i4, int i5, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i2) {
                md.n("x value invalid in F2m field element");
                throw null;
            }
            if (i4 == 0 && i5 == 0) {
                this.d = 2;
                this.f77934f = new int[]{i3};
            } else {
                if (i4 >= i5) {
                    md.n("k2 must be smaller than k3");
                    throw null;
                }
                if (i4 <= 0) {
                    md.n("k2 must be larger than 0");
                    throw null;
                }
                this.d = 3;
                this.f77934f = new int[]{i3, i4, i5};
            }
            this.f77933e = i2;
            this.g = new LongArray(bigInteger);
        }

        public static void t(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            if (!(eCFieldElement instanceof F2m) || !(eCFieldElement2 instanceof F2m)) {
                md.n("Field elements are not both instances of ECFieldElement.F2m");
                return;
            }
            F2m f2m = (F2m) eCFieldElement;
            F2m f2m2 = (F2m) eCFieldElement2;
            if (f2m.d != f2m2.d) {
                md.n("One of the F2m field elements has incorrect representation");
            } else {
                if (f2m.f77933e == f2m2.f77933e && Arrays.b(f2m.f77934f, f2m2.f77934f)) {
                    return;
                }
                md.n("Field elements are not elements of the same field F2m");
            }
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement a(ECFieldElement eCFieldElement) {
            LongArray longArray = (LongArray) this.g.clone();
            longArray.c(((F2m) eCFieldElement).g);
            return new F2m(this.f77933e, this.f77934f, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement b() {
            LongArray longArray;
            LongArray longArray2 = this.g;
            if (longArray2.f77943b.length == 0) {
                longArray = new LongArray(new long[]{1});
            } else {
                int iMax = Math.max(1, longArray2.k());
                long[] jArr = new long[iMax];
                long[] jArr2 = longArray2.f77943b;
                System.arraycopy(jArr2, 0, jArr, 0, Math.min(jArr2.length, iMax));
                jArr[0] = jArr[0] ^ 1;
                longArray = new LongArray(jArr);
            }
            return new F2m(this.f77933e, this.f77934f, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final int c() {
            return this.g.f();
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement d(ECFieldElement eCFieldElement) {
            return j(eCFieldElement.g());
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof F2m)) {
                return false;
            }
            F2m f2m = (F2m) obj;
            return this.f77933e == f2m.f77933e && this.d == f2m.d && Arrays.b(this.f77934f, f2m.f77934f) && this.g.equals(f2m.g);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final int f() {
            return this.f77933e;
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement g() {
            int i2;
            LongArray longArray = this.g;
            int iF = longArray.f();
            if (iF == 0) {
                r81.b();
                return null;
            }
            int i3 = this.f77933e;
            int[] iArr = this.f77934f;
            int i4 = 1;
            if (iF != 1) {
                LongArray longArray2 = (LongArray) longArray.clone();
                int i5 = (i3 + 63) >>> 6;
                LongArray longArray3 = new LongArray(i5);
                long[] jArr = longArray3.f77943b;
                LongArray.h(jArr, i3);
                int length = iArr.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    LongArray.h(jArr, iArr[length]);
                }
                int iG = 0;
                LongArray.h(jArr, 0);
                LongArray longArray4 = new LongArray(i5);
                longArray4.f77943b[0] = 1;
                LongArray longArray5 = new LongArray(i5);
                int[] iArr2 = new int[2];
                iArr2[0] = iF;
                iArr2[1] = i3 + 1;
                LongArray[] longArrayArr = {longArray2, longArray3};
                int[] iArr3 = new int[2];
                iArr3[0] = 1;
                iArr3[1] = 0;
                LongArray[] longArrayArr2 = {longArray4, longArray5};
                int i6 = iArr2[1];
                int i7 = i6 - iArr2[0];
                while (true) {
                    if (i7 < 0) {
                        i7 = -i7;
                        iArr2[i4] = i6;
                        iArr3[i4] = iG;
                        i4 = 1 - i4;
                        i6 = iArr2[i4];
                        iG = iArr3[i4];
                    }
                    i2 = 1 - i4;
                    longArrayArr[i4].b(longArrayArr[i2], iArr2[i2], i7);
                    int iG2 = longArrayArr[i4].g(i6);
                    if (iG2 == 0) {
                        break;
                    }
                    int i8 = iArr3[i2];
                    longArrayArr2[i4].b(longArrayArr2[i2], i8, i7);
                    int i9 = i8 + i7;
                    if (i9 > iG) {
                        iG = i9;
                    } else if (i9 == iG) {
                        iG = longArrayArr2[i4].g(iG);
                    }
                    i7 += iG2 - i6;
                    i6 = iG2;
                }
                longArray = longArrayArr2[i2];
            }
            return new F2m(i3, iArr, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final boolean h() {
            return this.g.u();
        }

        public final int hashCode() {
            return Arrays.h(this.f77934f) ^ (this.g.hashCode() ^ this.f77933e);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final boolean i() {
            for (long j2 : this.g.f77943b) {
                if (j2 != 0) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement j(ECFieldElement eCFieldElement) {
            int i2;
            long[] jArr;
            int i3;
            LongArray longArray = ((F2m) eCFieldElement).g;
            LongArray longArray2 = this.g;
            int iF = longArray2.f();
            int i4 = this.f77933e;
            int[] iArr = this.f77934f;
            if (iF != 0) {
                int iF2 = longArray.f();
                if (iF2 != 0) {
                    if (iF > iF2) {
                        longArray2 = longArray;
                        longArray = longArray2;
                        iF2 = iF;
                        iF = iF2;
                    }
                    int i5 = (iF + 63) >>> 6;
                    int i6 = (iF2 + 63) >>> 6;
                    int i7 = ((iF + iF2) + 62) >>> 6;
                    if (i5 == 1) {
                        long j2 = longArray2.f77943b[0];
                        if (j2 != 1) {
                            long[] jArr2 = new long[i7];
                            LongArray.w(j2, longArray.f77943b, i6, jArr2);
                            i2 = i4;
                            longArray = new LongArray(jArr2, 0, LongArray.x(jArr2, i7, i4, iArr));
                        }
                    } else {
                        int i8 = (iF2 + 70) >>> 6;
                        int[] iArr2 = new int[16];
                        int i9 = i8 << 4;
                        long[] jArr3 = new long[i9];
                        iArr2[1] = i8;
                        System.arraycopy(longArray.f77943b, 0, jArr3, i8, i6);
                        int i10 = 2;
                        int i11 = i8;
                        while (i10 < 16) {
                            int i12 = i11 + i8;
                            iArr2[i10] = i12;
                            if ((i10 & 1) == 0) {
                                LongArray.y(jArr3, i12 >>> 1, jArr3, i12, i8, 1);
                            } else {
                                int i13 = i12 - i8;
                                for (int i14 = 0; i14 < i8; i14++) {
                                    jArr3[i12 + i14] = jArr3[i8 + i14] ^ jArr3[i13 + i14];
                                }
                            }
                            i10++;
                            i11 = i12;
                        }
                        long[] jArr4 = new long[i9];
                        LongArray.y(jArr3, 0, jArr4, 0, i9, 4);
                        long[] jArr5 = longArray2.f77943b;
                        int i15 = i7 << 3;
                        long[] jArr6 = new long[i15];
                        int i16 = 0;
                        while (i16 < i5) {
                            int i17 = i4;
                            int i18 = i16;
                            long j3 = jArr5[i16];
                            while (true) {
                                jArr = jArr5;
                                i3 = i15;
                                int i19 = iArr2[((int) j3) & 15];
                                int i20 = iArr2[((int) (j3 >>> 4)) & 15];
                                for (int i21 = 0; i21 < i8; i21++) {
                                    int i22 = i18 + i21;
                                    jArr6[i22] = jArr6[i22] ^ (jArr3[i19 + i21] ^ jArr4[i20 + i21]);
                                }
                                j3 >>>= 8;
                                if (j3 == 0) {
                                    break;
                                }
                                i18 += i7;
                                i15 = i3;
                                jArr5 = jArr;
                            }
                            i16++;
                            i15 = i3;
                            i4 = i17;
                            jArr5 = jArr;
                        }
                        i2 = i4;
                        while (true) {
                            int i23 = i15 - i7;
                            if (i23 == 0) {
                                break;
                            }
                            LongArray.d(jArr6, i23 - i7, jArr6, i23, i7, 8);
                            i15 = i23;
                        }
                        longArray = new LongArray(jArr6, 0, LongArray.x(jArr6, i7, i2, iArr));
                    }
                }
                return new F2m(i2, iArr, longArray);
            }
            longArray = longArray2;
            i2 = i4;
            return new F2m(i2, iArr, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement k(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return l(eCFieldElement, eCFieldElement2, eCFieldElement3);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            LongArray longArray = ((F2m) eCFieldElement).g;
            LongArray longArray2 = ((F2m) eCFieldElement2).g;
            LongArray longArray3 = ((F2m) eCFieldElement3).g;
            LongArray longArray4 = this.g;
            LongArray longArrayV = longArray4.v(longArray);
            LongArray longArrayV2 = longArray2.v(longArray3);
            if (longArrayV == longArray4 || longArrayV == longArray) {
                longArrayV = (LongArray) longArrayV.clone();
            }
            longArrayV.c(longArrayV2);
            long[] jArr = longArrayV.f77943b;
            int length = jArr.length;
            int i2 = this.f77933e;
            int[] iArr = this.f77934f;
            int iX = LongArray.x(jArr, length, i2, iArr);
            if (iX < jArr.length) {
                long[] jArr2 = new long[iX];
                longArrayV.f77943b = jArr2;
                System.arraycopy(jArr, 0, jArr2, 0, iX);
            }
            return new F2m(i2, iArr, longArrayV);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement m() {
            return this;
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement n() {
            int i2;
            LongArray longArray = this.g;
            for (long j2 : longArray.f77943b) {
                if (j2 != 0) {
                    if (longArray.u() || (i = (i2 = this.f77933e) - 1) < 1) {
                        break;
                        break;
                    }
                    int iK = longArray.k();
                    int[] iArr = this.f77934f;
                    if (iK != 0) {
                        int i3 = ((i2 + 63) >>> 6) << 1;
                        long[] jArr = new long[i3];
                        System.arraycopy(longArray.f77943b, 0, jArr, 0, iK);
                        while (true) {
                            int i4 = i4 - 1;
                            if (i4 < 0) {
                                break;
                            }
                            int i5 = iK << 1;
                            while (true) {
                                iK--;
                                if (iK >= 0) {
                                    long j3 = jArr[iK];
                                    jArr[i5 - 1] = LongArray.l((int) (j3 >>> 32));
                                    i5 -= 2;
                                    jArr[i5] = LongArray.l((int) j3);
                                }
                            }
                            iK = LongArray.x(jArr, i3, i2, iArr);
                        }
                        longArray = new LongArray(jArr, 0, iK);
                    }
                    return new F2m(i2, iArr, longArray);
                }
            }
            return this;
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement o() {
            LongArray longArray = this.g;
            int iK = longArray.k();
            int i2 = this.f77933e;
            int[] iArr = this.f77934f;
            if (iK != 0) {
                int i3 = iK << 1;
                long[] jArr = new long[i3];
                int i4 = 0;
                while (i4 < i3) {
                    long j2 = longArray.f77943b[i4 >>> 1];
                    int i5 = i4 + 1;
                    jArr[i4] = LongArray.l((int) j2);
                    i4 += 2;
                    jArr[i5] = LongArray.l((int) (j2 >>> 32));
                }
                longArray = new LongArray(jArr, 0, LongArray.x(jArr, i3, i2, iArr));
            }
            return new F2m(i2, iArr, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement p(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            LongArray longArray;
            LongArray longArray2 = ((F2m) eCFieldElement).g;
            LongArray longArray3 = ((F2m) eCFieldElement2).g;
            LongArray longArray4 = this.g;
            int iK = longArray4.k();
            if (iK == 0) {
                longArray = longArray4;
            } else {
                int i2 = iK << 1;
                long[] jArr = new long[i2];
                int i3 = 0;
                while (i3 < i2) {
                    long j2 = longArray4.f77943b[i3 >>> 1];
                    int i4 = i3 + 1;
                    jArr[i3] = LongArray.l((int) j2);
                    i3 += 2;
                    jArr[i4] = LongArray.l((int) (j2 >>> 32));
                }
                longArray = new LongArray(jArr, 0, i2);
            }
            LongArray longArrayV = longArray2.v(longArray3);
            if (longArray == longArray4) {
                longArray = (LongArray) longArray.clone();
            }
            longArray.c(longArrayV);
            long[] jArr2 = longArray.f77943b;
            int length = jArr2.length;
            int i5 = this.f77933e;
            int[] iArr = this.f77934f;
            int iX = LongArray.x(jArr2, length, i5, iArr);
            if (iX < jArr2.length) {
                long[] jArr3 = new long[iX];
                longArray.f77943b = jArr3;
                System.arraycopy(jArr2, 0, jArr3, 0, iX);
            }
            return new F2m(i5, iArr, longArray);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final ECFieldElement q(ECFieldElement eCFieldElement) {
            return a(eCFieldElement);
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final boolean r() {
            long[] jArr = this.g.f77943b;
            return jArr.length > 0 && (jArr[0] & 1) != 0;
        }

        @Override // org.spongycastle.math.ec.ECFieldElement
        public final BigInteger s() {
            LongArray longArray = this.g;
            int iK = longArray.k();
            if (iK == 0) {
                return ECConstants.f77915a;
            }
            int i2 = iK - 1;
            long j2 = longArray.f77943b[i2];
            byte[] bArr = new byte[8];
            int i3 = 0;
            boolean z = false;
            for (int i4 = 7; i4 >= 0; i4--) {
                byte b2 = (byte) (j2 >>> (i4 * 8));
                if (z || b2 != 0) {
                    bArr[i3] = b2;
                    i3++;
                    z = true;
                }
            }
            byte[] bArr2 = new byte[(i2 * 8) + i3];
            for (int i5 = 0; i5 < i3; i5++) {
                bArr2[i5] = bArr[i5];
            }
            for (int i6 = iK - 2; i6 >= 0; i6--) {
                long j3 = longArray.f77943b[i6];
                int i7 = 7;
                while (i7 >= 0) {
                    bArr2[i3] = (byte) (j3 >>> (i7 * 8));
                    i7--;
                    i3++;
                }
            }
            return new BigInteger(1, bArr2);
        }

        public F2m(int i2, int i3, BigInteger bigInteger) {
            this(i2, i3, 0, 0, bigInteger);
        }

        public F2m(int i2, int[] iArr, LongArray longArray) {
            this.f77933e = i2;
            this.d = iArr.length == 1 ? 2 : 3;
            this.f77934f = iArr;
            this.g = longArray;
        }
    }
}

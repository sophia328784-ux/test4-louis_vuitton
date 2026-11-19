package org.bouncycastle.crypto.util;

import defpackage.ct0;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes5.dex */
public class RadixConverter {
    private static final int DEFAULT_POWERS_TO_CACHE = 10;
    private static final double LOG_LONG_MAX_VALUE = Math.log(9.223372036854776E18d);
    private final int digitsGroupLength;
    private final BigInteger[] digitsGroupSpacePowers;
    private final BigInteger digitsGroupSpaceSize;
    private final int radix;

    public RadixConverter(int i2, int i3) {
        this.radix = i2;
        int iFloor = (int) Math.floor(LOG_LONG_MAX_VALUE / Math.log(i2));
        this.digitsGroupLength = iFloor;
        BigInteger bigIntegerPow = BigInteger.valueOf(i2).pow(iFloor);
        this.digitsGroupSpaceSize = bigIntegerPow;
        this.digitsGroupSpacePowers = precomputeDigitsGroupPowers(i3, bigIntegerPow);
    }

    private BigInteger[] precomputeDigitsGroupPowers(int i2, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr = new BigInteger[i2];
        BigInteger bigIntegerMultiply = bigInteger;
        for (int i3 = 0; i3 < i2; i3++) {
            bigIntegerArr[i3] = bigIntegerMultiply;
            bigIntegerMultiply = bigIntegerMultiply.multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    public BigInteger fromEncoding(short[] sArr) {
        BigInteger bigIntegerMultiply = BigIntegers.ONE;
        int length = sArr.length;
        int i2 = length - this.digitsGroupLength;
        BigInteger bigIntegerAdd = null;
        int i3 = 0;
        while (true) {
            int i4 = this.digitsGroupLength;
            if (i2 <= (-i4)) {
                return bigIntegerAdd;
            }
            if (i2 < 0) {
                i4 += i2;
                i2 = 0;
            }
            BigInteger bigIntegerValueOf = BigInteger.valueOf(fromEncoding(i2, Math.min(i4 + i2, length), sArr));
            if (i3 == 0) {
                bigIntegerAdd = bigIntegerValueOf;
            } else {
                BigInteger[] bigIntegerArr = this.digitsGroupSpacePowers;
                bigIntegerMultiply = i3 <= bigIntegerArr.length ? bigIntegerArr[i3 - 1] : bigIntegerMultiply.multiply(this.digitsGroupSpaceSize);
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerValueOf.multiply(bigIntegerMultiply));
            }
            i3++;
            i2 -= this.digitsGroupLength;
        }
    }

    public int getDigitsGroupLength() {
        return this.digitsGroupLength;
    }

    public int getRadix() {
        return this.radix;
    }

    public void toEncoding(BigInteger bigInteger, int i2, short[] sArr) {
        if (bigInteger.signum() < 0) {
            ct0.c();
            return;
        }
        int encoding = i2 - 1;
        do {
            if (bigInteger.equals(BigInteger.ZERO)) {
                sArr[encoding] = 0;
                encoding--;
            } else {
                BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger.divideAndRemainder(this.digitsGroupSpaceSize);
                BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
                encoding = toEncoding(bigIntegerArrDivideAndRemainder[1].longValue(), encoding, sArr);
                bigInteger = bigInteger2;
            }
        } while (encoding >= 0);
        if (bigInteger.signum() == 0) {
            return;
        }
        ct0.c();
    }

    public RadixConverter(int i2) {
        this(i2, 10);
    }

    private int toEncoding(long j2, int i2, short[] sArr) {
        int i3;
        for (int i4 = 0; i4 < this.digitsGroupLength && i2 >= 0; i4++) {
            if (j2 == 0) {
                i3 = i2 - 1;
                sArr[i2] = 0;
            } else {
                i3 = i2 - 1;
                int i5 = this.radix;
                sArr[i2] = (short) (j2 % ((long) i5));
                j2 /= (long) i5;
            }
            i2 = i3;
        }
        if (j2 == 0) {
            return i2;
        }
        md.k("Failed to convert decimal number");
        return 0;
    }

    private long fromEncoding(int i2, int i3, short[] sArr) {
        long j2 = 0;
        while (i2 < i3) {
            j2 = (j2 * ((long) this.radix)) + ((long) (sArr[i2] & HPKE.aead_EXPORT_ONLY));
            i2++;
        }
        return j2;
    }
}

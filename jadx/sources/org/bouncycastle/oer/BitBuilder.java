package org.bouncycastle.oer;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BitBuilder {
    private static final byte[] bits = {-128, 64, 32, 16, 8, 4, 2, 1};
    byte[] buf = new byte[1];
    int pos = 0;

    public void pad() {
        int i2 = this.pos;
        this.pos = (i2 % 8) + i2;
    }

    public int write(OutputStream outputStream) throws IOException {
        int i2 = this.pos;
        int i3 = ((i2 % 8) + i2) / 8;
        outputStream.write(this.buf, 0, i3);
        outputStream.flush();
        return i3;
    }

    public void write7BitBytes(BigInteger bigInteger) {
        int iBitLength = ((bigInteger.bitLength() % 8) + bigInteger.bitLength()) / 8;
        int i2 = iBitLength * 8;
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(254L).shiftLeft(i2);
        boolean z = false;
        while (iBitLength >= 0) {
            if (!z && bigInteger.and(bigIntegerShiftLeft).compareTo(BigInteger.ZERO) != 0) {
                z = true;
            }
            if (z) {
                writeBit(iBitLength).writeBits(bigInteger.and(bigIntegerShiftLeft).shiftRight(i2 - 8).intValue(), 8, 7);
            }
            bigInteger = bigInteger.shiftLeft(7);
            iBitLength--;
        }
    }

    public int writeAndClear(OutputStream outputStream) throws IOException {
        int i2 = this.pos;
        int i3 = ((i2 % 8) + i2) / 8;
        outputStream.write(this.buf, 0, i3);
        outputStream.flush();
        zero();
        return i3;
    }

    public BitBuilder writeBit(int i2) {
        int i3 = this.pos;
        int i4 = i3 / 8;
        byte[] bArr = this.buf;
        if (i4 >= bArr.length) {
            byte[] bArr2 = new byte[bArr.length + 4];
            System.arraycopy(bArr, 0, bArr2, 0, i3 / 8);
            Arrays.clear(this.buf);
            this.buf = bArr2;
        }
        byte[] bArr3 = this.buf;
        if (i2 == 0) {
            int i5 = this.pos;
            int i6 = i5 / 8;
            bArr3[i6] = (byte) ((~bits[i5 % 8]) & bArr3[i6]);
        } else {
            int i7 = this.pos;
            int i8 = i7 / 8;
            bArr3[i8] = (byte) (bits[i7 % 8] | bArr3[i8]);
        }
        this.pos++;
        return this;
    }

    public BitBuilder writeBits(long j2, int i2, int i3) {
        for (int i4 = i2 - 1; i4 >= i2 - i3; i4--) {
            writeBit(((1 << i4) & j2) != 0 ? 1 : 0);
        }
        return this;
    }

    public void zero() {
        Arrays.clear(this.buf);
        this.pos = 0;
    }

    public BitBuilder writeBits(long j2, int i2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            writeBit(((1 << i3) & j2) > 0 ? 1 : 0);
        }
        return this;
    }

    public void write7BitBytes(int i2) {
        boolean z = false;
        for (int i3 = 4; i3 >= 0; i3--) {
            if (!z && ((-33554432) & i2) != 0) {
                z = true;
            }
            if (z) {
                writeBit(i3).writeBits(i2, 32, 7);
            }
            i2 <<= 7;
        }
    }
}

package org.bouncycastle.crypto.util;

import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
class SSHBuffer {
    private final byte[] buffer;
    private int pos = 0;

    public SSHBuffer(byte[] bArr, byte[] bArr2) {
        this.buffer = bArr2;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                md.n("magic-number incorrect");
                throw null;
            }
        }
        this.pos += bArr.length;
    }

    public byte[] getBuffer() {
        return Arrays.clone(this.buffer);
    }

    public boolean hasRemaining() {
        return this.pos < this.buffer.length;
    }

    public BigInteger readBigNumPositive() {
        int u32 = readU32();
        int i2 = this.pos;
        int i3 = i2 + u32;
        byte[] bArr = this.buffer;
        if (i3 > bArr.length) {
            md.n("not enough data for big num");
            return null;
        }
        int i4 = u32 + i2;
        this.pos = i4;
        return new BigInteger(1, Arrays.copyOfRange(bArr, i2, i4));
    }

    public byte[] readBlock() {
        int u32 = readU32();
        if (u32 == 0) {
            return new byte[0];
        }
        int i2 = this.pos;
        byte[] bArr = this.buffer;
        if (i2 > bArr.length - u32) {
            md.n("not enough data for block");
            return null;
        }
        int i3 = u32 + i2;
        this.pos = i3;
        return Arrays.copyOfRange(bArr, i2, i3);
    }

    public byte[] readPaddedBlock(int i2) {
        int i3;
        int u32 = readU32();
        if (u32 == 0) {
            return new byte[0];
        }
        int i4 = this.pos;
        byte[] bArr = this.buffer;
        if (i4 > bArr.length - u32) {
            md.n("not enough data for block");
            return null;
        }
        if (u32 % i2 != 0) {
            md.n("missing padding");
            return null;
        }
        int i5 = i4 + u32;
        this.pos = i5;
        if (u32 > 0 && (i3 = bArr[i5 - 1] & 255) > 0 && i3 < i2) {
            i5 -= i3;
            int i6 = 1;
            int i7 = i5;
            while (i6 <= i3) {
                if (i6 != (this.buffer[i7] & 255)) {
                    md.n("incorrect padding");
                    return null;
                }
                i6++;
                i7++;
            }
        }
        return Arrays.copyOfRange(this.buffer, i4, i5);
    }

    public String readString() {
        return Strings.fromByteArray(readBlock());
    }

    public int readU32() {
        int i2 = this.pos;
        byte[] bArr = this.buffer;
        if (i2 > bArr.length - 4) {
            md.n("4 bytes for U32 exceeds buffer.");
            return 0;
        }
        int i3 = i2 + 1;
        this.pos = i3;
        int i4 = (bArr[i2] & 255) << 24;
        int i5 = i2 + 2;
        this.pos = i5;
        int i6 = ((bArr[i3] & 255) << 16) | i4;
        int i7 = i2 + 3;
        this.pos = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 8);
        this.pos = i2 + 4;
        return (bArr[i7] & 255) | i8;
    }

    public void skipBlock() {
        int u32 = readU32();
        int i2 = this.pos;
        if (i2 <= this.buffer.length - u32) {
            this.pos = i2 + u32;
        } else {
            md.n("not enough data for block");
        }
    }

    public SSHBuffer(byte[] bArr) {
        this.buffer = bArr;
    }

    public byte[] readPaddedBlock() {
        return readPaddedBlock(8);
    }
}

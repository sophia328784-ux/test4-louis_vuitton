package org.bouncycastle.crypto.digests;

import defpackage.b21;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class XoodyakDigest implements Digest {
    private int Rabsorb;
    private MODE mode;
    private int phase;
    private final int f_bPrime = 48;
    private final int Rhash = 16;
    private final int PhaseDown = 1;
    private final int PhaseUp = 2;
    private final int NLANES = 12;
    private final int NROWS = 3;
    private final int NCOLUMS = 4;
    private final int MAXROUNDS = 12;
    private final int TAGLEN = 16;
    private final int[] RC = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, DilithiumEngine.DilithiumPolyT0PackedBytes, 18};
    private final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private byte[] state = new byte[48];

    public enum MODE {
        ModeHash,
        ModeKeyed
    }

    public XoodyakDigest() {
        reset();
    }

    private int ROTL32(int i2, int i3) {
        return (i2 << (i3 & 31)) ^ (i2 >>> ((32 - i3) & 31));
    }

    private void Up(byte[] bArr, int i2, int i3, int i4) {
        int i5;
        if (this.mode != MODE.ModeHash) {
            byte[] bArr2 = this.state;
            bArr2[47] = (byte) (bArr2[47] ^ i4);
        }
        int i6 = 12;
        int[] iArr = new int[12];
        Pack.littleEndianToInt(this.state, 0, iArr, 0, 12);
        int[] iArr2 = new int[12];
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[4];
        for (int i7 = 0; i7 < i6; i7++) {
            for (int i8 = 0; i8 < 4; i8++) {
                iArr3[i8] = (iArr[index(i8, 1)] ^ iArr[index(i8, 0)]) ^ iArr[index(i8, 2)];
            }
            int i9 = 0;
            while (true) {
                i5 = 3;
                if (i9 >= 4) {
                    break;
                }
                int i10 = iArr3[3 & (i9 + 3)];
                iArr4[i9] = ROTL32(i10, 14) ^ ROTL32(i10, 5);
                i9++;
            }
            for (int i11 = 0; i11 < 4; i11++) {
                for (int i12 = 0; i12 < 3; i12++) {
                    int iIndex = index(i11, i12);
                    iArr[iIndex] = iArr[iIndex] ^ iArr4[i11];
                }
            }
            for (int i13 = 0; i13 < 4; i13++) {
                iArr2[index(i13, 0)] = iArr[index(i13, 0)];
                iArr2[index(i13, 1)] = iArr[index(i13 + 3, 1)];
                iArr2[index(i13, 2)] = ROTL32(iArr[index(i13, 2)], 11);
            }
            iArr2[0] = iArr2[0] ^ this.RC[i7];
            int i14 = 0;
            while (i14 < 4) {
                int i15 = 0;
                while (i15 < i5) {
                    int i16 = i15 + 1;
                    iArr[index(i14, i15)] = ((~iArr2[index(i14, i16)]) & iArr2[index(i14, i15 + 2)]) ^ iArr2[index(i14, i15)];
                    i15 = i16;
                    i5 = 3;
                }
                i14++;
                i5 = 3;
            }
            for (int i17 = 0; i17 < 4; i17++) {
                iArr2[index(i17, 0)] = iArr[index(i17, 0)];
                iArr2[index(i17, 1)] = ROTL32(iArr[index(i17, 1)], 1);
                iArr2[index(i17, 2)] = ROTL32(iArr[index(i17 + 2, 2)], 8);
            }
            i6 = 12;
            System.arraycopy(iArr2, 0, iArr, 0, 12);
        }
        Pack.intToLittleEndian(iArr, 0, i6, this.state, 0);
        this.phase = 2;
        if (bArr != null) {
            System.arraycopy(this.state, 0, bArr, i2, i3);
        }
    }

    private int index(int i2, int i3) {
        return (i2 % 4) + ((i3 % 3) * 4);
    }

    public void Down(byte[] bArr, int i2, int i3, int i4) {
        byte[] bArr2;
        int i5 = 0;
        while (true) {
            bArr2 = this.state;
            if (i5 >= i3) {
                break;
            }
            bArr2[i5] = (byte) (bArr[i2] ^ bArr2[i5]);
            i5++;
            i2++;
        }
        bArr2[i3] = (byte) (bArr2[i3] ^ 1);
        byte b2 = bArr2[47];
        if (this.mode == MODE.ModeHash) {
            i4 &= 1;
        }
        bArr2[47] = (byte) (b2 ^ i4);
        this.phase = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        if (i2 + 32 > bArr.length) {
            mt.n("output buffer is too short");
            return 0;
        }
        byte[] byteArray = this.buffer.toByteArray();
        int size = this.buffer.size();
        int i3 = 3;
        int i4 = 0;
        while (true) {
            if (this.phase != 2) {
                Up(null, 0, 0, 0);
            }
            int iMin = Math.min(size, this.Rabsorb);
            Down(byteArray, i4, iMin, i3);
            i4 += iMin;
            size -= iMin;
            if (size == 0) {
                Up(bArr, i2, 16, 64);
                Down(null, 0, 0, 0);
                Up(bArr, i2 + 16, 16, 0);
                return 32;
            }
            i3 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Xoodyak Hash";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, (byte) 0);
        this.phase = 2;
        this.mode = MODE.ModeHash;
        this.Rabsorb = 16;
        this.buffer.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        if (i2 + i3 <= bArr.length) {
            this.buffer.write(bArr, i2, i3);
        } else {
            b21.q("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        this.buffer.write(b2);
    }
}

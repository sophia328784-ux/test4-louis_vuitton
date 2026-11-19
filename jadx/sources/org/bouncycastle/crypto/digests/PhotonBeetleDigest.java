package org.bouncycastle.crypto.digests;

import defpackage.b21;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;

/* JADX INFO: loaded from: classes5.dex */
public class PhotonBeetleDigest implements Digest {
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private final int INITIAL_RATE_INBYTES = 16;
    private int RATE_INBYTES = 4;
    private int SQUEEZE_RATE_INBYTES = 16;
    private int STATE_INBYTES = 32;
    private int TAG_INBYTES = 32;
    private int LAST_THREE_BITS_OFFSET = 5;
    private int ROUND = 12;
    private int D = 8;
    private int Dq = 3;
    private int Dr = 7;
    private int DSquare = 64;
    private int S = 4;
    private int S_1 = 3;
    private byte[][] RC = {new byte[]{1, 3, 7, 14, 13, 11, 6, 12, 9, 2, 5, 10}, new byte[]{0, 2, 6, 15, 12, 10, 7, 13, 8, 3, 4, 11}, new byte[]{2, 0, 4, 13, 14, 8, 5, 15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, 12, 1, 11, 14, 5, 2, 13}, new byte[]{14, 12, 8, 1, 2, 4, 9, 3, 6, 13, 10, 5}, new byte[]{15, 13, 9, 0, 3, 5, 8, 2, 7, 12, 11, 4}, new byte[]{13, 15, 11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, 11, 15, 6, 5, 3, 14, 4, 1, 10, 13, 2}};
    private byte[][] MixColMatrix = {new byte[]{2, 4, 2, 11, 2, 8, 5, 6}, new byte[]{12, 9, 8, 13, 7, 7, 5, 2}, new byte[]{4, 4, 13, 13, 9, 4, 13, 9}, new byte[]{1, 6, 5, 1, 12, 13, 15, 14}, new byte[]{15, 12, 9, 13, 14, 5, 14, 13}, new byte[]{9, 14, 5, 15, 4, 12, 9, 6}, new byte[]{12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{15, 1, 13, 10, 5, 10, 2, 3}};
    private byte[] sbox = {12, 5, 6, 11, 9, 0, 10, 13, 3, 14, 15, 8, 4, 7, 1, 2};
    private byte[] state = new byte[32];
    private byte[][] state_2d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 8);

    public void PHOTON_Permutation() {
        for (int i2 = 0; i2 < this.DSquare; i2++) {
            this.state_2d[i2 >>> this.Dq][this.Dr & i2] = (byte) (((this.state[i2 >> 1] & 255) >>> ((i2 & 1) * 4)) & 15);
        }
        for (int i3 = 0; i3 < this.ROUND; i3++) {
            for (int i4 = 0; i4 < this.D; i4++) {
                byte[] bArr = this.state_2d[i4];
                bArr[0] = (byte) (bArr[0] ^ this.RC[i4][i3]);
            }
            for (int i5 = 0; i5 < this.D; i5++) {
                for (int i6 = 0; i6 < this.D; i6++) {
                    byte[] bArr2 = this.state_2d[i5];
                    bArr2[i6] = this.sbox[bArr2[i6]];
                }
            }
            int i7 = 1;
            while (true) {
                int i8 = this.D;
                if (i7 >= i8) {
                    break;
                }
                System.arraycopy(this.state_2d[i7], 0, this.state, 0, i8);
                System.arraycopy(this.state, i7, this.state_2d[i7], 0, this.D - i7);
                System.arraycopy(this.state, 0, this.state_2d[i7], this.D - i7, i7);
                i7++;
            }
            for (int i9 = 0; i9 < this.D; i9++) {
                for (int i10 = 0; i10 < this.D; i10++) {
                    byte b2 = 0;
                    for (int i11 = 0; i11 < this.D; i11++) {
                        int i12 = this.MixColMatrix[i10][i11];
                        byte b3 = this.state_2d[i11][i9];
                        int i13 = 0;
                        for (int i14 = 0; i14 < this.S; i14++) {
                            if (((b3 >>> i14) & 1) != 0) {
                                i13 ^= i12;
                            }
                            int i15 = (i12 >>> this.S_1) & 1;
                            i12 <<= 1;
                            if (i15 != 0) {
                                i12 ^= 3;
                            }
                        }
                        b2 = (byte) (b2 ^ (i13 & 15));
                    }
                    this.state[i10] = b2;
                }
                for (int i16 = 0; i16 < this.D; i16++) {
                    this.state_2d[i16][i9] = this.state[i16];
                }
            }
        }
        for (int i17 = 0; i17 < this.DSquare; i17 += 2) {
            byte[][] bArr3 = this.state_2d;
            int i18 = this.Dq;
            byte[] bArr4 = bArr3[i17 >>> i18];
            int i19 = this.Dr;
            this.state[i17 >>> 1] = (byte) (((bArr3[i17 >>> i18][(i17 + 1) & i19] & 15) << 4) | (bArr4[i17 & i19] & 15));
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        if (i2 + 32 > bArr.length) {
            mt.n("output buffer is too short");
            return 0;
        }
        byte[] byteArray = this.buffer.toByteArray();
        int length = byteArray.length;
        if (length == 0) {
            byte[] bArr2 = this.state;
            int i3 = this.STATE_INBYTES - 1;
            bArr2[i3] = (byte) ((1 << this.LAST_THREE_BITS_OFFSET) ^ bArr2[i3]);
        } else {
            byte[] bArr3 = this.state;
            if (length <= 16) {
                System.arraycopy(byteArray, 0, bArr3, 0, length);
                if (length < 16) {
                    byte[] bArr4 = this.state;
                    bArr4[length] = (byte) (bArr4[length] ^ 1);
                }
                byte[] bArr5 = this.state;
                int i4 = this.STATE_INBYTES - 1;
                bArr5[i4] = (byte) (((length >= 16 ? 2 : 1) << this.LAST_THREE_BITS_OFFSET) ^ bArr5[i4]);
            } else {
                System.arraycopy(byteArray, 0, bArr3, 0, 16);
                int i5 = length - 16;
                int i6 = this.RATE_INBYTES;
                int i7 = ((i5 + i6) - 1) / i6;
                int i8 = 0;
                while (true) {
                    int i9 = i7 - 1;
                    PHOTON_Permutation();
                    if (i8 >= i9) {
                        break;
                    }
                    int i10 = this.RATE_INBYTES;
                    Bytes.xorTo(i10, byteArray, (i8 * i10) + 16, this.state, 0);
                    i8++;
                }
                int i11 = this.RATE_INBYTES;
                int i12 = i5 - (i8 * i11);
                Bytes.xorTo(i12, byteArray, (i8 * i11) + 16, this.state, 0);
                int i13 = this.RATE_INBYTES;
                if (i12 < i13) {
                    byte[] bArr6 = this.state;
                    bArr6[i12] = (byte) (bArr6[i12] ^ 1);
                }
                byte[] bArr7 = this.state;
                int i14 = this.STATE_INBYTES - 1;
                bArr7[i14] = (byte) (((i5 % i13 != 0 ? 2 : 1) << this.LAST_THREE_BITS_OFFSET) ^ bArr7[i14]);
            }
        }
        PHOTON_Permutation();
        System.arraycopy(this.state, 0, bArr, i2, this.SQUEEZE_RATE_INBYTES);
        PHOTON_Permutation();
        byte[] bArr8 = this.state;
        int i15 = this.SQUEEZE_RATE_INBYTES;
        System.arraycopy(bArr8, 0, bArr, i2 + i15, this.TAG_INBYTES - i15);
        return this.TAG_INBYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Photon-Beetle Hash";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.TAG_INBYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.buffer.reset();
        Arrays.fill(this.state, (byte) 0);
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

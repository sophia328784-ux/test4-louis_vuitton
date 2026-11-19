package org.bouncycastle.pqc.legacy.crypto.gmss;

import defpackage.a;
import defpackage.n00;
import defpackage.o60;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class GMSSRootSig {
    private long big8;
    private int checksum;
    private int counter;
    private GMSSRandom gmssRandom;
    private byte[] hash;
    private int height;
    private int ii;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f77684k;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[] privateKeyOTS;
    private int r;
    private byte[] seed;
    private byte[] sign;
    private int steps;
    private int test;
    private long test8;
    private int w;

    public GMSSRootSig(Digest digest, byte[][] bArr, int[] iArr) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        this.counter = iArr[0];
        this.test = iArr[1];
        this.ii = iArr[2];
        this.r = iArr[3];
        this.steps = iArr[4];
        this.keysize = iArr[5];
        this.height = iArr[6];
        this.w = iArr[7];
        this.checksum = iArr[8];
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int i2 = this.w;
        this.f77684k = (1 << i2) - 1;
        this.messagesize = (int) Math.ceil(((double) (digestSize << 3)) / ((double) i2));
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.hash = bArr[2];
        this.sign = bArr[3];
        byte[] bArr2 = bArr[4];
        this.test8 = (((long) (bArr2[2] & 255)) << 16) | ((long) (bArr2[0] & 255)) | (((long) (bArr2[1] & 255)) << 8) | (((long) (bArr2[3] & 255)) << 24) | (((long) (bArr2[4] & 255)) << 32) | (((long) (bArr2[5] & 255)) << 40) | (((long) (bArr2[6] & 255)) << 48) | (((long) (bArr2[7] & 255)) << 56);
        this.big8 = (((long) (bArr2[15] & 255)) << 56) | ((long) (bArr2[8] & 255)) | (((long) (bArr2[9] & 255)) << 8) | (((long) (bArr2[10] & 255)) << 16) | (((long) (bArr2[11] & 255)) << 24) | (((long) (bArr2[12] & 255)) << 32) | (((long) (bArr2[13] & 255)) << 40) | (((long) (bArr2[14] & 255)) << 48);
    }

    private void oneStep() {
        long j2;
        int i2 = this.w;
        if (8 % i2 == 0) {
            int i3 = this.test;
            if (i3 == 0) {
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
                int i4 = this.ii;
                if (i4 < this.mdsize) {
                    byte[] bArr = this.hash;
                    byte b2 = bArr[i4];
                    this.test = this.f77684k & b2;
                    bArr[i4] = (byte) (b2 >>> this.w);
                } else {
                    int i5 = this.checksum;
                    this.test = this.f77684k & i5;
                    this.checksum = i5 >>> this.w;
                }
            } else if (i3 > 0) {
                Digest digest = this.messDigestOTS;
                byte[] bArr2 = this.privateKeyOTS;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr3;
                this.messDigestOTS.doFinal(bArr3, 0);
                this.test--;
            }
            if (this.test == 0) {
                byte[] bArr4 = this.privateKeyOTS;
                byte[] bArr5 = this.sign;
                int i6 = this.counter;
                int i7 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr5, i6 * i7, i7);
                int i8 = this.counter + 1;
                this.counter = i8;
                if (i8 % (8 / this.w) == 0) {
                    this.ii++;
                    return;
                }
                return;
            }
            return;
        }
        if (i2 < 8) {
            int i9 = this.test;
            if (i9 == 0) {
                int i10 = this.counter;
                if (i10 % 8 == 0) {
                    int i11 = this.ii;
                    int i12 = this.mdsize;
                    if (i11 < i12) {
                        this.big8 = 0L;
                        if (i10 < ((i12 / i2) << 3)) {
                            for (int i13 = 0; i13 < this.w; i13++) {
                                long j3 = this.big8;
                                byte[] bArr6 = this.hash;
                                int i14 = this.ii;
                                this.big8 = j3 ^ ((long) ((bArr6[i14] & 255) << (i13 << 3)));
                                this.ii = i14 + 1;
                            }
                        } else {
                            for (int i15 = 0; i15 < this.mdsize % this.w; i15++) {
                                long j4 = this.big8;
                                byte[] bArr7 = this.hash;
                                int i16 = this.ii;
                                this.big8 = j4 ^ ((long) ((bArr7[i16] & 255) << (i15 << 3)));
                                this.ii = i16 + 1;
                            }
                        }
                    }
                }
                if (this.counter == this.messagesize) {
                    this.big8 = this.checksum;
                }
                this.test = (int) (this.big8 & ((long) this.f77684k));
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (i9 > 0) {
                Digest digest2 = this.messDigestOTS;
                byte[] bArr8 = this.privateKeyOTS;
                digest2.update(bArr8, 0, bArr8.length);
                byte[] bArr9 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr9;
                this.messDigestOTS.doFinal(bArr9, 0);
                this.test--;
            }
            if (this.test == 0) {
                byte[] bArr10 = this.privateKeyOTS;
                byte[] bArr11 = this.sign;
                int i17 = this.counter;
                int i18 = this.mdsize;
                System.arraycopy(bArr10, 0, bArr11, i17 * i18, i18);
                this.big8 >>>= this.w;
                this.counter++;
                return;
            }
            return;
        }
        if (i2 < 57) {
            long j5 = this.test8;
            if (j5 == 0) {
                this.big8 = 0L;
                this.ii = 0;
                int i19 = this.r;
                int i20 = i19 % 8;
                int i21 = i19 >>> 3;
                int i22 = this.mdsize;
                if (i21 < i22) {
                    if (i19 <= (i22 << 3) - i2) {
                        int i23 = i19 + i2;
                        this.r = i23;
                        i22 = (i23 + 7) >>> 3;
                    } else {
                        this.r = i19 + i2;
                    }
                    while (true) {
                        j2 = this.big8;
                        if (i21 >= i22) {
                            break;
                        }
                        int i24 = this.hash[i21] & 255;
                        int i25 = this.ii;
                        this.big8 = j2 ^ ((long) (i24 << (i25 << 3)));
                        this.ii = i25 + 1;
                        i21++;
                    }
                    long j6 = j2 >>> i20;
                    this.big8 = j6;
                    this.test8 = j6 & ((long) this.f77684k);
                } else {
                    int i26 = this.checksum;
                    this.test8 = this.f77684k & i26;
                    this.checksum = i26 >>> i2;
                }
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else if (j5 > 0) {
                Digest digest3 = this.messDigestOTS;
                byte[] bArr12 = this.privateKeyOTS;
                digest3.update(bArr12, 0, bArr12.length);
                byte[] bArr13 = new byte[this.messDigestOTS.getDigestSize()];
                this.privateKeyOTS = bArr13;
                this.messDigestOTS.doFinal(bArr13, 0);
                this.test8--;
            }
            if (this.test8 == 0) {
                byte[] bArr14 = this.privateKeyOTS;
                byte[] bArr15 = this.sign;
                int i27 = this.counter;
                int i28 = this.mdsize;
                System.arraycopy(bArr14, 0, bArr15, i27 * i28, i28);
                this.counter++;
            }
        }
    }

    public int getLog(int i2) {
        int i3 = 1;
        int i4 = 2;
        while (i4 < i2) {
            i4 <<= 1;
            i3++;
        }
        return i3;
    }

    public byte[] getSig() {
        return this.sign;
    }

    public byte[][] getStatByte() {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 5, this.mdsize);
        bArr[0] = this.privateKeyOTS;
        bArr[1] = this.seed;
        bArr[2] = this.hash;
        bArr[3] = this.sign;
        bArr[4] = getStatLong();
        return bArr;
    }

    public int[] getStatInt() {
        return new int[]{this.counter, this.test, this.ii, this.r, this.steps, this.keysize, this.height, this.w, this.checksum};
    }

    public byte[] getStatLong() {
        long j2 = this.test8;
        long j3 = this.big8;
        return new byte[]{(byte) (j2 & 255), (byte) ((j2 >> 8) & 255), (byte) ((j2 >> 16) & 255), (byte) ((j2 >> 24) & 255), (byte) ((j2 >> 32) & 255), (byte) ((j2 >> 40) & 255), (byte) ((j2 >> 48) & 255), (byte) ((j2 >> 56) & 255), (byte) (j3 & 255), (byte) ((j3 >> 8) & 255), (byte) ((j3 >> 16) & 255), (byte) ((j3 >> 24) & 255), (byte) ((j3 >> 32) & 255), (byte) ((j3 >> 40) & 255), (byte) ((j3 >> 48) & 255), (byte) ((j3 >> 56) & 255)};
    }

    public void initSign(byte[] bArr, byte[] bArr2) {
        int i2;
        int i3;
        this.hash = new byte[this.mdsize];
        this.messDigestOTS.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
        this.hash = bArr3;
        this.messDigestOTS.doFinal(bArr3, 0);
        int i4 = this.mdsize;
        byte[] bArr4 = new byte[i4];
        System.arraycopy(this.hash, 0, bArr4, 0, i4);
        int log = getLog((this.messagesize << this.w) + 1);
        int i5 = this.w;
        int i6 = 8;
        if (8 % i5 == 0) {
            int i7 = 8 / i5;
            i2 = 0;
            for (int i8 = 0; i8 < this.mdsize; i8++) {
                for (int i9 = 0; i9 < i7; i9++) {
                    byte b2 = bArr4[i8];
                    i2 += this.f77684k & b2;
                    bArr4[i8] = (byte) (b2 >>> this.w);
                }
            }
            int i10 = (this.messagesize << this.w) - i2;
            this.checksum = i10;
            int i11 = 0;
            while (i11 < log) {
                i2 += this.f77684k & i10;
                int i12 = this.w;
                i10 >>>= i12;
                i11 += i12;
            }
        } else if (i5 < 8) {
            int i13 = this.mdsize / i5;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                long j2 = 0;
                for (int i17 = 0; i17 < this.w; i17++) {
                    j2 ^= (long) ((bArr4[i14] & 255) << (i17 << 3));
                    i14++;
                }
                int i18 = 0;
                while (i18 < i6) {
                    i15 += (int) (((long) this.f77684k) & j2);
                    j2 >>>= this.w;
                    i18++;
                    i6 = i6;
                    i13 = i13;
                }
            }
            int i19 = this.mdsize % this.w;
            long j3 = 0;
            for (int i20 = 0; i20 < i19; i20++) {
                j3 ^= (long) ((bArr4[i14] & 255) << (i20 << 3));
                i14++;
            }
            int i21 = i19 << 3;
            int i22 = 0;
            while (i22 < i21) {
                i15 += (int) (((long) this.f77684k) & j3);
                int i23 = this.w;
                j3 >>>= i23;
                i22 += i23;
            }
            int i24 = (this.messagesize << this.w) - i15;
            this.checksum = i24;
            int i25 = 0;
            i2 = i15;
            while (i25 < log) {
                i2 += this.f77684k & i24;
                int i26 = this.w;
                i24 >>>= i26;
                i25 += i26;
            }
        } else if (i5 < 57) {
            int i27 = 0;
            int i28 = 0;
            while (true) {
                i3 = this.mdsize;
                int i29 = this.w;
                if (i27 > (i3 << 3) - i29) {
                    break;
                }
                int i30 = i27 % 8;
                i27 += i29;
                int i31 = (i27 + 7) >>> 3;
                int i32 = 0;
                long j4 = 0;
                for (int i33 = i27 >>> 3; i33 < i31; i33++) {
                    j4 ^= (long) ((bArr4[i33] & 255) << (i32 << 3));
                    i32++;
                }
                i28 = (int) (((long) i28) + ((j4 >>> i30) & ((long) this.f77684k)));
            }
            int i34 = i27 >>> 3;
            if (i34 < i3) {
                int i35 = i27 % 8;
                int i36 = 0;
                long j5 = 0;
                while (i34 < this.mdsize) {
                    j5 ^= (long) ((bArr4[i34] & 255) << (i36 << 3));
                    i36++;
                    i34++;
                }
                i28 = (int) (((long) i28) + ((j5 >>> i35) & ((long) this.f77684k)));
            }
            int i37 = (this.messagesize << this.w) - i28;
            this.checksum = i37;
            int i38 = 0;
            i2 = i28;
            while (i38 < log) {
                i2 += this.f77684k & i37;
                int i39 = this.w;
                i37 >>>= i39;
                i38 += i39;
            }
        } else {
            i2 = 0;
        }
        int iCeil = this.messagesize + ((int) Math.ceil(((double) log) / ((double) this.w)));
        this.keysize = iCeil;
        this.steps = (int) Math.ceil(((double) (iCeil + i2)) / ((double) (1 << this.height)));
        int i40 = this.keysize;
        int i41 = this.mdsize;
        this.sign = new byte[i40 * i41];
        this.counter = 0;
        this.test = 0;
        this.ii = 0;
        this.test8 = 0L;
        this.r = 0;
        this.privateKeyOTS = new byte[i41];
        byte[] bArr5 = new byte[i41];
        this.seed = bArr5;
        System.arraycopy(bArr, 0, bArr5, 0, i41);
    }

    public String toString() {
        String strJ = o60.j(this.big8, "  ", new StringBuilder(""));
        int[] statInt = getStatInt();
        byte[][] statByte = getStatByte();
        for (int i2 = 0; i2 < 9; i2++) {
            strJ = a.i(statInt[i2], " ", n00.t(strJ));
        }
        for (int i3 = 0; i3 < 5; i3++) {
            strJ = n00.r(new String(Hex.encode(statByte[i3])), " ", n00.t(strJ));
        }
        return strJ;
    }

    public boolean updateSign() {
        for (int i2 = 0; i2 < this.steps; i2++) {
            if (this.counter < this.keysize) {
                oneStep();
            }
            if (this.counter == this.keysize) {
                return true;
            }
        }
        return false;
    }

    public GMSSRootSig(Digest digest, int i2, int i3) {
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        this.w = i2;
        this.height = i3;
        this.f77684k = (1 << i2) - 1;
        this.messagesize = (int) Math.ceil(((double) (digestSize << 3)) / ((double) i2));
    }
}

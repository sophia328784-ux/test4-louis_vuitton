package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;
    private int w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int i2) {
        this.w = i2;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(digest);
        int digestSize = this.messDigestOTS.getDigestSize();
        this.mdsize = digestSize;
        int i3 = (((digestSize << 3) + i2) - 1) / i2;
        this.messagesize = i3;
        int log = getLog((i3 << i2) + 1);
        this.checksumsize = log;
        int i4 = (((log + i2) - 1) / i2) + this.messagesize;
        this.keysize = i4;
        this.privateKeyOTS = new byte[i4][];
        int i5 = this.mdsize;
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, 0, bArr2, 0, i5);
        for (int i6 = 0; i6 < this.keysize; i6++) {
            this.privateKeyOTS[i6] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    private void hashPrivateKeyBlock(int i2, int i3, byte[] bArr, int i4) {
        if (i3 < 1) {
            System.arraycopy(this.privateKeyOTS[i2], 0, bArr, i4, this.mdsize);
            return;
        }
        this.messDigestOTS.update(this.privateKeyOTS[i2], 0, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr, i4);
            i3--;
            if (i3 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr, i4, this.mdsize);
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

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        int i2 = this.keysize * this.mdsize;
        byte[] bArr = new byte[i2];
        int i3 = (1 << this.w) - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < this.keysize; i5++) {
            hashPrivateKeyBlock(i5, i3, bArr, i4);
            i4 += this.mdsize;
        }
        this.messDigestOTS.update(bArr, 0, i2);
        byte[] bArr2 = new byte[this.mdsize];
        this.messDigestOTS.doFinal(bArr2, 0);
        return bArr2;
    }

    public byte[] getSignature(byte[] bArr) {
        int i2;
        int i3 = this.keysize;
        int i4 = this.mdsize;
        byte[] bArr2 = new byte[i3 * i4];
        byte[] bArr3 = new byte[i4];
        int i5 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        this.messDigestOTS.doFinal(bArr3, 0);
        int i6 = this.w;
        char c2 = '\b';
        boolean z = true;
        if (8 % i6 == 0) {
            int i7 = 8 / i6;
            int i8 = (1 << i6) - 1;
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < i4; i11++) {
                for (int i12 = 0; i12 < i7; i12++) {
                    int i13 = bArr3[i11] & i8;
                    i9 += i13;
                    hashPrivateKeyBlock(i10, i13, bArr2, this.mdsize * i10);
                    bArr3[i11] = (byte) (bArr3[i11] >>> this.w);
                    i10++;
                }
            }
            int i14 = (this.messagesize << this.w) - i9;
            while (i5 < this.checksumsize) {
                hashPrivateKeyBlock(i10, i14 & i8, bArr2, this.mdsize * i10);
                int i15 = this.w;
                i14 >>>= i15;
                i10++;
                i5 += i15;
            }
        } else if (i6 < 8) {
            int i16 = this.mdsize / i6;
            int i17 = (1 << i6) - 1;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i18 < i16) {
                boolean z2 = z;
                long j2 = 0;
                for (int i22 = 0; i22 < this.w; i22++) {
                    j2 ^= (long) ((bArr3[i19] & 255) << (i22 << 3));
                    i19++;
                }
                long j3 = j2;
                for (int i23 = 0; i23 < 8; i23++) {
                    int i24 = ((int) j3) & i17;
                    i21 += i24;
                    hashPrivateKeyBlock(i20, i24, bArr2, this.mdsize * i20);
                    j3 >>>= this.w;
                    i20++;
                }
                i18++;
                z = z2;
            }
            int i25 = this.mdsize % this.w;
            long j4 = 0;
            for (int i26 = 0; i26 < i25; i26++) {
                j4 ^= (long) ((bArr3[i19] & 255) << (i26 << 3));
                i19++;
            }
            int i27 = i25 << 3;
            int i28 = 0;
            while (i28 < i27) {
                int i29 = ((int) j4) & i17;
                i21 += i29;
                hashPrivateKeyBlock(i20, i29, bArr2, this.mdsize * i20);
                int i30 = this.w;
                j4 >>>= i30;
                i20++;
                i28 += i30;
            }
            int i31 = (this.messagesize << this.w) - i21;
            while (i5 < this.checksumsize) {
                hashPrivateKeyBlock(i20, i31 & i17, bArr2, this.mdsize * i20);
                int i32 = this.w;
                i31 >>>= i32;
                i20++;
                i5 += i32;
            }
        } else if (i6 < 57) {
            int i33 = this.mdsize;
            int i34 = (i33 << 3) - i6;
            int i35 = (1 << i6) - 1;
            byte[] bArr4 = new byte[i33];
            int i36 = 0;
            int i37 = 0;
            int i38 = 0;
            while (i36 <= i34) {
                int i39 = i36 % 8;
                char c3 = c2;
                i36 += this.w;
                int i40 = (i36 + 7) >>> 3;
                int i41 = 0;
                long j5 = 0;
                for (int i42 = i36 >>> 3; i42 < i40; i42++) {
                    j5 ^= (long) ((bArr3[i42] & 255) << (i41 << 3));
                    i41++;
                }
                long j6 = (j5 >>> i39) & ((long) i35);
                i38 = (int) (((long) i38) + j6);
                System.arraycopy(this.privateKeyOTS[i37], 0, bArr4, 0, this.mdsize);
                while (j6 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i33);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j6--;
                }
                int i43 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i37 * i43, i43);
                i37++;
                c2 = c3;
            }
            int i44 = i36 >>> 3;
            if (i44 < this.mdsize) {
                int i45 = i36 % 8;
                int i46 = 0;
                long j7 = 0;
                while (true) {
                    i2 = this.mdsize;
                    if (i44 >= i2) {
                        break;
                    }
                    j7 ^= (long) ((bArr3[i44] & 255) << (i46 << 3));
                    i46++;
                    i44++;
                }
                long j8 = (j7 >>> i45) & ((long) i35);
                i38 = (int) (((long) i38) + j8);
                System.arraycopy(this.privateKeyOTS[i37], 0, bArr4, 0, i2);
                while (j8 > 0) {
                    this.messDigestOTS.update(bArr4, 0, i33);
                    this.messDigestOTS.doFinal(bArr4, 0);
                    j8--;
                }
                int i47 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i37 * i47, i47);
                i37++;
            }
            int i48 = (this.messagesize << this.w) - i38;
            int i49 = 0;
            while (i49 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i37], 0, bArr4, 0, this.mdsize);
                for (long j9 = i48 & i35; j9 > 0; j9--) {
                    this.messDigestOTS.update(bArr4, 0, i33);
                    this.messDigestOTS.doFinal(bArr4, 0);
                }
                int i50 = this.mdsize;
                System.arraycopy(bArr4, 0, bArr2, i37 * i50, i50);
                int i51 = this.w;
                i48 >>>= i51;
                i37++;
                i49 += i51;
            }
        }
        return bArr2;
    }
}

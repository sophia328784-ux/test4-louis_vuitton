package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes5.dex */
public class WinternitzOTSVerify {
    private int mdsize;
    private Digest messDigestOTS;
    private int w;

    public WinternitzOTSVerify(Digest digest, int i2) {
        this.w = i2;
        this.messDigestOTS = digest;
        this.mdsize = digest.getDigestSize();
    }

    private void hashSignatureBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        if (i3 < 1) {
            System.arraycopy(bArr, i2, bArr2, i4, this.mdsize);
            return;
        }
        this.messDigestOTS.update(bArr, i2, this.mdsize);
        while (true) {
            this.messDigestOTS.doFinal(bArr2, i4);
            i3--;
            if (i3 <= 0) {
                return;
            } else {
                this.messDigestOTS.update(bArr2, i4, this.mdsize);
            }
        }
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int i2;
        int i3;
        int i4;
        int i5 = this.mdsize;
        byte[] bArr3 = new byte[i5];
        int i6 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        this.messDigestOTS.doFinal(bArr3, 0);
        int i7 = this.mdsize << 3;
        int i8 = this.w;
        int i9 = ((i8 - 1) + i7) / i8;
        boolean z = true;
        int log = getLog((i9 << i8) + 1);
        int i10 = this.w;
        int i11 = this.mdsize;
        int i12 = i11 * ((((log + i10) - 1) / i10) + i9);
        if (i12 != bArr2.length) {
            return null;
        }
        byte[] bArr4 = new byte[i12];
        char c2 = '\b';
        if (8 % i10 == 0) {
            int i13 = 8 / i10;
            int i14 = (1 << i10) - 1;
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            while (i17 < i5) {
                int i18 = i16;
                int i19 = 0;
                while (i19 < i13) {
                    int i20 = bArr3[i17] & i14;
                    int i21 = i15 + i20;
                    int i22 = this.mdsize;
                    hashSignatureBlock(bArr2, i18 * i22, i14 - i20, bArr4, i22 * i18);
                    bArr3[i17] = (byte) (bArr3[i17] >>> this.w);
                    i18++;
                    i19++;
                    i15 = i21;
                }
                i17++;
                i16 = i18;
            }
            int i23 = (i9 << this.w) - i15;
            int i24 = i16;
            int i25 = 0;
            while (i25 < log) {
                int i26 = this.mdsize;
                hashSignatureBlock(bArr2, i24 * i26, i14 - (i23 & i14), bArr4, i24 * i26);
                int i27 = this.w;
                i23 >>>= i27;
                i24++;
                i25 += i27;
            }
        } else {
            if (i10 >= 8) {
                if (i10 < 57) {
                    int i28 = (i11 << 3) - i10;
                    int i29 = (1 << i10) - 1;
                    byte[] bArr5 = new byte[i11];
                    int i30 = 0;
                    int i31 = 0;
                    int i32 = 0;
                    while (i30 <= i28) {
                        int i33 = i30 >>> 3;
                        int i34 = i30 % 8;
                        char c3 = c2;
                        i30 += this.w;
                        int i35 = (i30 + 7) >>> 3;
                        int i36 = i6;
                        int i37 = i33;
                        long j2 = 0;
                        while (true) {
                            i4 = i28;
                            if (i37 >= i35) {
                                break;
                            }
                            j2 ^= (long) ((bArr3[i37] & 255) << (i36 << 3));
                            i36++;
                            i37++;
                            i28 = i4;
                            bArr3 = bArr3;
                        }
                        byte[] bArr6 = bArr3;
                        long j3 = i29;
                        long j4 = (j2 >>> i34) & j3;
                        i31 = (int) (((long) i31) + j4);
                        int i38 = this.mdsize;
                        System.arraycopy(bArr2, i32 * i38, bArr5, 0, i38);
                        while (j4 < j3) {
                            this.messDigestOTS.update(bArr5, 0, i11);
                            this.messDigestOTS.doFinal(bArr5, 0);
                            j4++;
                        }
                        int i39 = this.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i32 * i39, i39);
                        i32++;
                        c2 = c3;
                        i28 = i4;
                        bArr3 = bArr6;
                        i6 = 0;
                    }
                    byte[] bArr7 = bArr3;
                    int i40 = i30 >>> 3;
                    if (i40 < this.mdsize) {
                        int i41 = i30 % 8;
                        int i42 = 0;
                        long j5 = 0;
                        while (true) {
                            i3 = this.mdsize;
                            if (i40 >= i3) {
                                break;
                            }
                            j5 ^= (long) ((bArr7[i40] & 255) << (i42 << 3));
                            i42++;
                            i40++;
                        }
                        long j6 = i29;
                        long j7 = (j5 >>> i41) & j6;
                        i31 = (int) (((long) i31) + j7);
                        System.arraycopy(bArr2, i32 * i3, bArr5, 0, i3);
                        while (j7 < j6) {
                            this.messDigestOTS.update(bArr5, 0, i11);
                            this.messDigestOTS.doFinal(bArr5, 0);
                            j7++;
                        }
                        int i43 = this.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i32 * i43, i43);
                        i32++;
                    }
                    int i44 = (i9 << this.w) - i31;
                    int i45 = 0;
                    while (i45 < log) {
                        int i46 = this.mdsize;
                        System.arraycopy(bArr2, i32 * i46, bArr5, 0, i46);
                        int i47 = i32;
                        for (long j8 = i44 & i29; j8 < i29; j8++) {
                            this.messDigestOTS.update(bArr5, 0, i11);
                            this.messDigestOTS.doFinal(bArr5, 0);
                        }
                        int i48 = this.mdsize;
                        System.arraycopy(bArr5, 0, bArr4, i47 * i48, i48);
                        int i49 = this.w;
                        i44 >>>= i49;
                        i32 = i47 + 1;
                        i45 += i49;
                    }
                    i2 = 0;
                }
                this.messDigestOTS.update(bArr4, i2, i12);
                byte[] bArr8 = new byte[this.mdsize];
                this.messDigestOTS.doFinal(bArr8, i2);
                return bArr8;
            }
            int i50 = i11 / i10;
            int i51 = (1 << i10) - 1;
            int i52 = 0;
            int i53 = 0;
            int i54 = 0;
            int i55 = 0;
            while (i52 < i50) {
                int i56 = i53;
                boolean z2 = z;
                long j9 = 0;
                for (int i57 = 0; i57 < this.w; i57++) {
                    j9 ^= (long) ((bArr3[i56] & 255) << (i57 << 3));
                    i56++;
                }
                int i58 = 0;
                while (i58 < 8) {
                    int i59 = (int) (j9 & ((long) i51));
                    int i60 = i54 + i59;
                    int i61 = this.mdsize;
                    hashSignatureBlock(bArr2, i55 * i61, i51 - i59, bArr4, i61 * i55);
                    j9 >>>= this.w;
                    i55++;
                    i58++;
                    i54 = i60;
                    i51 = i51;
                    i52 = i52;
                }
                i52++;
                z = z2;
                i53 = i56;
            }
            int i62 = i51;
            int i63 = this.mdsize % this.w;
            long j10 = 0;
            for (int i64 = 0; i64 < i63; i64++) {
                j10 ^= (long) ((bArr3[i53] & 255) << (i64 << 3));
                i53++;
            }
            int i65 = i63 << 3;
            int i66 = 0;
            while (i66 < i65) {
                int i67 = (int) (j10 & ((long) i62));
                int i68 = i54 + i67;
                int i69 = this.mdsize;
                hashSignatureBlock(bArr2, i55 * i69, i62 - i67, bArr4, i55 * i69);
                int i70 = this.w;
                j10 >>>= i70;
                i55++;
                i66 += i70;
                i54 = i68;
            }
            int i71 = (i9 << this.w) - i54;
            int i72 = 0;
            while (i72 < log) {
                int i73 = this.mdsize;
                hashSignatureBlock(bArr2, i55 * i73, i62 - (i71 & i62), bArr4, i55 * i73);
                int i74 = this.w;
                i71 >>>= i74;
                i55++;
                i72 += i74;
            }
        }
        i2 = 0;
        this.messDigestOTS.update(bArr4, i2, i12);
        byte[] bArr9 = new byte[this.mdsize];
        this.messDigestOTS.doFinal(bArr9, i2);
        return bArr9;
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

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i2 = this.w;
        int i3 = ((i2 - 1) + (digestSize << 3)) / i2;
        int log = getLog((i3 << i2) + 1);
        int i4 = this.w;
        return ((((log + i4) - 1) / i4) + i3) * digestSize;
    }
}

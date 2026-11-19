package org.bouncycastle.pqc.crypto.saber;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
class Utils {
    private final int SABER_EP;
    private final int SABER_ET;
    private final int SABER_KEYBYTES;
    private final int SABER_L;
    private final int SABER_N;
    private final int SABER_POLYBYTES;
    private final boolean usingEffectiveMasking;

    public Utils(SABEREngine sABEREngine) {
        this.SABER_N = sABEREngine.getSABER_N();
        this.SABER_L = sABEREngine.getSABER_L();
        this.SABER_ET = sABEREngine.getSABER_ET();
        this.SABER_POLYBYTES = sABEREngine.getSABER_POLYBYTES();
        this.SABER_EP = sABEREngine.getSABER_EP();
        this.SABER_KEYBYTES = sABEREngine.getSABER_KEYBYTES();
        this.usingEffectiveMasking = sABEREngine.usingEffectiveMasking;
    }

    private void BS2POLq(byte[] bArr, int i2, short[] sArr) {
        short s = 0;
        if (this.usingEffectiveMasking) {
            while (s < this.SABER_N / 2) {
                short s2 = (short) (s * 2);
                int i3 = ((short) (s * 3)) + i2;
                int i4 = bArr[i3] & 255;
                byte b2 = bArr[i3 + 1];
                sArr[s2] = (short) (i4 | ((b2 & 15) << 8));
                sArr[s2 + 1] = (short) (((bArr[i3 + 2] & 255) << 4) | ((b2 >> 4) & 15));
                s = (short) (s + 1);
            }
            return;
        }
        while (s < this.SABER_N / 8) {
            short s3 = (short) (s * 8);
            int i5 = ((short) (s * 13)) + i2;
            int i6 = bArr[i5] & 255;
            byte b3 = bArr[i5 + 1];
            sArr[s3] = (short) (i6 | ((b3 & 31) << 8));
            int i7 = ((b3 >> 5) & 7) | ((bArr[i5 + 2] & 255) << 3);
            byte b4 = bArr[i5 + 3];
            sArr[s3 + 1] = (short) (i7 | ((b4 & 3) << 11));
            int i8 = (b4 >> 2) & 63;
            byte b5 = bArr[i5 + 4];
            sArr[s3 + 2] = (short) (i8 | ((b5 & 127) << 6));
            int i9 = ((b5 >> 7) & 1) | ((bArr[i5 + 5] & 255) << 1);
            byte b6 = bArr[i5 + 6];
            sArr[s3 + 3] = (short) (i9 | ((b6 & 15) << 9));
            int i10 = ((b6 >> 4) & 15) | ((bArr[i5 + 7] & 255) << 4);
            byte b7 = bArr[i5 + 8];
            sArr[s3 + 4] = (short) (i10 | ((b7 & 1) << 12));
            int i11 = (b7 >> 1) & CertificateBody.profileType;
            byte b8 = bArr[i5 + 9];
            sArr[s3 + 5] = (short) (i11 | ((b8 & 63) << 7));
            int i12 = ((b8 >> 6) & 3) | ((bArr[i5 + 10] & 255) << 2);
            byte b9 = bArr[i5 + 11];
            sArr[s3 + 6] = (short) (i12 | ((b9 & 7) << 10));
            sArr[s3 + 7] = (short) (((bArr[i5 + 12] & 255) << 5) | ((b9 >> 3) & 31));
            s = (short) (s + 1);
        }
    }

    private void POLp2BS(byte[] bArr, int i2, short[] sArr) {
        for (short s = 0; s < this.SABER_N / 4; s = (short) (s + 1)) {
            short s2 = (short) (s * 4);
            int i3 = ((short) (s * 5)) + i2;
            short s3 = sArr[s2];
            bArr[i3] = (byte) (s3 & 255);
            short s4 = sArr[s2 + 1];
            bArr[i3 + 1] = (byte) (((s3 >> 8) & 3) | ((s4 & 63) << 2));
            int i4 = (s4 >> 6) & 15;
            short s5 = sArr[s2 + 2];
            bArr[i3 + 2] = (byte) (i4 | ((s5 & 15) << 4));
            short s6 = sArr[s2 + 3];
            bArr[i3 + 3] = (byte) (((s5 >> 4) & 63) | ((s6 & 3) << 6));
            bArr[i3 + 4] = (byte) ((s6 >> 2) & 255);
        }
    }

    private void POLq2BS(byte[] bArr, int i2, short[] sArr) {
        short s = 0;
        if (this.usingEffectiveMasking) {
            while (s < this.SABER_N / 2) {
                short s2 = (short) (s * 2);
                int i3 = ((short) (s * 3)) + i2;
                short s3 = sArr[s2];
                bArr[i3] = (byte) (s3 & 255);
                short s4 = sArr[s2 + 1];
                bArr[i3 + 1] = (byte) (((s3 >> 8) & 15) | ((s4 & 15) << 4));
                bArr[i3 + 2] = (byte) ((s4 >> 4) & 255);
                s = (short) (s + 1);
            }
            return;
        }
        while (s < this.SABER_N / 8) {
            short s5 = (short) (s * 8);
            int i4 = ((short) (s * 13)) + i2;
            short s6 = sArr[s5];
            bArr[i4] = (byte) (s6 & 255);
            short s7 = sArr[s5 + 1];
            bArr[i4 + 1] = (byte) (((s6 >> 8) & 31) | ((s7 & 7) << 5));
            bArr[i4 + 2] = (byte) ((s7 >> 3) & 255);
            int i5 = (s7 >> 11) & 3;
            short s8 = sArr[s5 + 2];
            bArr[i4 + 3] = (byte) (i5 | ((s8 & 63) << 2));
            int i6 = (s8 >> 6) & CertificateBody.profileType;
            short s9 = sArr[s5 + 3];
            bArr[i4 + 4] = (byte) (i6 | ((s9 & 1) << 7));
            bArr[i4 + 5] = (byte) ((s9 >> 1) & 255);
            int i7 = (s9 >> 9) & 15;
            short s10 = sArr[s5 + 4];
            bArr[i4 + 6] = (byte) (i7 | ((s10 & 15) << 4));
            bArr[i4 + 7] = (byte) ((s10 >> 4) & 255);
            int i8 = (s10 >> 12) & 1;
            short s11 = sArr[s5 + 5];
            bArr[i4 + 8] = (byte) (i8 | ((s11 & 127) << 1));
            int i9 = (s11 >> 7) & 63;
            short s12 = sArr[s5 + 6];
            bArr[i4 + 9] = (byte) (i9 | ((s12 & 3) << 6));
            bArr[i4 + 10] = (byte) ((s12 >> 2) & 255);
            short s13 = sArr[s5 + 7];
            bArr[i4 + 11] = (byte) (((s12 >> 10) & 7) | ((s13 & 31) << 3));
            bArr[i4 + 12] = (byte) ((s13 >> 5) & 255);
            s = (short) (s + 1);
        }
    }

    public void BS2POLT(byte[] bArr, int i2, short[] sArr) {
        int i3 = this.SABER_ET;
        short s = 0;
        if (i3 == 3) {
            while (s < this.SABER_N / 8) {
                short s2 = (short) (s * 8);
                int i4 = ((short) (s * 3)) + i2;
                byte b2 = bArr[i4];
                sArr[s2] = (short) (b2 & 7);
                sArr[s2 + 1] = (short) ((b2 >> 3) & 7);
                byte b3 = bArr[i4 + 1];
                sArr[s2 + 2] = (short) (((b2 >> 6) & 3) | ((b3 & 1) << 2));
                sArr[s2 + 3] = (short) ((b3 >> 1) & 7);
                sArr[s2 + 4] = (short) ((b3 >> 4) & 7);
                byte b4 = bArr[i4 + 2];
                sArr[s2 + 5] = (short) (((b3 >> 7) & 1) | ((b4 & 3) << 1));
                sArr[s2 + 6] = (short) ((b4 >> 2) & 7);
                sArr[s2 + 7] = (short) ((b4 >> 5) & 7);
                s = (short) (s + 1);
            }
            return;
        }
        if (i3 == 4) {
            while (s < this.SABER_N / 2) {
                short s3 = (short) (s * 2);
                byte b5 = bArr[i2 + s];
                sArr[s3] = (short) (b5 & 15);
                sArr[s3 + 1] = (short) ((b5 >> 4) & 15);
                s = (short) (s + 1);
            }
            return;
        }
        if (i3 == 6) {
            while (s < this.SABER_N / 4) {
                short s4 = (short) (s * 4);
                int i5 = ((short) (s * 3)) + i2;
                byte b6 = bArr[i5];
                sArr[s4] = (short) (b6 & 63);
                byte b7 = bArr[i5 + 1];
                sArr[s4 + 1] = (short) (((b6 >> 6) & 3) | ((b7 & 15) << 2));
                byte b8 = bArr[i5 + 2];
                sArr[s4 + 2] = (short) (((b7 & 255) >> 4) | ((b8 & 3) << 4));
                sArr[s4 + 3] = (short) ((b8 & 255) >> 2);
                s = (short) (s + 1);
            }
        }
    }

    public void BS2POLVECp(byte[] bArr, short[][] sArr) {
        for (byte b2 = 0; b2 < this.SABER_L; b2 = (byte) (b2 + 1)) {
            BS2POLp(bArr, ((this.SABER_EP * this.SABER_N) / 8) * b2, sArr[b2]);
        }
    }

    public void BS2POLVECq(byte[] bArr, int i2, short[][] sArr) {
        for (byte b2 = 0; b2 < this.SABER_L; b2 = (byte) (b2 + 1)) {
            BS2POLq(bArr, (this.SABER_POLYBYTES * b2) + i2, sArr[b2]);
        }
    }

    public void BS2POLmsg(byte[] bArr, short[] sArr) {
        for (byte b2 = 0; b2 < this.SABER_KEYBYTES; b2 = (byte) (b2 + 1)) {
            for (byte b3 = 0; b3 < 8; b3 = (byte) (b3 + 1)) {
                sArr[(b2 * 8) + b3] = (short) ((bArr[b2] >> b3) & 1);
            }
        }
    }

    public void BS2POLp(byte[] bArr, int i2, short[] sArr) {
        for (short s = 0; s < this.SABER_N / 4; s = (short) (s + 1)) {
            short s2 = (short) (s * 4);
            int i3 = ((short) (s * 5)) + i2;
            int i4 = bArr[i3] & 255;
            byte b2 = bArr[i3 + 1];
            sArr[s2] = (short) (i4 | ((b2 & 3) << 8));
            byte b3 = bArr[i3 + 2];
            sArr[s2 + 1] = (short) (((b2 >> 2) & 63) | ((b3 & 15) << 6));
            int i5 = (b3 >> 4) & 15;
            byte b4 = bArr[i3 + 3];
            sArr[s2 + 2] = (short) (i5 | ((b4 & 63) << 4));
            sArr[s2 + 3] = (short) (((bArr[i3 + 4] & 255) << 2) | ((b4 >> 6) & 3));
        }
    }

    public void POLT2BS(byte[] bArr, int i2, short[] sArr) {
        int i3 = this.SABER_ET;
        short s = 0;
        if (i3 == 3) {
            while (s < this.SABER_N / 8) {
                short s2 = (short) (s * 8);
                int i4 = ((short) (s * 3)) + i2;
                int i5 = (sArr[s2] & 7) | ((sArr[s2 + 1] & 7) << 3);
                short s3 = sArr[s2 + 2];
                bArr[i4] = (byte) (i5 | ((s3 & 3) << 6));
                int i6 = ((s3 >> 2) & 1) | ((sArr[s2 + 3] & 7) << 1) | ((sArr[s2 + 4] & 7) << 4);
                short s4 = sArr[s2 + 5];
                bArr[i4 + 1] = (byte) (i6 | ((s4 & 1) << 7));
                bArr[i4 + 2] = (byte) (((sArr[s2 + 7] & 7) << 5) | ((s4 >> 1) & 3) | ((sArr[s2 + 6] & 7) << 2));
                s = (short) (s + 1);
            }
            return;
        }
        if (i3 == 4) {
            while (s < this.SABER_N / 2) {
                short s5 = (short) (s * 2);
                bArr[i2 + s] = (byte) (((sArr[s5 + 1] & 15) << 4) | (sArr[s5] & 15));
                s = (short) (s + 1);
            }
            return;
        }
        if (i3 == 6) {
            while (s < this.SABER_N / 4) {
                short s6 = (short) (s * 4);
                int i7 = ((short) (s * 3)) + i2;
                int i8 = sArr[s6] & 63;
                short s7 = sArr[s6 + 1];
                bArr[i7] = (byte) (i8 | ((s7 & 3) << 6));
                short s8 = sArr[s6 + 2];
                bArr[i7 + 1] = (byte) (((s7 >> 2) & 15) | ((s8 & 15) << 4));
                bArr[i7 + 2] = (byte) (((sArr[s6 + 3] & 63) << 2) | ((s8 >> 4) & 3));
                s = (short) (s + 1);
            }
        }
    }

    public void POLVECp2BS(byte[] bArr, short[][] sArr) {
        for (byte b2 = 0; b2 < this.SABER_L; b2 = (byte) (b2 + 1)) {
            POLp2BS(bArr, ((this.SABER_EP * this.SABER_N) / 8) * b2, sArr[b2]);
        }
    }

    public void POLVECq2BS(byte[] bArr, short[][] sArr) {
        for (byte b2 = 0; b2 < this.SABER_L; b2 = (byte) (b2 + 1)) {
            POLq2BS(bArr, this.SABER_POLYBYTES * b2, sArr[b2]);
        }
    }

    public void POLmsg2BS(byte[] bArr, short[] sArr) {
        for (byte b2 = 0; b2 < this.SABER_KEYBYTES; b2 = (byte) (b2 + 1)) {
            for (byte b3 = 0; b3 < 8; b3 = (byte) (b3 + 1)) {
                bArr[b2] = (byte) (bArr[b2] | ((sArr[(b2 * 8) + b3] & 1) << b3));
            }
        }
    }
}

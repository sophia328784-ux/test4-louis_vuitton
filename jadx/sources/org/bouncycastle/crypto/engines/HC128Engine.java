package org.bouncycastle.crypto.engines;

import defpackage.a;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.no0;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes5.dex */
public class HC128Engine implements StreamCipher {
    private boolean initialised;
    private byte[] iv;
    private byte[] key;
    private int[] p = new int[512];
    private int[] q = new int[512];
    private int cnt = 0;
    private byte[] buf = new byte[4];
    private int idx = 0;

    private static int dim(int i2, int i3) {
        return mod512(i2 - i3);
    }

    private static int f1(int i2) {
        return (i2 >>> 3) ^ (rotateRight(i2, 7) ^ rotateRight(i2, 18));
    }

    private static int f2(int i2) {
        return (i2 >>> 10) ^ (rotateRight(i2, 17) ^ rotateRight(i2, 19));
    }

    private int g1(int i2, int i3, int i4) {
        return (rotateRight(i2, 10) ^ rotateRight(i4, 23)) + rotateRight(i3, 8);
    }

    private int g2(int i2, int i3, int i4) {
        return (rotateLeft(i2, 10) ^ rotateLeft(i4, 23)) + rotateLeft(i3, 8);
    }

    private byte getByte() {
        if (this.idx == 0) {
            int iStep = step();
            byte[] bArr = this.buf;
            bArr[0] = (byte) (iStep & 255);
            bArr[1] = (byte) ((iStep >> 8) & 255);
            bArr[2] = (byte) ((iStep >> 16) & 255);
            bArr[3] = (byte) ((iStep >> 24) & 255);
        }
        byte[] bArr2 = this.buf;
        int i2 = this.idx;
        byte b2 = bArr2[i2];
        this.idx = 3 & (i2 + 1);
        return b2;
    }

    private int h1(int i2) {
        int[] iArr = this.q;
        return iArr[i2 & 255] + iArr[((i2 >> 16) & 255) + 256];
    }

    private int h2(int i2) {
        int[] iArr = this.p;
        return iArr[i2 & 255] + iArr[((i2 >> 16) & 255) + 256];
    }

    private void init() {
        String str;
        if (this.key.length != 16) {
            str = "The key must be 128 bits long";
        } else {
            if (this.iv.length == 16) {
                this.idx = 0;
                this.cnt = 0;
                int[] iArr = new int[Sink.Video.MAX_DIMENSION_HIGH];
                for (int i2 = 0; i2 < 16; i2++) {
                    int i3 = i2 >> 2;
                    iArr[i3] = ((this.key[i2] & 255) << ((i2 & 3) * 8)) | iArr[i3];
                }
                System.arraycopy(iArr, 0, iArr, 4, 4);
                int i4 = 0;
                while (true) {
                    byte[] bArr = this.iv;
                    if (i4 >= bArr.length || i4 >= 16) {
                        break;
                    }
                    int i5 = (i4 >> 2) + 8;
                    iArr[i5] = ((bArr[i4] & 255) << ((i4 & 3) * 8)) | iArr[i5];
                    i4++;
                }
                System.arraycopy(iArr, 8, iArr, 12, 4);
                for (int i6 = 16; i6 < 1280; i6++) {
                    iArr[i6] = f2(iArr[i6 - 2]) + iArr[i6 - 7] + f1(iArr[i6 - 15]) + iArr[i6 - 16] + i6;
                }
                System.arraycopy(iArr, 256, this.p, 0, 512);
                System.arraycopy(iArr, 768, this.q, 0, 512);
                for (int i7 = 0; i7 < 512; i7++) {
                    this.p[i7] = step();
                }
                for (int i8 = 0; i8 < 512; i8++) {
                    this.q[i8] = step();
                }
                this.cnt = 0;
                return;
            }
            str = "The IV must be 128 bits long";
        }
        md.n(str);
    }

    private static int mod1024(int i2) {
        return i2 & 1023;
    }

    private static int mod512(int i2) {
        return i2 & 511;
    }

    private static int rotateLeft(int i2, int i3) {
        return (i2 >>> (-i3)) | (i2 << i3);
    }

    private static int rotateRight(int i2, int i3) {
        return (i2 << (-i3)) | (i2 >>> i3);
    }

    private int step() {
        int iH2;
        int i2;
        int iMod512 = mod512(this.cnt);
        if (this.cnt < 512) {
            int[] iArr = this.p;
            iArr[iMod512] = iArr[iMod512] + g1(iArr[dim(iMod512, 3)], this.p[dim(iMod512, 10)], this.p[dim(iMod512, 511)]);
            iH2 = h1(this.p[dim(iMod512, 12)]);
            i2 = this.p[iMod512];
        } else {
            int[] iArr2 = this.q;
            iArr2[iMod512] = iArr2[iMod512] + g2(iArr2[dim(iMod512, 3)], this.q[dim(iMod512, 10)], this.q[dim(iMod512, 511)]);
            iH2 = h2(this.q[dim(iMod512, 12)]);
            i2 = this.q[iMod512];
        }
        int i3 = i2 ^ iH2;
        this.cnt = mod1024(this.cnt + 1);
        return i3;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "HC-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) throws DataLengthException {
        if (!this.initialised) {
            no0.l(getAlgorithmName(), " not initialised");
            return 0;
        }
        if (i2 + i3 > bArr.length) {
            b21.q("input buffer too short");
            return 0;
        }
        if (i4 + i3 > bArr2.length) {
            mt.n("output buffer too short");
            return 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            bArr2[i4 + i5] = (byte) (bArr[i2 + i5] ^ getByte());
        }
        return i3;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        init();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b2) {
        return (byte) (getByte() ^ b2);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            md.n("no IV passed");
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        this.iv = parametersWithIV.getIV();
        CipherParameters parameters = parametersWithIV.getParameters();
        if (!(parameters instanceof KeyParameter)) {
            md.n(a.l("Invalid parameter passed to HC128 init - ", cipherParameters));
            return;
        }
        this.key = ((KeyParameter) parameters).getKey();
        init();
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.initialised = true;
    }
}

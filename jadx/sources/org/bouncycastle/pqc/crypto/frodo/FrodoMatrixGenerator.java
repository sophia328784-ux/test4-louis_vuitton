package org.bouncycastle.pqc.crypto.frodo;

import defpackage.cj;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
abstract class FrodoMatrixGenerator {
    int n;
    int q;

    public static class Aes128MatrixGenerator extends FrodoMatrixGenerator {
        public Aes128MatrixGenerator(int i2, int i3) {
            super(i2, i3);
        }

        @Override // org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator
        public short[] genMatrix(byte[] bArr) {
            int i2 = this.n;
            short[] sArr = new short[i2 * i2];
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            AESEngine aESEngine = new AESEngine();
            aESEngine.init(true, new KeyParameter(bArr));
            for (int i3 = 0; i3 < this.n; i3++) {
                Pack.shortToLittleEndian((short) i3, bArr2, 0);
                for (int i4 = 0; i4 < this.n; i4 += 8) {
                    Pack.shortToLittleEndian((short) i4, bArr2, 2);
                    aESEngine.processBlock(bArr2, 0, bArr3, 0);
                    for (int i5 = 0; i5 < 8; i5++) {
                        sArr[cj.a(i3, this.n, i4, i5)] = (short) (Pack.littleEndianToShort(bArr3, i5 * 2) & (this.q - 1));
                    }
                }
            }
            return sArr;
        }
    }

    public static class Shake128MatrixGenerator extends FrodoMatrixGenerator {
        public Shake128MatrixGenerator(int i2, int i3) {
            super(i2, i3);
        }

        @Override // org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator
        public short[] genMatrix(byte[] bArr) {
            int i2 = this.n;
            short[] sArr = new short[i2 * i2];
            int i3 = (i2 * 16) / 8;
            byte[] bArr2 = new byte[i3];
            int length = bArr.length + 2;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
            SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
            for (short s = 0; s < this.n; s = (short) (s + 1)) {
                Pack.shortToLittleEndian(s, bArr3, 0);
                sHAKEDigest.update(bArr3, 0, length);
                sHAKEDigest.doFinal(bArr2, 0, i3);
                short s2 = 0;
                while (true) {
                    int i4 = this.n;
                    if (s2 < i4) {
                        sArr[(i4 * s) + s2] = (short) (Pack.littleEndianToShort(bArr2, s2 * 2) & (this.q - 1));
                        s2 = (short) (s2 + 1);
                    }
                }
            }
            return sArr;
        }
    }

    public FrodoMatrixGenerator(int i2, int i3) {
        this.n = i2;
        this.q = i3;
    }

    public abstract short[] genMatrix(byte[] bArr);
}

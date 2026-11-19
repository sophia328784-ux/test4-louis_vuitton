package org.bouncycastle.crypto.engines;

/* JADX INFO: loaded from: classes5.dex */
public class VMPCKSA3Engine extends VMPCEngine {
    @Override // org.bouncycastle.crypto.engines.VMPCEngine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC-KSA3";
    }

    @Override // org.bouncycastle.crypto.engines.VMPCEngine
    public void initKey(byte[] bArr, byte[] bArr2) {
        this.s = (byte) 0;
        this.P = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            this.P[i2] = (byte) i2;
        }
        for (int i3 = 0; i3 < 768; i3++) {
            byte[] bArr3 = this.P;
            byte b2 = this.s;
            int i4 = i3 & 255;
            byte b3 = bArr3[i4];
            byte b4 = bArr3[(b2 + b3 + bArr[i3 % bArr.length]) & 255];
            this.s = b4;
            bArr3[i4] = bArr3[b4 & 255];
            bArr3[b4 & 255] = b3;
        }
        for (int i5 = 0; i5 < 768; i5++) {
            byte[] bArr4 = this.P;
            byte b5 = this.s;
            int i6 = i5 & 255;
            byte b6 = bArr4[i6];
            byte b7 = bArr4[(b5 + b6 + bArr2[i5 % bArr2.length]) & 255];
            this.s = b7;
            bArr4[i6] = bArr4[b7 & 255];
            bArr4[b7 & 255] = b6;
        }
        for (int i7 = 0; i7 < 768; i7++) {
            byte[] bArr5 = this.P;
            byte b8 = this.s;
            int i8 = i7 & 255;
            byte b9 = bArr5[i8];
            byte b10 = bArr5[(b8 + b9 + bArr[i7 % bArr.length]) & 255];
            this.s = b10;
            bArr5[i8] = bArr5[b10 & 255];
            bArr5[b10 & 255] = b9;
        }
        this.n = (byte) 0;
    }
}

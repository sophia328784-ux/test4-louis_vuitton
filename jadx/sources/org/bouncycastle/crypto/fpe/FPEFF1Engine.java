package org.bouncycastle.crypto.fpe;

import defpackage.md;
import defpackage.mt;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public class FPEFF1Engine extends FPEEngine {
    public FPEFF1Engine(BlockCipher blockCipher) {
        super(blockCipher);
        if (blockCipher.getBlockSize() != 16) {
            md.n("base cipher needs to be 128 bits");
            throw null;
        }
        if (Properties.isOverrideSet("org.bouncycastle.fpe.disable") || Properties.isOverrideSet("org.bouncycastle.fpe.disable_ff1")) {
            mt.i("FF1 encryption disabled");
            throw null;
        }
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public int decryptBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        int i5;
        byte[] bArrDecryptFF1;
        int radix = this.fpeParameters.getRadix();
        BlockCipher blockCipher = this.baseCipher;
        if (radix > 256) {
            bArrDecryptFF1 = FPEEngine.toByteArray(SP80038G.decryptFF1w(blockCipher, this.fpeParameters.getRadixConverter(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i2, i3 / 2));
            i5 = i3;
        } else {
            i5 = i3;
            bArrDecryptFF1 = SP80038G.decryptFF1(blockCipher, this.fpeParameters.getRadixConverter(), this.fpeParameters.getTweak(), bArr, i2, i5);
        }
        System.arraycopy(bArrDecryptFF1, 0, bArr2, i4, i5);
        return i5;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public int encryptBlock(byte[] bArr, int i2, int i3, byte[] bArr2, int i4) {
        int i5;
        byte[] bArrEncryptFF1;
        int radix = this.fpeParameters.getRadix();
        BlockCipher blockCipher = this.baseCipher;
        if (radix > 256) {
            bArrEncryptFF1 = FPEEngine.toByteArray(SP80038G.encryptFF1w(blockCipher, this.fpeParameters.getRadixConverter(), this.fpeParameters.getTweak(), FPEEngine.toShortArray(bArr), i2, i3 / 2));
            i5 = i3;
        } else {
            i5 = i3;
            bArrEncryptFF1 = SP80038G.encryptFF1(blockCipher, this.fpeParameters.getRadixConverter(), this.fpeParameters.getTweak(), bArr, i2, i5);
        }
        System.arraycopy(bArrEncryptFF1, 0, bArr2, i4, i5);
        return i5;
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public String getAlgorithmName() {
        return "FF1";
    }

    @Override // org.bouncycastle.crypto.fpe.FPEEngine
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        FPEParameters fPEParameters = (FPEParameters) cipherParameters;
        this.fpeParameters = fPEParameters;
        this.baseCipher.init(!fPEParameters.isUsingInverseFunction(), this.fpeParameters.getKey());
    }

    public FPEFF1Engine() {
        this(AESEngine.newInstance());
    }
}

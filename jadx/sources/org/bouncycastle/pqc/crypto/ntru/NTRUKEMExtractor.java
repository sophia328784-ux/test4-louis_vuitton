package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.crypto.EncapsulatedSecretExtractor;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class NTRUKEMExtractor implements EncapsulatedSecretExtractor {
    private final NTRUPrivateKeyParameters ntruPrivateKey;
    private final NTRUParameters params;

    public NTRUKEMExtractor(NTRUPrivateKeyParameters nTRUPrivateKeyParameters) {
        this.params = nTRUPrivateKeyParameters.getParameters();
        this.ntruPrivateKey = nTRUPrivateKeyParameters;
    }

    private void cmov(byte[] bArr, byte[] bArr2, byte b2) {
        byte b3 = (byte) ((~b2) + 1);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b4 = bArr[i2];
            bArr[i2] = (byte) (b4 ^ ((bArr2[i2] ^ b4) & b3));
        }
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public byte[] extractSecret(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params.parameterSet;
        byte[] bArr2 = this.ntruPrivateKey.privateKey;
        int iNtruCiphertextBytes = nTRUParameterSet.ntruCiphertextBytes() + nTRUParameterSet.prfKeyBytes();
        byte[] bArr3 = new byte[iNtruCiphertextBytes];
        OWCPADecryptResult oWCPADecryptResultDecrypt = new NTRUOWCPA(nTRUParameterSet).decrypt(bArr, this.ntruPrivateKey.privateKey);
        byte[] bArr4 = oWCPADecryptResultDecrypt.rm;
        int i2 = oWCPADecryptResultDecrypt.fail;
        SHA3Digest sHA3Digest = new SHA3Digest(256);
        byte[] bArr5 = new byte[sHA3Digest.getDigestSize()];
        sHA3Digest.update(bArr4, 0, bArr4.length);
        sHA3Digest.doFinal(bArr5, 0);
        for (int i3 = 0; i3 < nTRUParameterSet.prfKeyBytes(); i3++) {
            bArr3[i3] = bArr2[nTRUParameterSet.owcpaSecretKeyBytes() + i3];
        }
        for (int i4 = 0; i4 < nTRUParameterSet.ntruCiphertextBytes(); i4++) {
            bArr3[nTRUParameterSet.prfKeyBytes() + i4] = bArr[i4];
        }
        sHA3Digest.reset();
        sHA3Digest.update(bArr3, 0, iNtruCiphertextBytes);
        sHA3Digest.doFinal(bArr4, 0);
        cmov(bArr5, bArr4, (byte) i2);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr5, 0, nTRUParameterSet.sharedKeyBytes());
        Arrays.clear(bArr5);
        return bArrCopyOfRange;
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public int getEncapsulationLength() {
        return this.params.parameterSet.ntruCiphertextBytes();
    }
}

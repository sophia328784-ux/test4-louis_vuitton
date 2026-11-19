package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes5.dex */
abstract class Symmetric {
    final int xofBlockBytes;

    @Deprecated
    public static class AesSymmetric extends Symmetric {
        private final StreamCipher cipher;
        private final SHA256Digest sha256Digest;
        private final SHA512Digest sha512Digest;

        public AesSymmetric() {
            super(64);
            this.sha256Digest = new SHA256Digest();
            this.sha512Digest = new SHA512Digest();
            this.cipher = SICBlockCipher.newInstance(AESEngine.newInstance());
        }

        private void aes128(byte[] bArr, int i2, int i3) {
            this.cipher.processBytes(new byte[i3], 0, i3, bArr, i2);
        }

        private void doDigest(ExtendedDigest extendedDigest, byte[] bArr, byte[] bArr2, int i2) {
            extendedDigest.update(bArr2, 0, bArr2.length);
            extendedDigest.doFinal(bArr, i2);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void hash_g(byte[] bArr, byte[] bArr2) {
            doDigest(this.sha512Digest, bArr, bArr2, 0);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void hash_h(byte[] bArr, byte[] bArr2, int i2) {
            doDigest(this.sha256Digest, bArr, bArr2, i2);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void kdf(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[32];
            doDigest(this.sha256Digest, bArr3, bArr2, 0);
            System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void prf(byte[] bArr, byte[] bArr2, byte b2) {
            byte[] bArr3 = new byte[12];
            bArr3[0] = b2;
            this.cipher.init(true, new ParametersWithIV(new KeyParameter(bArr2, 0, 32), bArr3));
            aes128(bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void xofAbsorb(byte[] bArr, byte b2, byte b3) {
            byte[] bArr2 = new byte[12];
            bArr2[0] = b2;
            bArr2[1] = b3;
            this.cipher.init(true, new ParametersWithIV(new KeyParameter(bArr, 0, 32), bArr2));
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void xofSqueezeBlocks(byte[] bArr, int i2, int i3) {
            aes128(bArr, i2, i3);
        }
    }

    public static class ShakeSymmetric extends Symmetric {
        private final SHA3Digest sha3Digest256;
        private final SHA3Digest sha3Digest512;
        private final SHAKEDigest shakeDigest;
        private final SHAKEDigest xof;

        public ShakeSymmetric() {
            super(168);
            this.xof = new SHAKEDigest(128);
            this.shakeDigest = new SHAKEDigest(256);
            this.sha3Digest256 = new SHA3Digest(256);
            this.sha3Digest512 = new SHA3Digest(512);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void hash_g(byte[] bArr, byte[] bArr2) {
            this.sha3Digest512.update(bArr2, 0, bArr2.length);
            this.sha3Digest512.doFinal(bArr, 0);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void hash_h(byte[] bArr, byte[] bArr2, int i2) {
            this.sha3Digest256.update(bArr2, 0, bArr2.length);
            this.sha3Digest256.doFinal(bArr, i2);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void kdf(byte[] bArr, byte[] bArr2) {
            this.shakeDigest.update(bArr2, 0, bArr2.length);
            this.shakeDigest.doFinal(bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void prf(byte[] bArr, byte[] bArr2, byte b2) {
            int length = bArr2.length + 1;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            bArr3[bArr2.length] = b2;
            this.shakeDigest.update(bArr3, 0, length);
            this.shakeDigest.doFinal(bArr, 0, bArr.length);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void xofAbsorb(byte[] bArr, byte b2, byte b3) {
            this.xof.reset();
            byte[] bArr2 = new byte[bArr.length + 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr2[bArr.length] = b2;
            bArr2[bArr.length + 1] = b3;
            this.xof.update(bArr2, 0, bArr.length + 2);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.kyber.Symmetric
        public void xofSqueezeBlocks(byte[] bArr, int i2, int i3) {
            this.xof.doOutput(bArr, i2, i3);
        }
    }

    public Symmetric(int i2) {
        this.xofBlockBytes = i2;
    }

    public abstract void hash_g(byte[] bArr, byte[] bArr2);

    public abstract void hash_h(byte[] bArr, byte[] bArr2, int i2);

    public abstract void kdf(byte[] bArr, byte[] bArr2);

    public abstract void prf(byte[] bArr, byte[] bArr2, byte b2);

    public abstract void xofAbsorb(byte[] bArr, byte b2, byte b3);

    public abstract void xofSqueezeBlocks(byte[] bArr, int i2, int i3);
}

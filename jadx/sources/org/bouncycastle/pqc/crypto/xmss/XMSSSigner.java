package org.bouncycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
import org.bouncycastle.pqc.crypto.StateAwareMessageSigner;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSSigner implements StateAwareMessageSigner {
    private boolean hasGenerated;
    private boolean initSign;
    private KeyedHashFunctions khf;
    private XMSSParameters params;
    private XMSSPrivateKeyParameters privateKey;
    private XMSSPublicKeyParameters publicKey;
    private WOTSPlus wotsPlus;

    private WOTSPlusSignature wotsSign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        if (bArr.length != this.params.getTreeDigestSize()) {
            md.n("size of messageDigest needs to be equal to size of digest");
            return null;
        }
        if (oTSHashAddress == null) {
            r81.d("otsHashAddress == null");
            return null;
        }
        WOTSPlus wOTSPlus = this.wotsPlus;
        wOTSPlus.importKeys(wOTSPlus.getWOTSPlusSecretKey(this.privateKey.getSecretKeySeed(), oTSHashAddress), this.privateKey.getPublicSeed());
        return this.wotsPlus.sign(bArr, oTSHashAddress);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] byteArray;
        if (bArr == null) {
            r81.d("message == null");
            return null;
        }
        if (!this.initSign) {
            md.k("signer not initialized for signature generation");
            return null;
        }
        XMSSPrivateKeyParameters xMSSPrivateKeyParameters = this.privateKey;
        if (xMSSPrivateKeyParameters == null) {
            md.k("signing key no longer usable");
            return null;
        }
        synchronized (xMSSPrivateKeyParameters) {
            try {
                if (this.privateKey.getUsagesRemaining() <= 0) {
                    throw new ExhaustedPrivateKeyException("no usages of private key remaining");
                }
                if (this.privateKey.getBDSState().getAuthenticationPath().isEmpty()) {
                    throw new IllegalStateException("not initialized");
                }
                try {
                    int index = this.privateKey.getIndex();
                    this.hasGenerated = true;
                    long j2 = index;
                    byte[] bArrPRF = this.khf.PRF(this.privateKey.getSecretKeyPRF(), XMSSUtil.toBytesBigEndian(j2, 32));
                    byteArray = new XMSSSignature.Builder(this.params).withIndex(index).withRandom(bArrPRF).withWOTSPlusSignature(wotsSign(this.khf.HMsg(Arrays.concatenate(bArrPRF, this.privateKey.getRoot(), XMSSUtil.toBytesBigEndian(j2, this.params.getTreeDigestSize())), bArr), (OTSHashAddress) new OTSHashAddress.Builder().withOTSAddress(index).build())).withAuthPath(this.privateKey.getBDSState().getAuthenticationPath()).build().toByteArray();
                    this.privateKey.getBDSState().markUsed();
                    this.privateKey.rollKey();
                } catch (Throwable th) {
                    this.privateKey.getBDSState().markUsed();
                    this.privateKey.rollKey();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return byteArray;
    }

    @Override // org.bouncycastle.pqc.crypto.StateAwareMessageSigner
    public AsymmetricKeyParameter getUpdatedPrivateKey() {
        XMSSPrivateKeyParameters xMSSPrivateKeyParameters;
        synchronized (this.privateKey) {
            try {
                boolean z = this.hasGenerated;
                xMSSPrivateKeyParameters = this.privateKey;
                if (z) {
                    this.privateKey = null;
                } else if (xMSSPrivateKeyParameters != null) {
                    this.privateKey = xMSSPrivateKeyParameters.getNextKey();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return xMSSPrivateKeyParameters;
    }

    public long getUsagesRemaining() {
        return this.privateKey.getUsagesRemaining();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        XMSSParameters parameters;
        if (z) {
            this.initSign = true;
            this.hasGenerated = false;
            XMSSPrivateKeyParameters xMSSPrivateKeyParameters = (XMSSPrivateKeyParameters) cipherParameters;
            this.privateKey = xMSSPrivateKeyParameters;
            parameters = xMSSPrivateKeyParameters.getParameters();
        } else {
            this.initSign = false;
            XMSSPublicKeyParameters xMSSPublicKeyParameters = (XMSSPublicKeyParameters) cipherParameters;
            this.publicKey = xMSSPublicKeyParameters;
            parameters = xMSSPublicKeyParameters.getParameters();
        }
        this.params = parameters;
        WOTSPlus wOTSPlus = this.params.getWOTSPlus();
        this.wotsPlus = wOTSPlus;
        this.khf = wOTSPlus.getKhf();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        XMSSSignature xMSSSignatureBuild = new XMSSSignature.Builder(this.params).withSignature(bArr2).build();
        int index = xMSSSignatureBuild.getIndex();
        this.wotsPlus.importKeys(new byte[this.params.getTreeDigestSize()], this.publicKey.getPublicSeed());
        long j2 = index;
        byte[] bArrHMsg = this.khf.HMsg(Arrays.concatenate(xMSSSignatureBuild.getRandom(), this.publicKey.getRoot(), XMSSUtil.toBytesBigEndian(j2, this.params.getTreeDigestSize())), bArr);
        int height = this.params.getHeight();
        return Arrays.constantTimeAreEqual(XMSSVerifierUtil.getRootNodeFromSignature(this.wotsPlus, height, bArrHMsg, xMSSSignatureBuild, (OTSHashAddress) new OTSHashAddress.Builder().withOTSAddress(index).build(), XMSSUtil.getLeafIndex(j2, height)).getValue(), this.publicKey.getRoot());
    }
}

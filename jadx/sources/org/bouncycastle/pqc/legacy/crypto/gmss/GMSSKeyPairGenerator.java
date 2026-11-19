package org.bouncycastle.pqc.legacy.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSignature;

/* JADX INFO: loaded from: classes5.dex */
public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.3";
    private int[] K;
    private byte[][] currentRootSigs;
    private byte[][] currentSeeds;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSKeyGenerationParameters gmssParams;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private boolean initialized = false;
    private int mdLength;
    private Digest messDigestTree;
    private byte[][] nextNextSeeds;
    private int numLayer;
    private int[] otsIndex;

    public GMSSKeyPairGenerator(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTree);
    }

    private AsymmetricCipherKeyPair genKeyPair() {
        int i2;
        Class cls;
        int i3;
        int i4;
        if (!this.initialized) {
            initializeDefault();
        }
        int i5 = this.numLayer;
        byte[][][] bArr = new byte[i5][][];
        byte[][][] bArr2 = new byte[i5 - 1][][];
        Treehash[][] treehashArr = new Treehash[i5][];
        Treehash[][] treehashArr2 = new Treehash[i5 - 1][];
        Vector[] vectorArr = new Vector[i5];
        Vector[] vectorArr2 = new Vector[i5 - 1];
        Vector[][] vectorArr3 = new Vector[i5][];
        char c2 = 1;
        Vector[][] vectorArr4 = new Vector[i5 - 1][];
        int i6 = 0;
        while (true) {
            i2 = this.numLayer;
            cls = Byte.TYPE;
            if (i6 >= i2) {
                break;
            }
            int i7 = this.heightOfTrees[i6];
            char c3 = c2;
            int[] iArr = new int[2];
            iArr[c3] = this.mdLength;
            iArr[0] = i7;
            bArr[i6] = (byte[][]) Array.newInstance((Class<?>) cls, iArr);
            int i8 = this.heightOfTrees[i6];
            treehashArr[i6] = new Treehash[i8 - this.K[i6]];
            if (i6 > 0) {
                int i9 = i6 - 1;
                int[] iArr2 = new int[2];
                iArr2[c3] = this.mdLength;
                iArr2[0] = i8;
                bArr2[i9] = (byte[][]) Array.newInstance((Class<?>) cls, iArr2);
                treehashArr2[i9] = new Treehash[this.heightOfTrees[i6] - this.K[i6]];
            }
            vectorArr[i6] = new Vector();
            if (i6 > 0) {
                vectorArr2[i6 - 1] = new Vector();
            }
            i6++;
            c2 = c3;
        }
        char c4 = c2;
        int[] iArr3 = new int[2];
        iArr3[c4] = this.mdLength;
        iArr3[0] = i2;
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) cls, iArr3);
        int i10 = this.numLayer - 1;
        int[] iArr4 = new int[2];
        iArr4[c4] = this.mdLength;
        iArr4[0] = i10;
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) cls, iArr4);
        int i11 = this.numLayer;
        int[] iArr5 = new int[2];
        iArr5[c4] = this.mdLength;
        iArr5[0] = i11;
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) cls, iArr5);
        int i12 = 0;
        while (true) {
            i3 = this.numLayer;
            if (i12 >= i3) {
                break;
            }
            System.arraycopy(this.currentSeeds[i12], 0, bArr5[i12], 0, this.mdLength);
            i12++;
            bArr5 = bArr5;
            bArr3 = bArr3;
        }
        byte[][] bArr6 = bArr5;
        byte[][] bArr7 = bArr3;
        int[] iArr6 = new int[2];
        iArr6[c4] = this.mdLength;
        iArr6[0] = i3 - 1;
        this.currentRootSigs = (byte[][]) Array.newInstance((Class<?>) cls, iArr6);
        int i13 = this.numLayer - 1;
        while (true) {
            i4 = this.numLayer;
            if (i13 < 0) {
                break;
            }
            GMSSRootCalc gMSSRootCalcGenerateCurrentAuthpathAndRoot = i13 == i4 + (-1) ? generateCurrentAuthpathAndRoot(null, vectorArr[i13], bArr6[i13], i13) : generateCurrentAuthpathAndRoot(bArr7[i13 + 1], vectorArr[i13], bArr6[i13], i13);
            int i14 = 0;
            while (i14 < this.heightOfTrees[i13]) {
                System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getAuthPath()[i14], 0, bArr[i13][i14], 0, this.mdLength);
                i14++;
                i13 = i13;
            }
            int i15 = i13;
            vectorArr3[i15] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRetain();
            treehashArr[i15] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getTreehash();
            System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRoot(), 0, bArr7[i15], 0, this.mdLength);
            i13 = i15 - 1;
        }
        int i16 = i4 - 2;
        while (i16 >= 0) {
            int i17 = i16 + 1;
            GMSSRootCalc gMSSRootCalcGenerateNextAuthpathAndRoot = generateNextAuthpathAndRoot(vectorArr2[i16], bArr6[i17], i17);
            int i18 = 0;
            while (i18 < this.heightOfTrees[i17]) {
                System.arraycopy(gMSSRootCalcGenerateNextAuthpathAndRoot.getAuthPath()[i18], 0, bArr2[i16][i18], 0, this.mdLength);
                i18++;
                gMSSRootCalcGenerateNextAuthpathAndRoot = gMSSRootCalcGenerateNextAuthpathAndRoot;
                i16 = i16;
            }
            GMSSRootCalc gMSSRootCalc = gMSSRootCalcGenerateNextAuthpathAndRoot;
            int i19 = i16;
            vectorArr4[i19] = gMSSRootCalc.getRetain();
            treehashArr2[i19] = gMSSRootCalc.getTreehash();
            System.arraycopy(gMSSRootCalc.getRoot(), 0, bArr4[i19], 0, this.mdLength);
            System.arraycopy(bArr6[i17], 0, this.nextNextSeeds[i19], 0, this.mdLength);
            i16 = i19 - 1;
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new GMSSPublicKeyParameters(bArr7[0], this.gmssPS), (AsymmetricKeyParameter) new GMSSPrivateKeyParameters(this.currentSeeds, this.nextNextSeeds, bArr, bArr2, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, bArr4, this.currentRootSigs, this.gmssPS, this.digestProvider));
    }

    private GMSSRootCalc generateCurrentAuthpathAndRoot(byte[] bArr, Vector vector, byte[] bArr2, int i2) {
        byte[] bArrVerify;
        int i3 = this.mdLength;
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i3];
        byte[] bArrNextSeed = this.gmssRandom.nextSeed(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i2], this.K[i2], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int i4 = this.numLayer - 1;
        GMSSDigestProvider gMSSDigestProvider = this.digestProvider;
        if (i2 == i4) {
            bArrVerify = new WinternitzOTSignature(bArrNextSeed, gMSSDigestProvider.get(), this.otsIndex[i2]).getPublicKey();
        } else {
            this.currentRootSigs[i2] = new WinternitzOTSignature(bArrNextSeed, gMSSDigestProvider.get(), this.otsIndex[i2]).getSignature(bArr);
            bArrVerify = new WinternitzOTSVerify(this.digestProvider.get(), this.otsIndex[i2]).Verify(bArr, this.currentRootSigs[i2]);
        }
        gMSSRootCalc.update(bArrVerify);
        int i5 = 3;
        int i6 = 0;
        int i7 = 1;
        while (true) {
            int i8 = this.heightOfTrees[i2];
            if (i7 >= (1 << i8)) {
                break;
            }
            if (i7 == i5 && i6 < i8 - this.K[i2]) {
                gMSSRootCalc.initializeTreehashSeed(bArr2, i6);
                i5 *= 2;
                i6++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr2), this.digestProvider.get(), this.otsIndex[i2]).getPublicKey());
            i7++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private GMSSRootCalc generateNextAuthpathAndRoot(Vector vector, byte[] bArr, int i2) {
        byte[] bArr2 = new byte[this.numLayer];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i2], this.K[i2], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int i3 = 3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.heightOfTrees[i2];
            if (i4 >= (1 << i6)) {
                break;
            }
            if (i4 == i3 && i5 < i6 - this.K[i2]) {
                gMSSRootCalc.initializeTreehashSeed(bArr, i5);
                i3 *= 2;
                i5++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr), this.digestProvider.get(), this.otsIndex[i2]).getPublicKey());
            i4++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private void initializeDefault() {
        initialize(new GMSSKeyGenerationParameters(null, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.gmssParams = gMSSKeyGenerationParameters;
        GMSSParameters gMSSParameters = new GMSSParameters(gMSSKeyGenerationParameters.getParameters().getNumOfLayers(), this.gmssParams.getParameters().getHeightOfTrees(), this.gmssParams.getParameters().getWinternitzParameter(), this.gmssParams.getParameters().getK());
        this.gmssPS = gMSSParameters;
        this.numLayer = gMSSParameters.getNumOfLayers();
        this.heightOfTrees = this.gmssPS.getHeightOfTrees();
        this.otsIndex = this.gmssPS.getWinternitzParameter();
        this.K = this.gmssPS.getK();
        int[] iArr = {this.numLayer, this.mdLength};
        Class cls = Byte.TYPE;
        this.currentSeeds = (byte[][]) Array.newInstance((Class<?>) cls, iArr);
        this.nextNextSeeds = (byte[][]) Array.newInstance((Class<?>) cls, this.numLayer - 1, this.mdLength);
        SecureRandom random = keyGenerationParameters.getRandom();
        for (int i2 = 0; i2 < this.numLayer; i2++) {
            random.nextBytes(this.currentSeeds[i2]);
            this.gmssRandom.nextSeed(this.currentSeeds[i2]);
        }
        this.initialized = true;
    }

    public void initialize(int i2, SecureRandom secureRandom) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters;
        if (i2 <= 10) {
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(1, new int[]{10}, new int[]{3}, new int[]{2}));
        } else {
            gMSSKeyGenerationParameters = i2 <= 20 ? new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2}));
        }
        initialize(gMSSKeyGenerationParameters);
    }
}

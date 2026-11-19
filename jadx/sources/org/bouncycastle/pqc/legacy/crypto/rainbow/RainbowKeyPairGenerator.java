package org.bouncycastle.pqc.legacy.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField;
import org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private short[][] A1;
    private short[][] A1inv;
    private short[][] A2;
    private short[][] A2inv;
    private short[] b1;
    private short[] b2;
    private boolean initialized = false;
    private Layer[] layers;
    private int numOfLayers;
    private short[][] pub_quadratic;
    private short[] pub_scalar;
    private short[][] pub_singular;
    private RainbowKeyGenerationParameters rainbowParams;
    private SecureRandom sr;
    private int[] vi;

    private void compactPublicKey(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        this.pub_quadratic = (short[][]) Array.newInstance((Class<?>) Short.TYPE, length, ((length2 + 1) * length2) / 2);
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < length2; i4++) {
                for (int i5 = i4; i5 < length2; i5++) {
                    short[][] sArr2 = this.pub_quadratic;
                    if (i5 == i4) {
                        sArr2[i2][i3] = sArr[i2][i4][i5];
                    } else {
                        short[] sArr3 = sArr2[i2];
                        short[][] sArr4 = sArr[i2];
                        sArr3[i3] = GF2Field.addElem(sArr4[i4][i5], sArr4[i5][i4]);
                    }
                    i3++;
                }
            }
        }
    }

    private void computePublicKey() {
        int i2;
        ComputeInField computeInField = new ComputeInField();
        int[] iArr = this.vi;
        boolean z = true;
        int i3 = 0;
        int i4 = iArr[iArr.length - 1] - iArr[0];
        int i5 = iArr[iArr.length - 1];
        int i6 = 3;
        int i7 = 2;
        Class cls = Short.TYPE;
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) cls, i4, i5, i5);
        this.pub_singular = (short[][]) Array.newInstance((Class<?>) cls, i4, i5);
        this.pub_scalar = new short[i4];
        short[] sArr2 = new short[i5];
        int i8 = 0;
        int i9 = 0;
        while (true) {
            Layer[] layerArr = this.layers;
            if (i8 >= layerArr.length) {
                break;
            }
            short[][][] coeffAlpha = layerArr[i8].getCoeffAlpha();
            short[][][] coeffBeta = this.layers[i8].getCoeffBeta();
            short[][] coeffGamma = this.layers[i8].getCoeffGamma();
            short[] coeffEta = this.layers[i8].getCoeffEta();
            boolean z2 = z;
            int length = coeffAlpha[i3].length;
            int i10 = i3;
            int length2 = coeffBeta[i10].length;
            int i11 = i7;
            int i12 = i10;
            while (i12 < length) {
                int i13 = i10;
                while (true) {
                    i2 = i5;
                    if (i13 >= length) {
                        break;
                    }
                    int i14 = i10;
                    while (i14 < length2) {
                        int i15 = i14;
                        int i16 = length;
                        int i17 = i13 + length2;
                        short[] sArrMultVect = computeInField.multVect(coeffAlpha[i12][i13][i15], this.A2[i17]);
                        int i18 = i9 + i12;
                        int i19 = i13;
                        sArr[i18] = computeInField.addSquareMatrix(sArr[i18], computeInField.multVects(sArrMultVect, this.A2[i15]));
                        short[] sArrMultVect2 = computeInField.multVect(this.b2[i15], sArrMultVect);
                        short[][] sArr3 = this.pub_singular;
                        sArr3[i18] = computeInField.addVect(sArrMultVect2, sArr3[i18]);
                        short[] sArrMultVect3 = computeInField.multVect(this.b2[i17], computeInField.multVect(coeffAlpha[i12][i19][i15], this.A2[i15]));
                        short[][] sArr4 = this.pub_singular;
                        sArr4[i18] = computeInField.addVect(sArrMultVect3, sArr4[i18]);
                        short sMultElem = GF2Field.multElem(coeffAlpha[i12][i19][i15], this.b2[i17]);
                        short[] sArr5 = this.pub_scalar;
                        sArr5[i18] = GF2Field.addElem(sArr5[i18], GF2Field.multElem(sMultElem, this.b2[i15]));
                        i14 = i15 + 1;
                        length = i16;
                        i13 = i19;
                    }
                    i13++;
                    i5 = i2;
                }
                int i20 = length;
                int i21 = i10;
                while (i21 < length2) {
                    int i22 = i10;
                    while (i22 < length2) {
                        int i23 = i21;
                        short[] sArrMultVect4 = computeInField.multVect(coeffBeta[i12][i21][i22], this.A2[i23]);
                        int i24 = i9 + i12;
                        int i25 = i22;
                        sArr[i24] = computeInField.addSquareMatrix(sArr[i24], computeInField.multVects(sArrMultVect4, this.A2[i25]));
                        short[] sArrMultVect5 = computeInField.multVect(this.b2[i25], sArrMultVect4);
                        short[][] sArr6 = this.pub_singular;
                        sArr6[i24] = computeInField.addVect(sArrMultVect5, sArr6[i24]);
                        short[] sArrMultVect6 = computeInField.multVect(this.b2[i23], computeInField.multVect(coeffBeta[i12][i23][i25], this.A2[i25]));
                        short[][] sArr7 = this.pub_singular;
                        sArr7[i24] = computeInField.addVect(sArrMultVect6, sArr7[i24]);
                        short sMultElem2 = GF2Field.multElem(coeffBeta[i12][i23][i25], this.b2[i23]);
                        short[] sArr8 = this.pub_scalar;
                        sArr8[i24] = GF2Field.addElem(sArr8[i24], GF2Field.multElem(sMultElem2, this.b2[i25]));
                        i22 = i25 + 1;
                        i21 = i23;
                        length2 = length2;
                    }
                    i21++;
                }
                int i26 = length2;
                int i27 = i10;
                while (i27 < i26 + i20) {
                    short[] sArrMultVect7 = computeInField.multVect(coeffGamma[i12][i27], this.A2[i27]);
                    short[][] sArr9 = this.pub_singular;
                    int i28 = i9 + i12;
                    int i29 = i27;
                    sArr9[i28] = computeInField.addVect(sArrMultVect7, sArr9[i28]);
                    short[] sArr10 = this.pub_scalar;
                    sArr10[i28] = GF2Field.addElem(sArr10[i28], GF2Field.multElem(coeffGamma[i12][i29], this.b2[i29]));
                    i27 = i29 + 1;
                }
                short[] sArr11 = this.pub_scalar;
                int i30 = i9 + i12;
                sArr11[i30] = GF2Field.addElem(sArr11[i30], coeffEta[i12]);
                i12++;
                i5 = i2;
                length = i20;
                length2 = i26;
            }
            i9 += length;
            i8++;
            z = z2;
            i3 = i10;
            i7 = i11;
            i6 = 3;
        }
        int i31 = i5;
        boolean z3 = z;
        int i32 = i3;
        int i33 = i7;
        int[] iArr2 = new int[i6];
        iArr2[i33] = i31;
        iArr2[z3 ? 1 : 0] = i31;
        iArr2[i32] = i4;
        short[][][] sArr12 = (short[][][]) Array.newInstance((Class<?>) cls, iArr2);
        int[] iArr3 = new int[i33];
        iArr3[z3 ? 1 : 0] = i31;
        iArr3[i32] = i4;
        short[][] sArr13 = (short[][]) Array.newInstance((Class<?>) cls, iArr3);
        short[] sArr14 = new short[i4];
        for (int i34 = i32; i34 < i4; i34++) {
            int i35 = i32;
            while (true) {
                short[][] sArr15 = this.A1;
                if (i35 < sArr15.length) {
                    sArr12[i34] = computeInField.addSquareMatrix(sArr12[i34], computeInField.multMatrix(sArr15[i34][i35], sArr[i35]));
                    sArr13[i34] = computeInField.addVect(sArr13[i34], computeInField.multVect(this.A1[i34][i35], this.pub_singular[i35]));
                    sArr14[i34] = GF2Field.addElem(sArr14[i34], GF2Field.multElem(this.A1[i34][i35], this.pub_scalar[i35]));
                    i35++;
                }
            }
            sArr14[i34] = GF2Field.addElem(sArr14[i34], this.b1[i34]);
        }
        this.pub_singular = sArr13;
        this.pub_scalar = sArr14;
        compactPublicKey(sArr12);
    }

    private void generateF() {
        this.layers = new Layer[this.numOfLayers];
        int i2 = 0;
        while (i2 < this.numOfLayers) {
            Layer[] layerArr = this.layers;
            int[] iArr = this.vi;
            int i3 = i2 + 1;
            layerArr[i2] = new Layer(iArr[i2], iArr[i3], this.sr);
            i2 = i3;
        }
    }

    private void generateL1() {
        int[] iArr = this.vi;
        int i2 = iArr[iArr.length - 1] - iArr[0];
        this.A1 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i2, i2);
        this.A1inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (this.A1inv == null) {
            for (int i3 = 0; i3 < i2; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    this.A1[i3][i4] = (short) (this.sr.nextInt() & 255);
                }
            }
            this.A1inv = computeInField.inverse(this.A1);
        }
        this.b1 = new short[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.b1[i5] = (short) (this.sr.nextInt() & 255);
        }
    }

    private void generateL2() {
        int[] iArr = this.vi;
        int i2 = iArr[iArr.length - 1];
        this.A2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i2, i2);
        this.A2inv = null;
        ComputeInField computeInField = new ComputeInField();
        while (this.A2inv == null) {
            for (int i3 = 0; i3 < i2; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    this.A2[i3][i4] = (short) (this.sr.nextInt() & 255);
                }
            }
            this.A2inv = computeInField.inverse(this.A2);
        }
        this.b2 = new short[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.b2[i5] = (short) (this.sr.nextInt() & 255);
        }
    }

    private void initializeDefault() {
        initialize(new RainbowKeyGenerationParameters(CryptoServicesRegistrar.getSecureRandom(), new RainbowParameters()));
    }

    private void keygen() {
        generateL1();
        generateL2();
        generateF();
        computePublicKey();
    }

    public AsymmetricCipherKeyPair genKeyPair() {
        if (!this.initialized) {
            initializeDefault();
        }
        keygen();
        RainbowPrivateKeyParameters rainbowPrivateKeyParameters = new RainbowPrivateKeyParameters(this.A1inv, this.b1, this.A2inv, this.b2, this.vi, this.layers);
        int[] iArr = this.vi;
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RainbowPublicKeyParameters(iArr[iArr.length - 1] - iArr[0], this.pub_quadratic, this.pub_singular, this.pub_scalar), (AsymmetricKeyParameter) rainbowPrivateKeyParameters);
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
        RainbowKeyGenerationParameters rainbowKeyGenerationParameters = (RainbowKeyGenerationParameters) keyGenerationParameters;
        this.rainbowParams = rainbowKeyGenerationParameters;
        this.sr = rainbowKeyGenerationParameters.getRandom();
        this.vi = this.rainbowParams.getParameters().getVi();
        this.numOfLayers = this.rainbowParams.getParameters().getNumOfLayers();
        this.initialized = true;
    }
}

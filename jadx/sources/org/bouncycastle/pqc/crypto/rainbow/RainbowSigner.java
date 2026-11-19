package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.md;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;
    private ComputeInField cf = new ComputeInField();
    private Digest hashAlgo;
    private RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;
    private Version version;

    /* JADX INFO: renamed from: org.bouncycastle.pqc.crypto.rainbow.RainbowSigner$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version;

        static {
            int[] iArr = new int[Version.values().length];
            $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version = iArr;
            try {
                iArr[Version.CLASSIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.CIRCUMZENITHAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[Version.COMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private byte[] genSignature(byte[] bArr) {
        short[] sArr;
        ComputeInField computeInField;
        int i2;
        int i3;
        int i4;
        int i5;
        byte[] bArr2 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr2, 0);
        int v1 = this.key.getParameters().getV1();
        int o1 = this.key.getParameters().getO1();
        int o2 = this.key.getParameters().getO2();
        int m = this.key.getParameters().getM();
        int n = this.key.getParameters().getN();
        RainbowPrivateKeyParameters rainbowPrivateKeyParameters = (RainbowPrivateKeyParameters) this.key;
        Digest digest = this.hashAlgo;
        this.random = new RainbowDRBG(RainbowUtil.hash(digest, rainbowPrivateKeyParameters.sk_seed, bArr2, new byte[digest.getDigestSize()]), rainbowPrivateKeyParameters.getParameters().getHash_algo());
        short[] sArr2 = new short[v1];
        short[] sArr3 = new short[o1];
        short[] sArr4 = new short[o2];
        Class cls = Short.TYPE;
        short[][] sArr5 = (short[][]) Array.newInstance((Class<?>) cls, o2, o1);
        int i6 = 0;
        short[][] sArr6 = (short[][]) Array.newInstance((Class<?>) cls, o2, o2);
        byte[] bArr3 = new byte[rainbowPrivateKeyParameters.getParameters().getLen_salt()];
        short[] sArr7 = new short[m];
        short[] sArr8 = new short[o1];
        short[] sArr9 = new short[o2];
        int i7 = 0;
        short[][] sArrInverse = null;
        while (sArrInverse == null && i7 < 65536) {
            byte[] bArr4 = new byte[v1];
            this.random.nextBytes(bArr4);
            int i8 = 0;
            while (true) {
                i4 = i7;
                if (i8 >= v1) {
                    break;
                }
                sArr2[i8] = (short) (bArr4[i8] & 255);
                i8++;
                i7 = i4;
            }
            short[][] sArr10 = (short[][]) Array.newInstance((Class<?>) cls, o1, o1);
            int i9 = 0;
            while (i9 < v1) {
                int i10 = 0;
                while (true) {
                    i5 = i9;
                    if (i10 < o1) {
                        int i11 = 0;
                        while (i11 < o1) {
                            int i12 = i11;
                            int i13 = i10;
                            short sMultElem = GF2Field.multElem(rainbowPrivateKeyParameters.l1_F2[i10][i5][i12], sArr2[i5]);
                            short[] sArr11 = sArr10[i13];
                            sArr11[i12] = GF2Field.addElem(sArr11[i12], sMultElem);
                            i11 = i12 + 1;
                            i10 = i13;
                        }
                        i10++;
                        i9 = i5;
                    }
                }
                i9 = i5 + 1;
            }
            sArrInverse = this.cf.inverse(sArr10);
            i7 = i4 + 1;
        }
        int i14 = i7;
        int i15 = 0;
        while (i15 < o1) {
            int i16 = i15;
            sArr3[i16] = this.cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l1_F1[i16], sArr2);
            i15 = i16 + 1;
        }
        int i17 = 0;
        while (i17 < v1) {
            int i18 = 0;
            while (true) {
                i3 = i17;
                if (i18 < o2) {
                    int i19 = i18;
                    sArr4[i19] = this.cf.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F1[i19], sArr2);
                    int i20 = 0;
                    while (i20 < o1) {
                        int i21 = i20;
                        short sMultElem2 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F2[i19][i3][i20], sArr2[i3]);
                        short[] sArr12 = sArr5[i19];
                        sArr12[i21] = GF2Field.addElem(sArr12[i21], sMultElem2);
                        i20 = i21 + 1;
                    }
                    int i22 = 0;
                    while (i22 < o2) {
                        int i23 = i22;
                        short sMultElem3 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F3[i19][i3][i22], sArr2[i3]);
                        short[] sArr13 = sArr6[i19];
                        sArr13[i23] = GF2Field.addElem(sArr13[i23], sMultElem3);
                        i22 = i23 + 1;
                    }
                    i18 = i19 + 1;
                    i17 = i3;
                }
            }
            i17 = i3 + 1;
        }
        byte[] bArr5 = new byte[m];
        short[] sArr14 = sArr8;
        int i24 = i14;
        short[] sArrSolveEquation = null;
        while (true) {
            sArr = sArr2;
            if (sArrSolveEquation != null || i24 >= 65536) {
                break;
            }
            int[] iArr = new int[2];
            iArr[1] = o2;
            iArr[i6] = o2;
            short[][] sArr15 = (short[][]) Array.newInstance((Class<?>) cls, iArr);
            this.random.nextBytes(bArr3);
            short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr2, bArr3, bArr5));
            byte[] bArr6 = bArr2;
            byte[] bArr7 = bArr5;
            Class cls2 = cls;
            int i25 = i6;
            System.arraycopy(this.cf.addVect(Arrays.copyOf(sArrMakeMessageRepresentative, o1), this.cf.multiplyMatrix(rainbowPrivateKeyParameters.s1, Arrays.copyOfRange(sArrMakeMessageRepresentative, o1, m))), i25, sArr7, i25, o1);
            System.arraycopy(sArrMakeMessageRepresentative, o1, sArr7, o1, o2);
            short[] sArrMultiplyMatrix = this.cf.multiplyMatrix(sArrInverse, this.cf.addVect(sArr3, Arrays.copyOf(sArr7, o1)));
            short[] sArrMultiplyMatrix2 = this.cf.multiplyMatrix(sArr5, sArrMultiplyMatrix);
            int i26 = 0;
            while (true) {
                computeInField = this.cf;
                if (i26 >= o2) {
                    break;
                }
                int i27 = i26;
                sArr9[i27] = computeInField.multiplyMatrix_quad(rainbowPrivateKeyParameters.l2_F5[i27], sArrMultiplyMatrix);
                i26 = i27 + 1;
            }
            short[] sArr16 = sArr9;
            short[] sArrAddVect = this.cf.addVect(this.cf.addVect(computeInField.addVect(sArrMultiplyMatrix2, sArr16), sArr4), Arrays.copyOfRange(sArr7, o1, m));
            int i28 = 0;
            while (i28 < o1) {
                int i29 = 0;
                while (true) {
                    i2 = i28;
                    if (i29 < o2) {
                        int i30 = 0;
                        while (i30 < o2) {
                            int i31 = i30;
                            int i32 = m;
                            short sMultElem4 = GF2Field.multElem(rainbowPrivateKeyParameters.l2_F6[i29][i2][i31], sArrMultiplyMatrix[i2]);
                            short[] sArr17 = sArr15[i29];
                            sArr17[i31] = GF2Field.addElem(sArr17[i31], sMultElem4);
                            i30 = i31 + 1;
                            m = i32;
                        }
                        i29++;
                        i28 = i2;
                    }
                }
                i28 = i2 + 1;
            }
            sArrSolveEquation = this.cf.solveEquation(this.cf.addMatrix(sArr15, sArr6), sArrAddVect);
            i24++;
            sArr14 = sArrMultiplyMatrix;
            bArr2 = bArr6;
            bArr5 = bArr7;
            cls = cls2;
            m = m;
            i6 = 0;
            sArr9 = sArr16;
            sArr2 = sArr;
        }
        short[] sArr18 = sArrSolveEquation == null ? new short[o2] : sArrSolveEquation;
        short[] sArrAddVect2 = this.cf.addVect(this.cf.addVect(sArr, this.cf.multiplyMatrix(rainbowPrivateKeyParameters.t1, sArr14)), this.cf.multiplyMatrix(rainbowPrivateKeyParameters.t4, sArr18));
        short[] sArrAddVect3 = this.cf.addVect(sArr14, this.cf.multiplyMatrix(rainbowPrivateKeyParameters.t3, sArr18));
        short[] sArrCopyOf = Arrays.copyOf(sArrAddVect2, n);
        System.arraycopy(sArrAddVect3, 0, sArrCopyOf, v1, o1);
        System.arraycopy(sArr18, 0, sArrCopyOf, o1 + v1, o2);
        if (i24 != 65536) {
            return Arrays.concatenate(RainbowUtil.convertArray(sArrCopyOf), bArr3);
        }
        md.k("unable to generate signature - LES not solvable");
        return null;
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        int i2 = this.signableDocumentLength;
        short[] sArr = new short[i2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            sArr[i3] = (short) (bArr[i4] & 255);
            i4++;
            i3++;
            if (i3 >= i2) {
                break;
            }
        }
        return sArr;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return genSignature(bArr);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        RainbowKeyParameters rainbowKeyParameters;
        if (z) {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.random = parametersWithRandom.getRandom();
                rainbowKeyParameters = (RainbowKeyParameters) parametersWithRandom.getParameters();
            } else {
                rainbowKeyParameters = (RainbowKeyParameters) cipherParameters;
                SecureRandom secureRandom = CryptoServicesRegistrar.getSecureRandom();
                byte[] bArr = new byte[rainbowKeyParameters.getParameters().getLen_skseed()];
                secureRandom.nextBytes(bArr);
                this.random = new RainbowDRBG(bArr, rainbowKeyParameters.getParameters().getHash_algo());
            }
            this.version = rainbowKeyParameters.getParameters().getVersion();
            this.key = rainbowKeyParameters;
        } else {
            RainbowKeyParameters rainbowKeyParameters2 = (RainbowKeyParameters) cipherParameters;
            this.key = rainbowKeyParameters2;
            this.version = rainbowKeyParameters2.getParameters().getVersion();
        }
        this.signableDocumentLength = this.key.getDocLength();
        this.hashAlgo = this.key.getParameters().getHash_algo();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArrPublicMap;
        byte[] bArr3 = new byte[this.hashAlgo.getDigestSize()];
        this.hashAlgo.update(bArr, 0, bArr.length);
        this.hashAlgo.doFinal(bArr3, 0);
        int m = this.key.getParameters().getM();
        int n = this.key.getParameters().getN();
        RainbowPublicMap rainbowPublicMap = new RainbowPublicMap(this.key.getParameters());
        short[] sArrMakeMessageRepresentative = makeMessageRepresentative(RainbowUtil.hash(this.hashAlgo, bArr3, Arrays.copyOfRange(bArr2, n, bArr2.length), new byte[m]));
        short[] sArrConvertArray = RainbowUtil.convertArray(Arrays.copyOfRange(bArr2, 0, n));
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version[this.version.ordinal()];
        if (i2 == 1) {
            sArrPublicMap = rainbowPublicMap.publicMap((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        } else {
            if (i2 != 2 && i2 != 3) {
                md.n("No valid version. Please choose one of the following: classic, circumzenithal, compressed");
                return false;
            }
            sArrPublicMap = rainbowPublicMap.publicMap_cyclic((RainbowPublicKeyParameters) this.key, sArrConvertArray);
        }
        return RainbowUtil.equals(sArrMakeMessageRepresentative, sArrPublicMap);
    }
}

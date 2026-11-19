package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.v7;
import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class RainbowPublicMap {
    private RainbowParameters params;
    private final int num_gf_elements = 256;
    private ComputeInField cf = new ComputeInField();

    public RainbowPublicMap(RainbowParameters rainbowParameters) {
        this.params = rainbowParameters;
    }

    private short[] add_and_reduce(short[][] sArr) {
        int m = this.params.getM();
        short[] sArrAddVect = new short[m];
        for (int i2 = 0; i2 < 8; i2++) {
            int iPow = (int) Math.pow(2.0d, i2);
            short[] sArrAddVect2 = new short[m];
            for (int i3 = iPow; i3 < 256; i3 += iPow * 2) {
                for (int i4 = 0; i4 < iPow; i4++) {
                    sArrAddVect2 = this.cf.addVect(sArrAddVect2, sArr[i3 + i4]);
                }
            }
            ComputeInField computeInField = this.cf;
            sArrAddVect = computeInField.addVect(sArrAddVect, computeInField.multVect((short) iPow, sArrAddVect2));
        }
        return sArrAddVect;
    }

    private short[][] compute_accumulator(short[] sArr, short[] sArr2, short[][][] sArr3, int i2) {
        short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 256, i2);
        int length = sArr2.length;
        short[][] sArr5 = sArr3[0];
        if (length != sArr5.length || sArr.length != sArr5[0].length || sArr3.length != i2) {
            v7.h("Accumulator calculation not possible!");
            return null;
        }
        for (int i3 = 0; i3 < sArr2.length; i3++) {
            short[] sArrMultVect = this.cf.multVect(sArr2[i3], sArr);
            for (int i4 = 0; i4 < sArr.length; i4++) {
                for (int i5 = 0; i5 < sArr3.length; i5++) {
                    short s = sArrMultVect[i4];
                    if (s != 0) {
                        short[] sArr6 = sArr4[s];
                        sArr6[i5] = GF2Field.addElem(sArr6[i5], sArr3[i5][i3][i4]);
                    }
                }
            }
        }
        return sArr4;
    }

    public short[] publicMap(RainbowPublicKeyParameters rainbowPublicKeyParameters, short[] sArr) {
        return add_and_reduce(compute_accumulator(sArr, sArr, rainbowPublicKeyParameters.pk, this.params.getM()));
    }

    public short[] publicMap_cyclic(RainbowPublicKeyParameters rainbowPublicKeyParameters, short[] sArr) {
        int v1 = this.params.getV1();
        int o1 = this.params.getO1();
        int o2 = this.params.getO2();
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 256, o1 + o2);
        short[] sArrCopyOfRange = Arrays.copyOfRange(sArr, 0, v1);
        int i2 = v1 + o1;
        short[] sArrCopyOfRange2 = Arrays.copyOfRange(sArr, v1, i2);
        short[] sArrCopyOfRange3 = Arrays.copyOfRange(sArr, i2, sArr.length);
        RainbowDRBG rainbowDRBG = new RainbowDRBG(rainbowPublicKeyParameters.pk_seed, rainbowPublicKeyParameters.getParameters().getHash_algo());
        short[][] sArrAddMatrix = this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(compute_accumulator(sArrCopyOfRange, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o1, v1, v1, true), o1), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o1, v1, o1, false), o1)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange, rainbowPublicKeyParameters.l1_Q3, o1)), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange2, rainbowPublicKeyParameters.l1_Q5, o1)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange2, rainbowPublicKeyParameters.l1_Q6, o1)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange3, rainbowPublicKeyParameters.l1_Q9, o1));
        short[][] sArrAddMatrix2 = this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(this.cf.addMatrix(compute_accumulator(sArrCopyOfRange, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o2, v1, v1, true), o2), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o2, v1, o1, false), o2)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange, RainbowUtil.generate_random(rainbowDRBG, o2, v1, o2, false), o2)), compute_accumulator(sArrCopyOfRange2, sArrCopyOfRange2, RainbowUtil.generate_random(rainbowDRBG, o2, o1, o1, true), o2)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange2, RainbowUtil.generate_random(rainbowDRBG, o2, o1, o2, false), o2)), compute_accumulator(sArrCopyOfRange3, sArrCopyOfRange3, rainbowPublicKeyParameters.l2_Q9, o2));
        for (int i3 = 0; i3 < 256; i3++) {
            sArr2[i3] = Arrays.concatenate(sArrAddMatrix[i3], sArrAddMatrix2[i3]);
        }
        return add_and_reduce(sArr2);
    }
}

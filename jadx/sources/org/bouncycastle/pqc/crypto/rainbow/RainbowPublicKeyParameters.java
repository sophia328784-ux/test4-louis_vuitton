package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.md;
import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPublicKeyParameters extends RainbowKeyParameters {
    short[][][] l1_Q3;
    short[][][] l1_Q5;
    short[][][] l1_Q6;
    short[][][] l1_Q9;
    short[][][] l2_Q9;
    short[][][] pk;
    byte[] pk_seed;

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, byte[] bArr) {
        super(false, rainbowParameters);
        int m = rainbowParameters.getM();
        int n = rainbowParameters.getN();
        Version version = getParameters().getVersion();
        Version version2 = Version.CLASSIC;
        Class cls = Short.TYPE;
        if (version != version2) {
            this.pk_seed = Arrays.copyOfRange(bArr, 0, rainbowParameters.getLen_pkseed());
            this.l1_Q3 = (short[][][]) Array.newInstance((Class<?>) cls, rainbowParameters.getO1(), rainbowParameters.getV1(), rainbowParameters.getO2());
            this.l1_Q5 = (short[][][]) Array.newInstance((Class<?>) cls, rainbowParameters.getO1(), rainbowParameters.getO1(), rainbowParameters.getO1());
            this.l1_Q6 = (short[][][]) Array.newInstance((Class<?>) cls, rainbowParameters.getO1(), rainbowParameters.getO1(), rainbowParameters.getO2());
            this.l1_Q9 = (short[][][]) Array.newInstance((Class<?>) cls, rainbowParameters.getO1(), rainbowParameters.getO2(), rainbowParameters.getO2());
            this.l2_Q9 = (short[][][]) Array.newInstance((Class<?>) cls, rainbowParameters.getO2(), rainbowParameters.getO2(), rainbowParameters.getO2());
            int len_pkseed = rainbowParameters.getLen_pkseed();
            int iLoadEncoded = len_pkseed + RainbowUtil.loadEncoded(this.l1_Q3, bArr, len_pkseed, false);
            int iLoadEncoded2 = iLoadEncoded + RainbowUtil.loadEncoded(this.l1_Q5, bArr, iLoadEncoded, true);
            int iLoadEncoded3 = iLoadEncoded2 + RainbowUtil.loadEncoded(this.l1_Q6, bArr, iLoadEncoded2, false);
            int iLoadEncoded4 = iLoadEncoded3 + RainbowUtil.loadEncoded(this.l1_Q9, bArr, iLoadEncoded3, true);
            if (iLoadEncoded4 + RainbowUtil.loadEncoded(this.l2_Q9, bArr, iLoadEncoded4, true) == bArr.length) {
                return;
            }
            md.n("unparsed data in key encoding");
            throw null;
        }
        this.pk = (short[][][]) Array.newInstance((Class<?>) cls, m, n, n);
        int i2 = 0;
        for (int i3 = 0; i3 < n; i3++) {
            for (int i4 = 0; i4 < n; i4++) {
                for (int i5 = 0; i5 < m; i5++) {
                    short[][][] sArr = this.pk;
                    if (i3 > i4) {
                        sArr[i5][i3][i4] = 0;
                    } else {
                        sArr[i5][i3][i4] = (short) (bArr[i2] & 255);
                        i2++;
                    }
                }
            }
        }
    }

    public byte[] getEncoded() {
        return getParameters().getVersion() != Version.CLASSIC ? Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(Arrays.concatenate(this.pk_seed, RainbowUtil.getEncoded(this.l1_Q3, false)), RainbowUtil.getEncoded(this.l1_Q5, true)), RainbowUtil.getEncoded(this.l1_Q6, false)), RainbowUtil.getEncoded(this.l1_Q9, true)), RainbowUtil.getEncoded(this.l2_Q9, true)) : RainbowUtil.getEncoded(this.pk, true);
    }

    public short[][][] getPk() {
        return RainbowUtil.cloneArray(this.pk);
    }

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, byte[] bArr, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5) {
        super(false, rainbowParameters);
        this.pk_seed = (byte[]) bArr.clone();
        this.l1_Q3 = RainbowUtil.cloneArray(sArr);
        this.l1_Q5 = RainbowUtil.cloneArray(sArr2);
        this.l1_Q6 = RainbowUtil.cloneArray(sArr3);
        this.l1_Q9 = RainbowUtil.cloneArray(sArr4);
        this.l2_Q9 = RainbowUtil.cloneArray(sArr5);
    }

    public RainbowPublicKeyParameters(RainbowParameters rainbowParameters, short[][][] sArr, short[][][] sArr2, short[][][] sArr3, short[][][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11, short[][][] sArr12) {
        super(false, rainbowParameters);
        int v1 = rainbowParameters.getV1();
        int o1 = rainbowParameters.getO1();
        int o2 = rainbowParameters.getO2();
        this.pk = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, rainbowParameters.getM(), rainbowParameters.getN(), rainbowParameters.getN());
        for (int i2 = 0; i2 < o1; i2++) {
            for (int i3 = 0; i3 < v1; i3++) {
                System.arraycopy(sArr[i2][i3], 0, this.pk[i2][i3], 0, v1);
                System.arraycopy(sArr2[i2][i3], 0, this.pk[i2][i3], v1, o1);
                System.arraycopy(sArr3[i2][i3], 0, this.pk[i2][i3], v1 + o1, o2);
            }
            for (int i4 = 0; i4 < o1; i4++) {
                int i5 = i4 + v1;
                System.arraycopy(sArr4[i2][i4], 0, this.pk[i2][i5], v1, o1);
                System.arraycopy(sArr5[i2][i4], 0, this.pk[i2][i5], v1 + o1, o2);
            }
            for (int i6 = 0; i6 < o2; i6++) {
                System.arraycopy(sArr6[i2][i6], 0, this.pk[i2][i6 + v1 + o1], v1 + o1, o2);
            }
        }
        for (int i7 = 0; i7 < o2; i7++) {
            for (int i8 = 0; i8 < v1; i8++) {
                int i9 = i7 + o1;
                System.arraycopy(sArr7[i7][i8], 0, this.pk[i9][i8], 0, v1);
                System.arraycopy(sArr8[i7][i8], 0, this.pk[i9][i8], v1, o1);
                System.arraycopy(sArr9[i7][i8], 0, this.pk[i9][i8], v1 + o1, o2);
            }
            for (int i10 = 0; i10 < o1; i10++) {
                int i11 = i7 + o1;
                int i12 = i10 + v1;
                System.arraycopy(sArr10[i7][i10], 0, this.pk[i11][i12], v1, o1);
                System.arraycopy(sArr11[i7][i10], 0, this.pk[i11][i12], v1 + o1, o2);
            }
            for (int i13 = 0; i13 < o2; i13++) {
                System.arraycopy(sArr12[i7][i13], 0, this.pk[i7 + o1][i13 + v1 + o1], v1 + o1, o2);
            }
        }
    }
}

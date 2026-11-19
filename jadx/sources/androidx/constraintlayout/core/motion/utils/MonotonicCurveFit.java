package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double[] f11364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double[][] f11365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double[][] f11366c;
    public final boolean d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double[] f11367e;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f11367e = new double[length2];
        int i2 = length - 1;
        Class cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) cls, i2, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, length, length2);
        for (int i3 = 0; i3 < length2; i3++) {
            int i4 = 0;
            while (i4 < i2) {
                int i5 = i4 + 1;
                double d = dArr[i5] - dArr[i4];
                double[] dArr5 = dArr3[i4];
                double d2 = (dArr2[i5][i3] - dArr2[i4][i3]) / d;
                dArr5[i3] = d2;
                if (i4 == 0) {
                    dArr4[i4][i3] = d2;
                } else {
                    dArr4[i4][i3] = (dArr3[i4 - 1][i3] + d2) * 0.5d;
                }
                i4 = i5;
            }
            dArr4[i2][i3] = dArr3[length - 2][i3];
        }
        for (int i6 = 0; i6 < i2; i6++) {
            for (int i7 = 0; i7 < length2; i7++) {
                double d3 = dArr3[i6][i7];
                if (d3 == 0.0d) {
                    dArr4[i6][i7] = 0.0d;
                    dArr4[i6 + 1][i7] = 0.0d;
                } else {
                    double d4 = dArr4[i6][i7] / d3;
                    int i8 = i6 + 1;
                    double d5 = dArr4[i8][i7] / d3;
                    double dHypot = Math.hypot(d4, d5);
                    if (dHypot > 9.0d) {
                        double d6 = 3.0d / dHypot;
                        double[] dArr6 = dArr4[i6];
                        double[] dArr7 = dArr3[i6];
                        dArr6[i7] = d4 * d6 * dArr7[i7];
                        dArr4[i8][i7] = d6 * d5 * dArr7[i7];
                    }
                }
            }
        }
        this.f11364a = dArr;
        this.f11365b = dArr2;
        this.f11366c = dArr4;
    }

    public static double g(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 6.0d * d7 * d3;
        double d10 = (d9 + ((d8 * d4) + (((-6.0d) * d7) * d4))) - (d8 * d3);
        double d11 = 3.0d * d;
        return (d * d5) + (((((d11 * d5) * d7) + (((d11 * d6) * d7) + d10)) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2));
    }

    public static double i(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d8 * 2.0d * d3;
        double d11 = ((d10 + ((d9 * d4) + (((-2.0d) * d8) * d4))) - (d9 * d3)) + d3;
        double d12 = d * d6;
        double d13 = (d12 * d8) + d11;
        double d14 = d * d5;
        return (d14 * d2) + ((((d8 * d14) + d13) - (d12 * d7)) - (((d * 2.0d) * d5) * d7));
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double b(double d) {
        double d2;
        double d3;
        double dH;
        double[] dArr = this.f11364a;
        int length = dArr.length;
        boolean z = this.d;
        double[][] dArr2 = this.f11365b;
        if (z) {
            double d4 = dArr[0];
            if (d <= d4) {
                d2 = dArr2[0][0];
                d3 = d - d4;
                dH = h(d4);
            } else {
                int i2 = length - 1;
                double d5 = dArr[i2];
                if (d >= d5) {
                    d2 = dArr2[i2][0];
                    d3 = d - d5;
                    dH = h(d5);
                }
            }
            return (dH * d3) + d2;
        }
        if (d <= dArr[0]) {
            return dArr2[0][0];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return dArr2[i3][0];
        }
        int i4 = 0;
        while (i4 < length - 1) {
            double d6 = dArr[i4];
            if (d == d6) {
                return dArr2[i4][0];
            }
            int i5 = i4 + 1;
            double d7 = dArr[i5];
            if (d < d7) {
                double d8 = d7 - d6;
                double d9 = (d - d6) / d8;
                double d10 = dArr2[i4][0];
                double d11 = dArr2[i5][0];
                double[][] dArr3 = this.f11366c;
                return i(d8, d9, d10, d11, dArr3[i4][0], dArr3[i5][0]);
            }
            i4 = i5;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void c(double d, double[] dArr) {
        double[] dArr2 = this.f11364a;
        int length = dArr2.length;
        double[][] dArr3 = this.f11365b;
        int i2 = 0;
        int length2 = dArr3[0].length;
        if (this.d) {
            double d2 = dArr2[0];
            double[] dArr4 = this.f11367e;
            if (d <= d2) {
                e(d2, dArr4);
                for (int i3 = 0; i3 < length2; i3++) {
                    dArr[i3] = ((d - dArr2[0]) * dArr4[i3]) + dArr3[0][i3];
                }
                return;
            }
            int i4 = length - 1;
            double d3 = dArr2[i4];
            if (d >= d3) {
                e(d3, dArr4);
                while (i2 < length2) {
                    dArr[i2] = ((d - dArr2[i4]) * dArr4[i2]) + dArr3[i4][i2];
                    i2++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = dArr3[0][i5];
                }
                return;
            }
            int i6 = length - 1;
            if (d >= dArr2[i6]) {
                while (i2 < length2) {
                    dArr[i2] = dArr3[i6][i2];
                    i2++;
                }
                return;
            }
        }
        int i7 = 0;
        while (i7 < length - 1) {
            if (d == dArr2[i7]) {
                for (int i8 = 0; i8 < length2; i8++) {
                    dArr[i8] = dArr3[i7][i8];
                }
            }
            int i9 = i7 + 1;
            double d4 = dArr2[i9];
            if (d < d4) {
                double d5 = dArr2[i7];
                double d6 = d4 - d5;
                double d7 = (d - d5) / d6;
                while (i2 < length2) {
                    double d8 = dArr3[i7][i2];
                    double d9 = dArr3[i9][i2];
                    double[][] dArr5 = this.f11366c;
                    dArr[i2] = i(d6, d7, d8, d9, dArr5[i7][i2], dArr5[i9][i2]);
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void d(double d, float[] fArr) {
        double[] dArr = this.f11364a;
        int length = dArr.length;
        double[][] dArr2 = this.f11365b;
        int i2 = 0;
        int length2 = dArr2[0].length;
        if (this.d) {
            double d2 = dArr[0];
            double[] dArr3 = this.f11367e;
            if (d <= d2) {
                e(d2, dArr3);
                for (int i3 = 0; i3 < length2; i3++) {
                    fArr[i3] = (float) (((d - dArr[0]) * dArr3[i3]) + dArr2[0][i3]);
                }
                return;
            }
            int i4 = length - 1;
            double d3 = dArr[i4];
            if (d >= d3) {
                e(d3, dArr3);
                while (i2 < length2) {
                    fArr[i2] = (float) (((d - dArr[i4]) * dArr3[i2]) + dArr2[i4][i2]);
                    i2++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) dArr2[0][i5];
                }
                return;
            }
            int i6 = length - 1;
            if (d >= dArr[i6]) {
                while (i2 < length2) {
                    fArr[i2] = (float) dArr2[i6][i2];
                    i2++;
                }
                return;
            }
        }
        int i7 = 0;
        while (i7 < length - 1) {
            if (d == dArr[i7]) {
                for (int i8 = 0; i8 < length2; i8++) {
                    fArr[i8] = (float) dArr2[i7][i8];
                }
            }
            int i9 = i7 + 1;
            double d4 = dArr[i9];
            if (d < d4) {
                double d5 = dArr[i7];
                double d6 = d4 - d5;
                double d7 = (d - d5) / d6;
                while (i2 < length2) {
                    double d8 = dArr2[i7][i2];
                    double d9 = dArr2[i9][i2];
                    double[][] dArr4 = this.f11366c;
                    fArr[i2] = (float) i(d6, d7, d8, d9, dArr4[i7][i2], dArr4[i9][i2]);
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void e(double d, double[] dArr) {
        double[] dArr2 = this.f11364a;
        int length = dArr2.length;
        double[][] dArr3 = this.f11365b;
        int length2 = dArr3[0].length;
        double d2 = dArr2[0];
        if (d > d2) {
            d2 = dArr2[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            int i3 = i2 + 1;
            double d3 = dArr2[i3];
            if (d2 <= d3) {
                double d4 = dArr2[i2];
                double d5 = d3 - d4;
                double d6 = (d2 - d4) / d5;
                for (int i4 = 0; i4 < length2; i4++) {
                    double d7 = dArr3[i2][i4];
                    double d8 = dArr3[i3][i4];
                    double[][] dArr4 = this.f11366c;
                    dArr[i4] = g(d5, d6, d7, d8, dArr4[i2][i4], dArr4[i3][i4]) / d5;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double[] f() {
        return this.f11364a;
    }

    public final double h(double d) {
        double[] dArr = this.f11364a;
        int length = dArr.length;
        double d2 = dArr[0];
        if (d >= d2) {
            d2 = dArr[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            int i3 = i2 + 1;
            double d3 = dArr[i3];
            if (d2 <= d3) {
                double d4 = dArr[i2];
                double d5 = d3 - d4;
                double d6 = (d2 - d4) / d5;
                double[][] dArr2 = this.f11365b;
                double d7 = dArr2[i2][0];
                double d8 = dArr2[i3][0];
                double[][] dArr3 = this.f11366c;
                return g(d5, d6, d7, d8, dArr3[i2][0], dArr3[i3][0]) / d5;
            }
            i2 = i3;
        }
        return 0.0d;
    }
}

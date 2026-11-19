package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class LinearCurveFit extends CurveFit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double[] f11361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double[][] f11362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11363c = true;
    public final double[] d;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr2[0].length;
        this.d = new double[length];
        this.f11361a = dArr;
        this.f11362b = dArr2;
        if (length <= 2) {
            return;
        }
        double d = 0.0d;
        int i2 = 0;
        while (true) {
            double d2 = d;
            if (i2 >= dArr.length) {
                return;
            }
            double d3 = dArr2[i2][0];
            if (i2 > 0) {
                Math.hypot(d3 - d, d3 - d2);
            }
            i2++;
            d = d3;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double b(double d) {
        double[] dArr = this.f11361a;
        int length = dArr.length;
        boolean z = this.f11363c;
        double[][] dArr2 = this.f11362b;
        if (z) {
            double d2 = dArr[0];
            if (d <= d2) {
                return (g(d2) * (d - d2)) + dArr2[0][0];
            }
            int i2 = length - 1;
            double d3 = dArr[i2];
            if (d >= d3) {
                return (g(d3) * (d - d3)) + dArr2[i2][0];
            }
        } else {
            if (d <= dArr[0]) {
                return dArr2[0][0];
            }
            int i3 = length - 1;
            if (d >= dArr[i3]) {
                return dArr2[i3][0];
            }
        }
        int i4 = 0;
        while (i4 < length - 1) {
            double d4 = dArr[i4];
            if (d == d4) {
                return dArr2[i4][0];
            }
            int i5 = i4 + 1;
            double d5 = dArr[i5];
            if (d < d5) {
                double d6 = (d - d4) / (d5 - d4);
                return (dArr2[i5][0] * d6) + ((1.0d - d6) * dArr2[i4][0]);
            }
            i4 = i5;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void c(double d, double[] dArr) {
        double[] dArr2 = this.f11361a;
        int length = dArr2.length;
        double[][] dArr3 = this.f11362b;
        int i2 = 0;
        int length2 = dArr3[0].length;
        if (this.f11363c) {
            double d2 = dArr2[0];
            double[] dArr4 = this.d;
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
                double d6 = (d - d5) / (d4 - d5);
                while (i2 < length2) {
                    dArr[i2] = (dArr3[i9][i2] * d6) + ((1.0d - d6) * dArr3[i7][i2]);
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void d(double d, float[] fArr) {
        double[] dArr = this.f11361a;
        int length = dArr.length;
        double[][] dArr2 = this.f11362b;
        int i2 = 0;
        int length2 = dArr2[0].length;
        if (this.f11363c) {
            double d2 = dArr[0];
            double[] dArr3 = this.d;
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
                double d6 = (d - d5) / (d4 - d5);
                while (i2 < length2) {
                    fArr[i2] = (float) ((dArr2[i9][i2] * d6) + ((1.0d - d6) * dArr2[i7][i2]));
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
      0x000f: PHI (r4v6 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void e(double d, double[] dArr) {
        double[] dArr2 = this.f11361a;
        int length = dArr2.length;
        double[][] dArr3 = this.f11362b;
        int length2 = dArr3[0].length;
        double d2 = dArr2[0];
        if (d <= d2) {
            d = d2;
        } else {
            d2 = dArr2[length - 1];
            if (d >= d2) {
                d = d2;
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            int i3 = i2 + 1;
            double d3 = dArr2[i3];
            if (d <= d3) {
                double d4 = d3 - dArr2[i2];
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = (dArr3[i3][i4] - dArr3[i2][i4]) / d4;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double[] f() {
        return this.f11361a;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
      0x000a: PHI (r3v6 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    public final double g(double d) {
        double[] dArr = this.f11361a;
        int length = dArr.length;
        double d2 = dArr[0];
        if (d < d2) {
            d = d2;
        } else {
            d2 = dArr[length - 1];
            if (d >= d2) {
                d = d2;
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            int i3 = i2 + 1;
            double d3 = dArr[i3];
            if (d <= d3) {
                double d4 = d3 - dArr[i2];
                double[][] dArr2 = this.f11362b;
                return (dArr2[i3][0] - dArr2[i2][0]) / d4;
            }
            i2 = i3;
        }
        return 0.0d;
    }
}

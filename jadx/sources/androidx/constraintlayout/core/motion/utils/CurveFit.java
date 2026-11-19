package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public abstract class CurveFit {

    public static class Constant extends CurveFit {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f11338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double[] f11339b;

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public final double b(double d) {
            return this.f11339b[0];
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public final void c(double d, double[] dArr) {
            double[] dArr2 = this.f11339b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public final void d(double d, float[] fArr) {
            int i2 = 0;
            while (true) {
                double[] dArr = this.f11339b;
                if (i2 >= dArr.length) {
                    return;
                }
                fArr[i2] = (float) dArr[i2];
                i2++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public final void e(double d, double[] dArr) {
            for (int i2 = 0; i2 < this.f11339b.length; i2++) {
                dArr[i2] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public final double[] f() {
            return new double[]{this.f11338a};
        }
    }

    public static CurveFit a(int i2, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i2 = 2;
        }
        if (i2 == 0) {
            return new MonotonicCurveFit(dArr, dArr2);
        }
        if (i2 != 2) {
            return new LinearCurveFit(dArr, dArr2);
        }
        double d = dArr[0];
        double[] dArr3 = dArr2[0];
        Constant constant = new Constant();
        constant.f11338a = d;
        constant.f11339b = dArr3;
        return constant;
    }

    public abstract double b(double d);

    public abstract void c(double d, double[] dArr);

    public abstract void d(double d, float[] fArr);

    public abstract void e(double d, double[] dArr);

    public abstract double[] f();
}

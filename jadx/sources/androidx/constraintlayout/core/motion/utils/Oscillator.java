package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Oscillator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float[] f11368a = new float[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double[] f11369b = new double[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double[] f11370c;
    public MonotonicCurveFit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11371e;

    public final void a(double d, float f2) {
        int length = this.f11368a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.f11369b, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.f11369b = Arrays.copyOf(this.f11369b, length);
        this.f11368a = Arrays.copyOf(this.f11368a, length);
        this.f11370c = new double[length];
        double[] dArr = this.f11369b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.f11369b[iBinarySearch] = d;
        this.f11368a[iBinarySearch] = f2;
    }

    public final String toString() {
        return "pos =" + Arrays.toString(this.f11369b) + " period=" + Arrays.toString(this.f11368a);
    }
}

package androidx.constraintlayout.core.motion.utils;

import defpackage.n00;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class TimeCycleSplineSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CurveFit f11393a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11397f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f11399i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11394b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f11395c = new int[10];
    public final float[][] d = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    public float[] g = new float[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11398h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f11400j = Float.NaN;

    public final float a(float f2) {
        switch (this.f11394b) {
            case 1:
                return Math.signum(f2 * 6.2831855f);
            case 2:
                return 1.0f - Math.abs(f2);
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                return 1.0f - (((f2 * 2.0f) + 1.0f) % 2.0f);
            case 5:
                return (float) Math.cos(f2 * 6.2831855f);
            case 6:
                float fAbs = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                return 1.0f - (fAbs * fAbs);
            default:
                return (float) Math.sin(f2 * 6.2831855f);
        }
    }

    public void b(float f2, float f3, float f4, int i2, int i3) {
        int i4 = this.f11396e;
        this.f11395c[i4] = i2;
        float[] fArr = this.d[i4];
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        this.f11394b = Math.max(this.f11394b, i3);
        this.f11396e++;
    }

    public void c(int i2) {
        float[][] fArr;
        int i3 = this.f11396e;
        if (i3 == 0) {
            System.err.println("Error no points added to " + this.f11397f);
            return;
        }
        int[] iArr = this.f11395c;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i3 - 1;
        iArr2[1] = 0;
        int i4 = 2;
        while (true) {
            fArr = this.d;
            if (i4 <= 0) {
                break;
            }
            int i5 = i4 - 1;
            int i6 = iArr2[i5];
            int i7 = i4 - 2;
            int i8 = iArr2[i7];
            if (i6 < i8) {
                int i9 = iArr[i8];
                int i10 = i6;
                int i11 = i10;
                while (i10 < i8) {
                    int i12 = iArr[i10];
                    if (i12 <= i9) {
                        int i13 = iArr[i11];
                        iArr[i11] = i12;
                        iArr[i10] = i13;
                        float[] fArr2 = fArr[i11];
                        fArr[i11] = fArr[i10];
                        fArr[i10] = fArr2;
                        i11++;
                    }
                    i10++;
                }
                int i14 = iArr[i11];
                iArr[i11] = iArr[i8];
                iArr[i8] = i14;
                float[] fArr3 = fArr[i11];
                fArr[i11] = fArr[i8];
                fArr[i8] = fArr3;
                iArr2[i7] = i11 - 1;
                iArr2[i5] = i6;
                int i15 = i4 + 1;
                iArr2[i4] = i8;
                i4 += 2;
                iArr2[i15] = i11 + 1;
            } else {
                i4 = i7;
            }
        }
        int i16 = 0;
        for (int i17 = 1; i17 < iArr.length; i17++) {
            if (iArr[i17] != iArr[i17 - 1]) {
                i16++;
            }
        }
        if (i16 == 0) {
            i16 = 1;
        }
        double[] dArr = new double[i16];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i16, 3);
        int i18 = 0;
        for (int i19 = 0; i19 < this.f11396e; i19++) {
            if (i19 <= 0 || iArr[i19] != iArr[i19 - 1]) {
                dArr[i18] = ((double) iArr[i19]) * 0.01d;
                double[] dArr3 = dArr2[i18];
                float[] fArr4 = fArr[i19];
                dArr3[0] = fArr4[0];
                dArr3[1] = fArr4[1];
                dArr3[2] = fArr4[2];
                i18++;
            }
        }
        this.f11393a = CurveFit.a(i2, dArr, dArr2);
    }

    public final String toString() {
        String string = this.f11397f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.f11396e; i2++) {
            StringBuilder sbU = n00.u(string, "[");
            sbU.append(this.f11395c[i2]);
            sbU.append(" , ");
            sbU.append(decimalFormat.format(this.d[i2]));
            sbU.append("] ");
            string = sbU.toString();
        }
        return string;
    }
}

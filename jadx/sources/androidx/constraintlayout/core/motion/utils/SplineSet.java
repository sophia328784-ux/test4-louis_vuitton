package androidx.constraintlayout.core.motion.utils;

import defpackage.n00;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class SplineSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CurveFit f11373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f11374b = new int[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f11375c = new float[10];
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f11376e;

    public final float a(float f2) {
        return (float) this.f11373a.b(f2);
    }

    public void b(float f2, int i2) {
        int[] iArr = this.f11374b;
        if (iArr.length < this.d + 1) {
            this.f11374b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f11375c;
            this.f11375c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f11374b;
        int i3 = this.d;
        iArr2[i3] = i2;
        this.f11375c[i3] = f2;
        this.d = i3 + 1;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009d  */
    public void c(int i2) {
        int i3 = this.d;
        if (i3 == 0) {
            return;
        }
        int[] iArr = this.f11374b;
        float[] fArr = this.f11375c;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i3 - 1;
        iArr2[1] = 0;
        int i4 = 2;
        while (i4 > 0) {
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
                        float f2 = fArr[i11];
                        fArr[i11] = fArr[i10];
                        fArr[i10] = f2;
                        i11++;
                    }
                    i10++;
                }
                int i14 = iArr[i11];
                iArr[i11] = iArr[i8];
                iArr[i8] = i14;
                float f3 = fArr[i11];
                fArr[i11] = fArr[i8];
                fArr[i8] = f3;
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
        int i16 = 1;
        for (int i17 = 1; i17 < this.d; i17++) {
            int[] iArr3 = this.f11374b;
            if (iArr3[i17 - 1] != iArr3[i17]) {
                i16++;
            }
        }
        double[] dArr = new double[i16];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i16, 1);
        int i18 = 0;
        for (int i19 = 0; i19 < this.d; i19++) {
            if (i19 > 0) {
                int[] iArr4 = this.f11374b;
                if (iArr4[i19] != iArr4[i19 - 1]) {
                    dArr[i18] = ((double) this.f11374b[i19]) * 0.01d;
                    dArr2[i18][0] = this.f11375c[i19];
                    i18++;
                }
            } else {
                dArr[i18] = ((double) this.f11374b[i19]) * 0.01d;
                dArr2[i18][0] = this.f11375c[i19];
                i18++;
            }
        }
        this.f11373a = CurveFit.a(i2, dArr, dArr2);
    }

    public final String toString() {
        String string = this.f11376e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.d; i2++) {
            StringBuilder sbU = n00.u(string, "[");
            sbU.append(this.f11374b[i2]);
            sbU.append(" , ");
            sbU.append(decimalFormat.format(this.f11375c[i2]));
            sbU.append("] ");
            string = sbU.toString();
        }
        return string;
    }
}

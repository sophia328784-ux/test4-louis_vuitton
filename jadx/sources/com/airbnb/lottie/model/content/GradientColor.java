package com.airbnb.lottie.model.content;

import com.airbnb.lottie.utils.GammaEvaluator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GradientColor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f22115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f22116b;

    public GradientColor(float[] fArr, int[] iArr) {
        this.f22115a = fArr;
        this.f22116b = iArr;
    }

    public final void a(GradientColor gradientColor) {
        int i2 = 0;
        while (true) {
            int[] iArr = gradientColor.f22116b;
            if (i2 >= iArr.length) {
                return;
            }
            this.f22115a[i2] = gradientColor.f22115a[i2];
            this.f22116b[i2] = iArr[i2];
            i2++;
        }
    }

    public final GradientColor b(float[] fArr) {
        int iC;
        int[] iArr = new int[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float f2 = fArr[i2];
            float[] fArr2 = this.f22115a;
            int iBinarySearch = Arrays.binarySearch(fArr2, f2);
            int[] iArr2 = this.f22116b;
            if (iBinarySearch >= 0) {
                iC = iArr2[iBinarySearch];
            } else {
                int i3 = -(iBinarySearch + 1);
                if (i3 == 0) {
                    iC = iArr2[0];
                } else if (i3 == iArr2.length - 1) {
                    iC = iArr2[iArr2.length - 1];
                } else {
                    int i4 = i3 - 1;
                    float f3 = fArr2[i4];
                    iC = GammaEvaluator.c(iArr2[i4], iArr2[i3], (f2 - f3) / (fArr2[i3] - f3));
                }
            }
            iArr[i2] = iC;
        }
        return new GradientColor(fArr, iArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            GradientColor gradientColor = (GradientColor) obj;
            if (Arrays.equals(this.f22115a, gradientColor.f22115a) && Arrays.equals(this.f22116b, gradientColor.f22116b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f22116b) + (Arrays.hashCode(this.f22115a) * 31);
    }
}

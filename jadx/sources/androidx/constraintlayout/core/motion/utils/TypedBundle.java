package androidx.constraintlayout.core.motion.utils;

import defpackage.a;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class TypedBundle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f11401a = new int[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f11402b = new int[10];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11403c = 0;
    public int[] d = new int[10];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f11404e = new float[10];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11405f = 0;
    public int[] g = new int[5];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String[] f11406h = new String[5];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11407i = 0;

    public final void a(float f2, int i2) {
        int i3 = this.f11405f;
        int[] iArr = this.d;
        if (i3 >= iArr.length) {
            this.d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f11404e;
            this.f11404e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.d;
        int i4 = this.f11405f;
        iArr2[i4] = i2;
        float[] fArr2 = this.f11404e;
        this.f11405f = i4 + 1;
        fArr2[i4] = f2;
    }

    public final void b(int i2, int i3) {
        int i4 = this.f11403c;
        int[] iArr = this.f11401a;
        if (i4 >= iArr.length) {
            this.f11401a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f11402b;
            this.f11402b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f11401a;
        int i5 = this.f11403c;
        iArr3[i5] = i2;
        int[] iArr4 = this.f11402b;
        this.f11403c = i5 + 1;
        iArr4[i5] = i3;
    }

    public final void c(int i2, String str) {
        int i3 = this.f11407i;
        int[] iArr = this.g;
        if (i3 >= iArr.length) {
            this.g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f11406h;
            this.f11406h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.g;
        int i4 = this.f11407i;
        iArr2[i4] = i2;
        String[] strArr2 = this.f11406h;
        this.f11407i = i4 + 1;
        strArr2[i4] = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TypedBundle{mCountInt=");
        sb.append(this.f11403c);
        sb.append(", mCountFloat=");
        sb.append(this.f11405f);
        sb.append(", mCountString=");
        return a.i(this.f11407i, ", mCountBoolean=0}", sb);
    }
}

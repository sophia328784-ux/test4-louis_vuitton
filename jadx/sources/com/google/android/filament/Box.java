package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
public class Box {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f28525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f28526b;

    public Box(float[] fArr, float[] fArr2) {
        this.f28525a = new float[]{fArr[0], fArr[1], fArr[2]};
        this.f28526b = new float[]{fArr2[0], fArr2[1], fArr2[2]};
    }

    public Box(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f28525a = new float[]{f2, f3, f4};
        this.f28526b = new float[]{f5, f6, f7};
    }

    public Box() {
        this.f28525a = new float[3];
        this.f28526b = new float[3];
    }
}

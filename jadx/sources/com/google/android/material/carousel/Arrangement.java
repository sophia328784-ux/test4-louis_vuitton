package com.google.android.material.carousel;

import androidx.core.math.MathUtils;
import defpackage.d21;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class Arrangement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f32435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f32436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32437c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f32438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f32439f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32440h;

    /* JADX WARN: Code duplicated, block: B:43:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c6  */
    public Arrangement(int i2, float f2, float f3, float f4, int i3, float f5, int i4, float f6, int i5, float f7) {
        float fAbs;
        this.f32435a = i2;
        float fA = MathUtils.a(f2, f3, f4);
        this.f32436b = fA;
        this.f32437c = i3;
        this.f32438e = f5;
        this.d = i4;
        this.f32439f = f6;
        this.g = i5;
        float f8 = i5;
        float f9 = (f5 * i4) + (f6 * f8);
        float f10 = i3;
        float f11 = f7 - ((fA * f10) + f9);
        if (i3 > 0 && f11 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.f32436b = Math.min(f11 / f10, f4 - fA) + fA;
        } else if (i3 > 0 && f11 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            this.f32436b = Math.max(f11 / f10, f3 - fA) + fA;
        }
        int i6 = this.f32437c;
        float f12 = i6 > 0 ? this.f32436b : 0.0f;
        this.f32436b = f12;
        int i7 = this.d;
        float f13 = i7;
        float f14 = f13 / 2.0f;
        float f15 = (f7 - ((i6 + f14) * (i6 > 0 ? f12 : 0.0f))) / (f14 + f8);
        this.f32439f = f15;
        float f16 = (f12 + f15) / 2.0f;
        this.f32438e = f16;
        if (i7 > 0 && f15 != f6) {
            float f17 = (f6 - f15) * f8;
            float fMin = Math.min(Math.abs(f17), f16 * 0.1f * f13);
            float f18 = this.f32438e;
            int i8 = this.d;
            if (f17 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.f32438e = f18 - (fMin / i8);
                this.f32439f = (fMin / f8) + this.f32439f;
            } else {
                this.f32438e = (fMin / i8) + f18;
                this.f32439f -= fMin / f8;
            }
        }
        if (i5 > 0 && this.f32437c > 0 && this.d > 0) {
            float f19 = this.f32439f;
            float f20 = this.f32438e;
            if (f19 <= f20 || f20 <= this.f32436b) {
                fAbs = Float.MAX_VALUE;
            } else {
                fAbs = i2 * Math.abs(f6 - this.f32439f);
            }
        } else if (i5 <= 0 || this.f32437c <= 0 || this.f32439f > this.f32436b) {
            fAbs = i2 * Math.abs(f6 - this.f32439f);
        } else {
            fAbs = Float.MAX_VALUE;
        }
        this.f32440h = fAbs;
    }

    public static Arrangement a(float f2, float f3, float f4, float f5, int[] iArr, float f6, int[] iArr2, float f7, int[] iArr3) {
        Arrangement arrangement = null;
        int i2 = 1;
        for (int i3 : iArr3) {
            int length = iArr2.length;
            int i4 = 0;
            while (i4 < length) {
                int i5 = iArr2[i4];
                int length2 = iArr.length;
                int i6 = 0;
                while (i6 < length2) {
                    int i7 = length;
                    int i8 = i4;
                    int i9 = i2;
                    int i10 = length2;
                    int i11 = i6;
                    Arrangement arrangement2 = new Arrangement(i9, f3, f4, f5, iArr[i6], f6, i5, f7, i3, f2);
                    float f8 = arrangement2.f32440h;
                    if (arrangement == null || f8 < arrangement.f32440h) {
                        if (f8 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            return arrangement2;
                        }
                        arrangement = arrangement2;
                    }
                    int i12 = i9 + 1;
                    i6 = i11 + 1;
                    i4 = i8;
                    i2 = i12;
                    length = i7;
                    length2 = i10;
                }
                i4++;
                i2 = i2;
                length = length;
            }
        }
        return arrangement;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Arrangement [priority=");
        sb.append(this.f32435a);
        sb.append(", smallCount=");
        sb.append(this.f32437c);
        sb.append(", smallSize=");
        sb.append(this.f32436b);
        sb.append(", mediumCount=");
        sb.append(this.d);
        sb.append(", mediumSize=");
        sb.append(this.f32438e);
        sb.append(", largeCount=");
        sb.append(this.g);
        sb.append(", largeSize=");
        sb.append(this.f32439f);
        sb.append(", cost=");
        return d21.e(this.f32440h, "]", sb);
    }
}

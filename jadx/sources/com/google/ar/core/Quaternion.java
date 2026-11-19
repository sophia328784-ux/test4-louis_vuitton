package com.google.ar.core;

import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class Quaternion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Quaternion f33346a = new Quaternion();
    private float w;
    private float x;
    private float y;
    private float z;

    public Quaternion(Quaternion quaternion) {
        this.x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.w = 1.0f;
        float f2 = quaternion.x;
        float f3 = quaternion.y;
        float f4 = quaternion.z;
        float f5 = quaternion.w;
        this.x = f2;
        this.y = f3;
        this.z = f4;
        this.w = f5;
    }

    public static Quaternion h(Quaternion quaternion, Quaternion quaternion2, float f2) {
        Quaternion quaternion3 = new Quaternion();
        float f3 = (quaternion.x * quaternion2.x) + (quaternion.y * quaternion2.y) + (quaternion.z * quaternion2.z) + (quaternion.w * quaternion2.w);
        if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Quaternion quaternion4 = new Quaternion(quaternion2);
            f3 = -f3;
            quaternion4.x = -quaternion4.x;
            quaternion4.y = -quaternion4.y;
            quaternion4.z = -quaternion4.z;
            quaternion4.w = -quaternion4.w;
            quaternion2 = quaternion4;
        }
        float f4 = 1.0f - f2;
        float fAcos = (float) Math.acos(f3);
        float fSqrt = (float) Math.sqrt(1.0f - (f3 * f3));
        if (Math.abs(fSqrt) > 0.001d) {
            float f5 = 1.0f / fSqrt;
            float fSin = (float) Math.sin(f4 * fAcos);
            f2 = ((float) Math.sin(f2 * fAcos)) * f5;
            f4 = fSin * f5;
        }
        float f6 = (quaternion2.x * f2) + (quaternion.x * f4);
        quaternion3.x = f6;
        float f7 = (quaternion2.y * f2) + (quaternion.y * f4);
        quaternion3.y = f7;
        float f8 = (quaternion2.z * f2) + (quaternion.z * f4);
        quaternion3.z = f8;
        float f9 = (f2 * quaternion2.w) + (f4 * quaternion.w);
        quaternion3.w = f9;
        float f10 = f9 * f9;
        float fSqrt2 = (float) (1.0d / Math.sqrt(f10 + ((f8 * f8) + ((f7 * f7) + (f6 * f6)))));
        quaternion3.x *= fSqrt2;
        quaternion3.y *= fSqrt2;
        quaternion3.z *= fSqrt2;
        quaternion3.w *= fSqrt2;
        return quaternion3;
    }

    public static void i(Quaternion quaternion, float[] fArr, int i2, float[] fArr2, int i3) {
        float f2 = fArr[i2];
        float f3 = fArr[i2 + 1];
        float f4 = fArr[i2 + 2];
        float f5 = quaternion.x;
        float f6 = quaternion.y;
        float f7 = quaternion.z;
        float f8 = quaternion.w;
        float f9 = f6 * f4;
        float f10 = f7 * f3;
        float f11 = f8 * f3;
        float f12 = f7 * f2;
        float f13 = f5 * f4;
        float f14 = f8 * f4;
        float f15 = f5 * f3;
        float f16 = f6 * f2;
        float f17 = -f5;
        float f18 = f3 * f6;
        float f19 = f4 * f7;
        float f20 = ((f8 * f2) + f9) - f10;
        float f21 = -f7;
        float f22 = -f6;
        float f23 = (f14 + f15) - f16;
        float f24 = (f11 + f12) - f13;
        float f25 = ((f2 * f17) - f18) - f19;
        float f26 = f24 * f21;
        fArr2[i3] = (f26 + ((f25 * f17) + (f20 * f8))) - (f23 * f22);
        fArr2[i3 + 1] = ((f23 * f17) + ((f25 * f22) + (f24 * f8))) - (f20 * f21);
        float f27 = f20 * f22;
        fArr2[i3 + 2] = (f27 + ((f25 * f21) + (f23 * f8))) - (f24 * f17);
    }

    public final float a() {
        return this.x;
    }

    public final float b() {
        return this.y;
    }

    public final float c() {
        return this.z;
    }

    public final float d() {
        return this.w;
    }

    public final void e(float[] fArr, int i2) {
        fArr[i2] = this.x;
        fArr[i2 + 1] = this.y;
        fArr[i2 + 2] = this.z;
        fArr[i2 + 3] = this.w;
    }

    public final Quaternion f() {
        return new Quaternion(-this.x, -this.y, -this.z, this.w);
    }

    public final Quaternion g(Quaternion quaternion) {
        Quaternion quaternion2 = new Quaternion();
        float f2 = this.x;
        float f3 = quaternion.w;
        float f4 = this.y;
        float f5 = quaternion.z;
        float f6 = this.z;
        float f7 = quaternion.y;
        float f8 = this.w;
        quaternion2.x = (((f2 * f3) + (f4 * f5)) - (f6 * f7)) + (quaternion.x * f8);
        float f9 = this.x;
        float f10 = -f9;
        float f11 = quaternion.x;
        quaternion2.y = (f10 * f5) + (f4 * f3) + (f6 * f11) + (f7 * f8);
        float f12 = quaternion.y;
        float f13 = this.y;
        quaternion2.z = ((f9 * f12) - (f13 * f11)) + (f6 * f3) + (f5 * f8);
        quaternion2.w = (((f10 * f11) - (f13 * f12)) - (this.z * quaternion.z)) + (f8 * f3);
        return quaternion2;
    }

    public final void j(float[] fArr, int i2) {
        float f2 = this.x;
        float f3 = this.y;
        float f4 = this.z;
        float f5 = this.w;
        float f6 = (f2 * f2) + (f3 * f3) + (f4 * f4) + (f5 * f5);
        float f7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (f6 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f7 = 2.0f / f6;
        }
        float f8 = f2 * f7;
        float f9 = f3 * f7;
        float f10 = f7 * f4;
        float f11 = f5 * f8;
        float f12 = f5 * f9;
        float f13 = f5 * f10;
        float f14 = f8 * f2;
        float f15 = f2 * f9;
        float f16 = f2 * f10;
        float f17 = f9 * f3;
        float f18 = f3 * f10;
        float f19 = f4 * f10;
        fArr[i2] = 1.0f - (f17 + f19);
        fArr[i2 + 4] = f15 - f13;
        fArr[i2 + 8] = f16 + f12;
        fArr[i2 + 1] = f15 + f13;
        fArr[i2 + 5] = 1.0f - (f19 + f14);
        fArr[i2 + 9] = f18 - f11;
        fArr[i2 + 2] = f16 - f12;
        fArr[i2 + 6] = f18 + f11;
        fArr[i2 + 10] = 1.0f - (f14 + f17);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "[%.3f, %.3f, %.3f, %.3f]", Float.valueOf(this.x), Float.valueOf(this.y), Float.valueOf(this.z), Float.valueOf(this.w));
    }

    public Quaternion(float f2, float f3, float f4, float f5) {
        this.x = f2;
        this.y = f3;
        this.z = f4;
        this.w = f5;
    }

    public Quaternion() {
        this.x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.w = 1.0f;
    }
}

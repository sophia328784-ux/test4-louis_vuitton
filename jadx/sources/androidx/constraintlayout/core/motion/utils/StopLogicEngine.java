package androidx.constraintlayout.core.motion.utils;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class StopLogicEngine implements StopEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f11384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f11385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11386c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f11387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11388f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f11390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f11392k = false;
    public float l;
    public float m;
    public float n;

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final float a() {
        boolean z = this.f11392k;
        float fC = c(this.n);
        return z ? -fC : fC;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final boolean b() {
        return a() < 1.0E-5f && Math.abs(this.f11390i - this.m) < 1.0E-5f;
    }

    public final float c(float f2) {
        float f3 = this.d;
        if (f2 <= f3) {
            float f4 = this.f11384a;
            return (((this.f11385b - f4) * f2) / f3) + f4;
        }
        int i2 = this.f11391j;
        if (i2 == 1) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f5 = f2 - f3;
        float f6 = this.f11387e;
        if (f5 < f6) {
            float f7 = this.f11385b;
            return (((this.f11386c - f7) * f5) / f6) + f7;
        }
        if (i2 == 2) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f8 = f5 - f6;
        float f9 = this.f11388f;
        if (f8 >= f9) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f10 = this.f11386c;
        return f10 - ((f8 * f10) / f9);
    }

    public final void d(float f2, float f3, float f4, float f5, float f6) {
        this.f11390i = f3;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 1.0E-4f;
        }
        float f7 = f2 / f4;
        float f8 = (f7 * f2) / 2.0f;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float fSqrt = (float) Math.sqrt((f3 - ((((-f2) / f4) * f2) / 2.0f)) * f4);
            if (fSqrt < f5) {
                this.f11391j = 2;
                this.f11384a = f2;
                this.f11385b = fSqrt;
                this.f11386c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float f9 = (fSqrt - f2) / f4;
                this.d = f9;
                this.f11387e = fSqrt / f4;
                this.g = ((f2 + fSqrt) * f9) / 2.0f;
                this.f11389h = f3;
                this.f11390i = f3;
                return;
            }
            this.f11391j = 3;
            this.f11384a = f2;
            this.f11385b = f5;
            this.f11386c = f5;
            float f10 = (f5 - f2) / f4;
            this.d = f10;
            float f11 = f5 / f4;
            this.f11388f = f11;
            float f12 = ((f2 + f5) * f10) / 2.0f;
            float f13 = (f11 * f5) / 2.0f;
            this.f11387e = ((f3 - f12) - f13) / f5;
            this.g = f12;
            this.f11389h = f3 - f13;
            this.f11390i = f3;
            return;
        }
        if (f8 >= f3) {
            this.f11391j = 1;
            this.f11384a = f2;
            this.f11385b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.g = f3;
            this.d = (2.0f * f3) / f2;
            return;
        }
        float f14 = f3 - f8;
        float f15 = f14 / f2;
        if (f15 + f7 < f6) {
            this.f11391j = 2;
            this.f11384a = f2;
            this.f11385b = f2;
            this.f11386c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.g = f14;
            this.f11389h = f3;
            this.d = f15;
            this.f11387e = f7;
            return;
        }
        float fSqrt2 = (float) Math.sqrt(((f2 * f2) / 2.0f) + (f4 * f3));
        float f16 = (fSqrt2 - f2) / f4;
        this.d = f16;
        float f17 = fSqrt2 / f4;
        this.f11387e = f17;
        if (fSqrt2 < f5) {
            this.f11391j = 2;
            this.f11384a = f2;
            this.f11385b = fSqrt2;
            this.f11386c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.d = f16;
            this.f11387e = f17;
            this.g = ((f2 + fSqrt2) * f16) / 2.0f;
            this.f11389h = f3;
            return;
        }
        this.f11391j = 3;
        this.f11384a = f2;
        this.f11385b = f5;
        this.f11386c = f5;
        float f18 = (f5 - f2) / f4;
        this.d = f18;
        float f19 = f5 / f4;
        this.f11388f = f19;
        float f20 = ((f2 + f5) * f18) / 2.0f;
        float f21 = (f19 * f5) / 2.0f;
        this.f11387e = ((f3 - f20) - f21) / f5;
        this.g = f20;
        this.f11389h = f3 - f21;
        this.f11390i = f3;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final float getInterpolation(float f2) {
        float f3;
        float f4 = this.d;
        if (f2 <= f4) {
            float f5 = this.f11384a;
            f3 = ((((this.f11385b - f5) * f2) * f2) / (f4 * 2.0f)) + (f5 * f2);
        } else {
            int i2 = this.f11391j;
            if (i2 == 1) {
                f3 = this.g;
            } else {
                float f6 = f2 - f4;
                float f7 = this.f11387e;
                if (f6 < f7) {
                    float f8 = this.g;
                    float f9 = this.f11385b;
                    f3 = ((((this.f11386c - f9) * f6) * f6) / (f7 * 2.0f)) + (f9 * f6) + f8;
                } else if (i2 == 2) {
                    f3 = this.f11389h;
                } else {
                    float f10 = f6 - f7;
                    float f11 = this.f11388f;
                    if (f10 <= f11) {
                        float f12 = this.f11389h;
                        float f13 = this.f11386c * f10;
                        f3 = (f12 + f13) - ((f13 * f10) / (f11 * 2.0f));
                    } else {
                        f3 = this.f11390i;
                    }
                }
            }
        }
        this.m = f3;
        this.n = f2;
        boolean z = this.f11392k;
        float f14 = this.l;
        return z ? f14 - f3 : f14 + f3;
    }
}

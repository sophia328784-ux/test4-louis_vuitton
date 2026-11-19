package androidx.constraintlayout.core.motion.utils;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class SpringStopEngine implements StopEngine {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f11378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f11379c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f11380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f11381f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11382h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f11377a = 0.5d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11383i = 0;

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final float a() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final boolean b() {
        double d = ((double) this.f11380e) - this.f11379c;
        double d2 = this.f11378b;
        double d3 = this.f11381f;
        return Math.sqrt((((d2 * d) * d) + ((d3 * d3) * ((double) this.g))) / d2) <= ((double) this.f11382h);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public final float getInterpolation(float f2) {
        double d = f2 - this.d;
        if (d > 0.0d) {
            double d2 = this.f11378b;
            double d3 = this.f11377a;
            int iSqrt = (int) ((9.0d / ((Math.sqrt(d2 / ((double) this.g)) * d) * 4.0d)) + 1.0d);
            double d4 = d / ((double) iSqrt);
            int i2 = 0;
            while (i2 < iSqrt) {
                float f3 = this.f11380e;
                double d5 = f3;
                double d6 = this.f11379c;
                double d7 = d4;
                float f4 = this.f11381f;
                double d8 = f4;
                double d9 = ((-d2) * (d5 - d6)) - (d3 * d8);
                double d10 = this.g;
                double d11 = (((d9 / d10) * d7) / 2.0d) + d8;
                double d12 = ((((-((((d7 * d11) / 2.0d) + d5) - d6)) * d2) - (d11 * d3)) / d10) * d7;
                float f5 = f4 + ((float) d12);
                this.f11381f = f5;
                float f6 = f3 + ((float) (((d12 / 2.0d) + d8) * d7));
                this.f11380e = f6;
                int i3 = this.f11383i;
                if (i3 > 0) {
                    if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM && (i3 & 1) == 1) {
                        this.f11380e = -f6;
                        this.f11381f = -f5;
                    }
                    float f7 = this.f11380e;
                    if (f7 > 1.0f && (i3 & 2) == 2) {
                        this.f11380e = 2.0f - f7;
                        this.f11381f = -this.f11381f;
                    }
                }
                i2++;
                d4 = d7;
            }
        }
        this.d = f2;
        if (b()) {
            this.f11380e = (float) this.f11379c;
        }
        return this.f11380e;
    }
}

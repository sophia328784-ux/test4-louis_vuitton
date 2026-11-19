package androidx.core.content.res;

import defpackage.pq0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ViewingConditions {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ViewingConditions f12042k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f12043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f12045c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f12046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f12047f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f12048h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f12049i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f12050j;

    static {
        float fC = (float) ((((double) CamUtils.c()) * 63.66197723675813d) / 100.0d);
        float[] fArr = CamUtils.f12019c;
        float f2 = fArr[0];
        float[][] fArr2 = CamUtils.f12017a;
        float[] fArr3 = fArr2[0];
        float f3 = fArr3[0] * f2;
        float f4 = fArr[1];
        float f5 = (fArr3[1] * f4) + f3;
        float f6 = fArr[2];
        float f7 = (fArr3[2] * f6) + f5;
        float[] fArr4 = fArr2[1];
        float f8 = (fArr4[2] * f6) + (fArr4[1] * f4) + (fArr4[0] * f2);
        float[] fArr5 = fArr2[2];
        float f9 = (f6 * fArr5[2]) + (f4 * fArr5[1]) + (f2 * fArr5[0]);
        float fA = pq0.a((float) Math.exp(((-fC) - 42.0f) / 92.0f), 0.2777778f, 1.0f, 1.0f);
        double d = fA;
        if (d > 1.0d) {
            fA = 1.0f;
        } else if (d < 0.0d) {
            fA = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float[] fArr6 = {(((100.0f / f7) * fA) + 1.0f) - fA, (((100.0f / f8) * fA) + 1.0f) - fA, (((100.0f / f9) * fA) + 1.0f) - fA};
        float f10 = 1.0f / ((5.0f * fC) + 1.0f);
        float f11 = f10 * f10 * f10 * f10;
        float f12 = 1.0f - f11;
        float fCbrt = (0.1f * f12 * f12 * ((float) Math.cbrt(((double) fC) * 5.0d))) + (f11 * fC);
        float fC2 = CamUtils.c() / fArr[1];
        double d2 = fC2;
        float fSqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f7)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f8)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f9)) / 100.0d, 0.42d)};
        float f13 = fArr7[0];
        float f14 = (f13 * 400.0f) / (f13 + 27.13f);
        float f15 = fArr7[1];
        float f16 = (f15 * 400.0f) / (f15 + 27.13f);
        float f17 = fArr7[2];
        float[] fArr8 = {f14, f16, (400.0f * f17) / (f17 + 27.13f)};
        f12042k = new ViewingConditions(fC2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, 0.69f, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public ViewingConditions(float f2, float f3, float f4, float f5, float f6, float f7, float[] fArr, float f8, float f9, float f10) {
        this.f12047f = f2;
        this.f12043a = f3;
        this.f12044b = f4;
        this.f12045c = f5;
        this.d = f6;
        this.f12046e = f7;
        this.g = fArr;
        this.f12048h = f8;
        this.f12049i = f9;
        this.f12050j = f10;
    }
}

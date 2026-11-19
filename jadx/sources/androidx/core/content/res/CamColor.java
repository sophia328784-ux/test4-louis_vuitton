package androidx.core.content.res;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CamColor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f12012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f12014c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f12015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f12016f;

    public CamColor(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f12012a = f2;
        this.f12013b = f3;
        this.f12014c = f4;
        this.d = f5;
        this.f12015e = f6;
        this.f12016f = f7;
    }

    public static CamColor a(int i2) {
        ViewingConditions viewingConditions = ViewingConditions.f12042k;
        float fB = CamUtils.b(Color.red(i2));
        float fB2 = CamUtils.b(Color.green(i2));
        float fB3 = CamUtils.b(Color.blue(i2));
        float[][] fArr = CamUtils.d;
        float[] fArr2 = fArr[0];
        float f2 = (fArr2[2] * fB3) + (fArr2[1] * fB2) + (fArr2[0] * fB);
        float[] fArr3 = fArr[1];
        float f3 = (fArr3[2] * fB3) + (fArr3[1] * fB2) + (fArr3[0] * fB);
        float[] fArr4 = fArr[2];
        float f4 = (fB3 * fArr4[2]) + (fB2 * fArr4[1]) + (fB * fArr4[0]);
        float[][] fArr5 = CamUtils.f12017a;
        float[] fArr6 = fArr5[0];
        float f5 = (fArr6[2] * f4) + (fArr6[1] * f3) + (fArr6[0] * f2);
        float[] fArr7 = fArr5[1];
        float f6 = (fArr7[2] * f4) + (fArr7[1] * f3) + (fArr7[0] * f2);
        float[] fArr8 = fArr5[2];
        float f7 = (f4 * fArr8[2]) + (f3 * fArr8[1]) + (f2 * fArr8[0]);
        float[] fArr9 = viewingConditions.g;
        float f8 = viewingConditions.f12049i;
        float f9 = viewingConditions.d;
        float f10 = viewingConditions.f12043a;
        float f11 = fArr9[0] * f5;
        float f12 = fArr9[1] * f6;
        float f13 = fArr9[2] * f7;
        float f14 = viewingConditions.f12048h;
        float fPow = (float) Math.pow(((double) (Math.abs(f11) * f14)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f12) * f14)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f13) * f14)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f11) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f12) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f13) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d = fSignum3;
        float f15 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d)) / 11.0f;
        float f16 = ((float) (((double) (fSignum + fSignum2)) - (d * 2.0d))) / 9.0f;
        float f17 = fSignum2 * 20.0f;
        float f18 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f17)) / 20.0f;
        float f19 = (((fSignum * 40.0f) + f17) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f16, f15)) * 180.0f) / 3.1415927f;
        if (fAtan2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f20 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f19 * viewingConditions.f12044b) / f10, viewingConditions.f12050j * f9)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f21 = f10 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.f12047f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.f12046e) * viewingConditions.f12045c) * ((float) Math.sqrt((f16 * f16) + (f15 * f15)))) / (f18 + 0.305f), 0.9d));
        float fSqrt = fPow5 * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        Math.sqrt((fPow5 * f9) / f21);
        float f22 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f8 * fSqrt * 0.0228f) + 1.0f)) * 43.85965f;
        double d2 = f20;
        return new CamColor(fAtan2, fSqrt, fPow4, f22, fLog * ((float) Math.cos(d2)), fLog * ((float) Math.sin(d2)));
    }

    public static CamColor b(float f2, float f3, float f4) {
        ViewingConditions viewingConditions = ViewingConditions.f12042k;
        float f5 = viewingConditions.d;
        double d = ((double) f2) / 100.0d;
        Math.sqrt(d);
        float f6 = viewingConditions.f12043a + 4.0f;
        float f7 = viewingConditions.f12049i * f3;
        Math.sqrt(((f3 / ((float) Math.sqrt(d))) * viewingConditions.d) / f6);
        float f8 = (1.7f * f2) / ((0.007f * f2) + 1.0f);
        float fLog = ((float) Math.log((((double) f7) * 0.0228d) + 1.0d)) * 43.85965f;
        double d2 = (3.1415927f * f4) / 180.0f;
        return new CamColor(f4, f3, f2, f8, fLog * ((float) Math.cos(d2)), fLog * ((float) Math.sin(d2)));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    public final int c(ViewingConditions viewingConditions) {
        float fSqrt;
        float f2 = this.f12013b;
        double d = f2;
        float f3 = this.f12014c;
        if (d != 0.0d) {
            double d2 = f3;
            if (d2 == 0.0d) {
                fSqrt = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else {
                fSqrt = f2 / ((float) Math.sqrt(d2 / 100.0d));
            }
        } else {
            fSqrt = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f4 = viewingConditions.f12047f;
        float f5 = viewingConditions.f12048h;
        float fPow = (float) Math.pow(((double) fSqrt) / Math.pow(1.64d - Math.pow(0.29d, f4), 0.73d), 1.1111111111111112d);
        double d3 = (this.f12012a * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + d3) + 3.8d)) * 0.25f;
        float fPow2 = viewingConditions.f12043a * ((float) Math.pow(((double) f3) / 100.0d, (1.0d / ((double) viewingConditions.d)) / ((double) viewingConditions.f12050j)));
        float f6 = fCos * 3846.1538f * viewingConditions.f12046e * viewingConditions.f12045c;
        float f7 = fPow2 / viewingConditions.f12044b;
        float fSin = (float) Math.sin(d3);
        float fCos2 = (float) Math.cos(d3);
        float f8 = (((0.305f + f7) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f6 * 23.0f)));
        float f9 = fCos2 * f8;
        float f10 = f8 * fSin;
        float f11 = f7 * 460.0f;
        float f12 = ((288.0f * f10) + ((451.0f * f9) + f11)) / 1403.0f;
        float f13 = ((f11 - (891.0f * f9)) - (261.0f * f10)) / 1403.0f;
        float f14 = ((f11 - (f9 * 220.0f)) - (f10 * 6300.0f)) / 1403.0f;
        float f15 = 100.0f / f5;
        float fSignum = Math.signum(f12) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f12)) * 27.13d) / (400.0d - ((double) Math.abs(f12)))), 2.380952380952381d));
        float fSignum2 = Math.signum(f13) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f13)) * 27.13d) / (400.0d - ((double) Math.abs(f13)))), 2.380952380952381d));
        float fSignum3 = Math.signum(f14) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f14)) * 27.13d) / (400.0d - ((double) Math.abs(f14)))), 2.380952380952381d));
        float[] fArr = viewingConditions.g;
        float f16 = fSignum / fArr[0];
        float f17 = fSignum2 / fArr[1];
        float f18 = fSignum3 / fArr[2];
        float[][] fArr2 = CamUtils.f12018b;
        float[] fArr3 = fArr2[0];
        float f19 = (fArr3[2] * f18) + (fArr3[1] * f17) + (fArr3[0] * f16);
        float[] fArr4 = fArr2[1];
        float f20 = (fArr4[2] * f18) + (fArr4[1] * f17) + (fArr4[0] * f16);
        float[] fArr5 = fArr2[2];
        return ColorUtils.a(f19, f20, (f18 * fArr5[2]) + (f17 * fArr5[1]) + (f16 * fArr5[0]));
    }
}

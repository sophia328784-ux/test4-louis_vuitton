package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ColorSpaceKt {
    public static ColorSpace a(ColorSpace colorSpace, WhitePoint whitePoint) {
        Adaptation.f8945b.getClass();
        Adaptation$Companion$Bradford$1 adaptation$Companion$Bradford$1 = Adaptation.f8946c;
        long j2 = colorSpace.f8953b;
        ColorModel.f8948a.getClass();
        if (ColorModel.a(j2, ColorModel.f8949b)) {
            Rgb rgb = (Rgb) colorSpace;
            WhitePoint whitePoint2 = rgb.d;
            if (!c(whitePoint2, whitePoint)) {
                return new Rgb(rgb, f(b(adaptation$Companion$Bradford$1.f8947a, whitePoint2.a(), whitePoint.a()), rgb.f8983i), whitePoint);
            }
        }
        return colorSpace;
    }

    public static final float[] b(float[] fArr, float[] fArr2, float[] fArr3) {
        h(fArr, fArr2);
        h(fArr, fArr3);
        return f(e(fArr), g(new float[]{fArr3[0] / fArr2[0], fArr3[1] / fArr2[1], fArr3[2] / fArr2[2]}, fArr));
    }

    public static final boolean c(WhitePoint whitePoint, WhitePoint whitePoint2) {
        if (whitePoint == whitePoint2) {
            return true;
        }
        return Math.abs(whitePoint.f8993a - whitePoint2.f8993a) < 0.001f && Math.abs(whitePoint.f8994b - whitePoint2.f8994b) < 0.001f;
    }

    public static final Connector d(ColorSpace colorSpace, ColorSpace colorSpace2) {
        if (colorSpace == colorSpace2) {
            Connector.f8964e.getClass();
            RenderIntent.f8977a.getClass();
            return new Connector$Companion$identity$1(colorSpace, colorSpace, RenderIntent.f8978b, null);
        }
        long j2 = colorSpace.f8953b;
        ColorModel.f8948a.getClass();
        long j3 = ColorModel.f8949b;
        return (ColorModel.a(j2, j3) && ColorModel.a(colorSpace2.f8953b, j3)) ? new Connector.RgbConnector((Rgb) colorSpace, (Rgb) colorSpace2, 0, null) : new Connector(colorSpace, colorSpace2, 0, null);
    }

    public static final float[] e(float[] fArr) {
        float f2 = fArr[0];
        float f3 = fArr[3];
        float f4 = fArr[6];
        float f5 = fArr[1];
        float f6 = fArr[4];
        float f7 = fArr[7];
        float f8 = fArr[2];
        float f9 = fArr[5];
        float f10 = fArr[8];
        float f11 = (f6 * f10) - (f7 * f9);
        float f12 = (f7 * f8) - (f5 * f10);
        float f13 = (f5 * f9) - (f6 * f8);
        float f14 = (f4 * f13) + (f3 * f12) + (f2 * f11);
        float[] fArr2 = new float[fArr.length];
        fArr2[0] = f11 / f14;
        fArr2[1] = f12 / f14;
        fArr2[2] = f13 / f14;
        fArr2[3] = ((f4 * f9) - (f3 * f10)) / f14;
        fArr2[4] = ((f10 * f2) - (f4 * f8)) / f14;
        fArr2[5] = ((f8 * f3) - (f9 * f2)) / f14;
        fArr2[6] = ((f3 * f7) - (f4 * f6)) / f14;
        fArr2[7] = ((f4 * f5) - (f7 * f2)) / f14;
        fArr2[8] = ((f2 * f6) - (f3 * f5)) / f14;
        return fArr2;
    }

    public static final float[] f(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[9];
        if (fArr.length < 9 || fArr2.length < 9) {
            return fArr3;
        }
        float f2 = fArr[0] * fArr2[0];
        float f3 = fArr[3];
        float f4 = fArr2[1];
        float f5 = fArr[6];
        float f6 = fArr2[2];
        fArr3[0] = (f5 * f6) + (f3 * f4) + f2;
        float f7 = fArr[1];
        float f8 = fArr2[0];
        float f9 = fArr[4];
        float f10 = fArr[7];
        float f11 = f10 * f6;
        fArr3[1] = f11 + (f4 * f9) + (f7 * f8);
        float f12 = fArr[2] * f8;
        float f13 = fArr[5];
        float f14 = (fArr2[1] * f13) + f12;
        float f15 = fArr[8];
        fArr3[2] = (f6 * f15) + f14;
        float f16 = fArr[0];
        float f17 = fArr2[3] * f16;
        float f18 = fArr2[4];
        float f19 = (f3 * f18) + f17;
        float f20 = fArr2[5];
        fArr3[3] = (f5 * f20) + f19;
        float f21 = fArr[1];
        float f22 = fArr2[3];
        float f23 = f9 * f18;
        fArr3[4] = (f10 * f20) + f23 + (f21 * f22);
        float f24 = fArr[2];
        float f25 = f20 * f15;
        fArr3[5] = f25 + (f13 * fArr2[4]) + (f22 * f24);
        float f26 = f16 * fArr2[6];
        float f27 = fArr[3];
        float f28 = fArr2[7];
        float f29 = (f27 * f28) + f26;
        float f30 = fArr2[8];
        fArr3[6] = (f5 * f30) + f29;
        float f31 = fArr2[6];
        float f32 = f10 * f30;
        fArr3[7] = f32 + (fArr[4] * f28) + (f21 * f31);
        float f33 = f15 * f30;
        fArr3[8] = f33 + (fArr[5] * fArr2[7]) + (f24 * f31);
        return fArr3;
    }

    public static final float[] g(float[] fArr, float[] fArr2) {
        float f2 = fArr[0];
        float f3 = fArr2[0] * f2;
        float f4 = fArr[1];
        float f5 = fArr2[1] * f4;
        float f6 = fArr[2];
        return new float[]{f3, f5, fArr2[2] * f6, fArr2[3] * f2, fArr2[4] * f4, fArr2[5] * f6, f2 * fArr2[6], f4 * fArr2[7], f6 * fArr2[8]};
    }

    public static final float[] h(float[] fArr, float[] fArr2) {
        if (fArr.length < 9 || fArr2.length < 3) {
            return fArr2;
        }
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        float f4 = fArr2[2];
        fArr2[0] = (fArr[6] * f4) + (fArr[3] * f3) + (fArr[0] * f2);
        fArr2[1] = (fArr[7] * f4) + (fArr[4] * f3) + (fArr[1] * f2);
        fArr2[2] = (fArr[8] * f4) + (fArr[5] * f3) + (fArr[2] * f2);
        return fArr2;
    }
}

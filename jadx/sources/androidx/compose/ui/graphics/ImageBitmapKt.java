package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import java.util.Arrays;
import java.util.function.DoubleUnaryOperator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ImageBitmapKt {
    public static AndroidImageBitmap a(int i2, int i3, int i4) {
        ColorSpace rgb;
        ColorSpace rgb2;
        ColorSpace colorSpaceA;
        ColorSpace colorSpace;
        Rgb rgb3 = ColorSpaces.f8958e;
        AndroidImageBitmap_androidKt.b(i4);
        Bitmap.Config configB = AndroidImageBitmap_androidKt.b(i4);
        if (Intrinsics.c(rgb3, rgb3)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.q)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ACES);
        } else if (Intrinsics.c(rgb3, ColorSpaces.r)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ACESCG);
        } else if (Intrinsics.c(rgb3, ColorSpaces.o)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.f8962j)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.BT2020);
        } else if (Intrinsics.c(rgb3, ColorSpaces.f8961i)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.BT709);
        } else if (Intrinsics.c(rgb3, ColorSpaces.t)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.CIE_LAB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.s)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.CIE_XYZ);
        } else if (Intrinsics.c(rgb3, ColorSpaces.f8963k)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.DCI_P3);
        } else if (Intrinsics.c(rgb3, ColorSpaces.l)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
        } else if (Intrinsics.c(rgb3, ColorSpaces.g)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.f8960h)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.f8959f)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
        } else if (Intrinsics.c(rgb3, ColorSpaces.m)) {
            colorSpace = ColorSpace.get(ColorSpace.Named.NTSC_1953);
        } else {
            if (!Intrinsics.c(rgb3, ColorSpaces.p)) {
                if (Intrinsics.c(rgb3, ColorSpaces.n)) {
                    colorSpace = ColorSpace.get(ColorSpace.Named.SMPTE_C);
                } else if (Build.VERSION.SDK_INT < 34 || (colorSpaceA = ColorSpaceVerificationHelperV34.a(rgb3)) == null) {
                    if (rgb3 != null) {
                        String str = rgb3.f8952a;
                        float[] fArrA = rgb3.d.a();
                        TransferParameters transferParameters = rgb3.g;
                        ColorSpace.Rgb.TransferParameters transferParameters2 = transferParameters != null ? new ColorSpace.Rgb.TransferParameters(transferParameters.f8989b, transferParameters.f8990c, transferParameters.d, transferParameters.f8991e, transferParameters.f8992f, transferParameters.g, transferParameters.f8988a) : null;
                        float[] fArr = rgb3.f8983i;
                        final int i5 = 0;
                        if (transferParameters2 != null) {
                            ColorSpace.Rgb rgb4 = new ColorSpace.Rgb(str, rgb3.f8982h, fArrA, transferParameters2);
                            if (Float.isNaN(fArr[0]) || Arrays.equals(rgb4.getTransform(), fArr)) {
                                rgb2 = rgb4;
                            } else {
                                rgb = new ColorSpace.Rgb(str, fArr, transferParameters2);
                            }
                        } else {
                            String str2 = rgb3.f8952a;
                            float[] fArr2 = rgb3.f8982h;
                            final Function1 function1 = rgb3.l;
                            DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: tm
                                @Override // java.util.function.DoubleUnaryOperator
                                public final double applyAsDouble(double d) {
                                    int i6 = i5;
                                    Function1 function2 = function1;
                                    switch (i6) {
                                        case 0:
                                            break;
                                    }
                                    return ((Number) function2.invoke(Double.valueOf(d))).doubleValue();
                                }
                            };
                            final Function1 function2 = rgb3.o;
                            final int i6 = 1;
                            rgb2 = new ColorSpace.Rgb(str2, fArr2, fArrA, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: tm
                                @Override // java.util.function.DoubleUnaryOperator
                                public final double applyAsDouble(double d) {
                                    int i7 = i6;
                                    Function1 function3 = function2;
                                    switch (i7) {
                                        case 0:
                                            break;
                                    }
                                    return ((Number) function3.invoke(Double.valueOf(d))).doubleValue();
                                }
                            }, rgb3.f8980e, rgb3.f8981f);
                        }
                    } else {
                        configB = configB;
                        rgb = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                    rgb2 = rgb;
                } else {
                    rgb2 = colorSpaceA;
                    configB = configB;
                }
                return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i2, i3, configB, true, rgb2));
            }
            colorSpace = ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
        }
        rgb2 = colorSpace;
        configB = configB;
        return new AndroidImageBitmap(Bitmap.createBitmap((DisplayMetrics) null, i2, i3, configB, true, rgb2));
    }
}

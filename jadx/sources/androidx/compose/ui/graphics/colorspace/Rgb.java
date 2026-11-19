package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import com.batch.android.s.b;
import defpackage.ct0;
import defpackage.jt0;
import defpackage.kt0;
import defpackage.lr;
import defpackage.md;
import defpackage.pq0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001:\u0001$B]\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014BE\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0004\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0004\b\u0013\u0010\u0018B]\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0019B%\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u001bB-\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u001cB1\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u001dB%\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u001e\u001a\u00020\u0017¢\u0006\u0004\b\u0013\u0010\u001fB-\b\u0016\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001e\u001a\u00020\u0017¢\u0006\u0004\b\u0013\u0010 BA\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001e\u001a\u00020\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010!B!\b\u0010\u0012\u0006\u0010\"\u001a\u00020\u0000\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010#¨\u0006%"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Rgb;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "", "name", "", "primaries", "Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "whitePoint", "transform", "Landroidx/compose/ui/graphics/colorspace/DoubleFunction;", "oetf", "eotf", "", "min", "max", "Landroidx/compose/ui/graphics/colorspace/TransferParameters;", "transferParameters", "", b.a.f24015b, "<init>", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V", "toXYZ", "Lkotlin/Function1;", "", "(Ljava/lang/String;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FF)V", "function", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/TransferParameters;)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V", "gamma", "(Ljava/lang/String;[FD)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;D)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V", "colorSpace", "(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Rgb extends ColorSpace {
    public static final Companion r = new Companion(null);
    public static final ct0 s = new ct0(5);
    public final WhitePoint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f8980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f8981f;
    public final TransferParameters g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f8982h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f8983i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f8984j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DoubleFunction f8985k;
    public final Function1 l;
    public final jt0 m;
    public final DoubleFunction n;
    public final Function1 o;
    public final jt0 p;
    public final boolean q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;", "", "Landroidx/compose/ui/graphics/colorspace/DoubleFunction;", "DoubleIdentity", "Landroidx/compose/ui/graphics/colorspace/DoubleFunction;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final WhitePoint a(Companion companion, float[] fArr) {
            companion.getClass();
            float[] fArr2 = {1.0f, 1.0f, 1.0f};
            ColorSpaceKt.h(fArr, fArr2);
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = f2 + f3 + fArr2[2];
            return new WhitePoint(f2 / f4, f3 / f4);
        }

        public static float b(float[] fArr) {
            if (fArr.length < 6) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = fArr[3];
            float f6 = fArr[4];
            float f7 = fArr[5];
            float fA = pq0.a(f2, f7, (((f4 * f7) + ((f3 * f6) + (f2 * f5))) - (f5 * f6)) - (f3 * f4), 0.5f);
            return fA < Call.Parameters.DEFAULT_CAMERA_ZOOM ? -fA : fA;
        }

        public static float[] c(float[] fArr) {
            float[] fArr2 = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            ColorSpaceKt.h(fArr, fArr2);
            float[] fArr3 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
            ColorSpaceKt.h(fArr, fArr3);
            float[] fArr4 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
            ColorSpaceKt.h(fArr, fArr4);
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = f2 + f3 + fArr2[2];
            float f5 = fArr3[0];
            float f6 = fArr3[1];
            float f7 = f5 + f6 + fArr3[2];
            float f8 = fArr4[0];
            float f9 = fArr4[1];
            float f10 = f8 + f9 + fArr4[2];
            return new float[]{f2 / f4, f3 / f4, f5 / f7, f6 / f7, f8 / f10, f9 / f10};
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:42:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:45:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:47:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:53:0x0214  */
    /* JADX WARN: Code duplicated, block: B:56:0x021d  */
    /* JADX WARN: Code duplicated, block: B:63:0x022f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0247  */
    /* JADX WARN: Code duplicated, block: B:68:0x0261  */
    /* JADX WARN: Code duplicated, block: B:77:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0264 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0261 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, float[] fArr2, DoubleFunction doubleFunction, DoubleFunction doubleFunction2, float f2, float f3, TransferParameters transferParameters, int i2) {
        int i3;
        char c2;
        float f4;
        boolean z;
        float[] fArr3;
        Rgb rgb;
        double d;
        int i4;
        super(str, ColorModel.f8949b, i2, null);
        ColorModel.f8948a.getClass();
        this.d = whitePoint;
        this.f8980e = f2;
        this.f8981f = f3;
        this.g = transferParameters;
        this.f8985k = doubleFunction;
        this.l = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$oetf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                double dDoubleValue = ((Number) obj).doubleValue();
                Rgb rgb2 = this.f8987c;
                return Double.valueOf(RangesKt.b(rgb2.f8985k.b(dDoubleValue), rgb2.f8980e, rgb2.f8981f));
            }
        };
        this.m = new jt0(this, 0);
        this.n = doubleFunction2;
        this.o = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$eotf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                double dDoubleValue = ((Number) obj).doubleValue();
                Rgb rgb2 = this.f8986c;
                return Double.valueOf(rgb2.n.b(RangesKt.b(dDoubleValue, rgb2.f8980e, rgb2.f8981f)));
            }
        };
        this.p = new jt0(this, 1);
        if (fArr.length != 6 && fArr.length != 9) {
            md.n("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
            throw null;
        }
        if (f2 >= f3) {
            ct0.k("Invalid range: min=", f2, ", max=", f3, "; min must be strictly < max");
            throw null;
        }
        r.getClass();
        float[] fArr4 = new float[6];
        if (fArr.length == 9) {
            float f5 = fArr[0];
            float f6 = fArr[1];
            float f7 = f5 + f6 + fArr[2];
            fArr4[0] = f5 / f7;
            fArr4[1] = f6 / f7;
            float f8 = fArr[3];
            float f9 = fArr[4];
            float f10 = f8 + f9 + fArr[5];
            fArr4[2] = f8 / f10;
            fArr4[3] = f9 / f10;
            float f11 = fArr[6];
            float f12 = fArr[7];
            float f13 = f11 + f12 + fArr[8];
            fArr4[4] = f11 / f13;
            fArr4[5] = f12 / f13;
        } else {
            System.arraycopy(fArr, 0, fArr4, 0, 6);
        }
        this.f8982h = fArr4;
        if (fArr2 == null) {
            float f14 = fArr4[0];
            float f15 = fArr4[1];
            float f16 = fArr4[2];
            float f17 = fArr4[3];
            float f18 = fArr4[4];
            float f19 = fArr4[5];
            i3 = 0;
            float f20 = whitePoint.f8993a;
            c2 = 1;
            float f21 = whitePoint.f8994b;
            float f22 = 1.0f - f14;
            float f23 = f22 / f15;
            float f24 = 1.0f - f16;
            float f25 = 1.0f - f18;
            float f26 = (1.0f - f20) / f21;
            float f27 = f14 / f15;
            float f28 = (f16 / f17) - f27;
            float f29 = (f20 / f21) - f27;
            float f30 = (f24 / f17) - f23;
            float f31 = (f18 / f19) - f27;
            float f32 = (((f26 - f23) * f28) - (f29 * f30)) / ((((f25 / f19) - f23) * f28) - (f30 * f31));
            float f33 = (f29 - (f31 * f32)) / f28;
            float f34 = (1.0f - f33) - f32;
            float f35 = f34 / f15;
            float f36 = f33 / f17;
            float f37 = f32 / f19;
            this.f8983i = new float[]{f14 * f35, f34, (f22 - f15) * f35, f16 * f36, f33, (f24 - f17) * f36, f18 * f37, f32, (f25 - f19) * f37};
        } else {
            i3 = 0;
            c2 = 1;
            if (fArr2.length != 9) {
                md.g(fArr2.length, "Transform must have 9 entries! Has ");
                throw null;
            }
            this.f8983i = fArr2;
        }
        this.f8984j = ColorSpaceKt.e(this.f8983i);
        if (Companion.b(fArr4) / Companion.b(ColorSpaces.f8956b) > 0.9f) {
            float[] fArr5 = ColorSpaces.f8955a;
            float f38 = fArr4[i3];
            float f39 = fArr5[i3];
            float f40 = fArr4[c2];
            float f41 = fArr5[c2];
            float f42 = fArr4[2];
            float f43 = fArr5[2];
            float f44 = fArr4[3];
            float f45 = fArr5[3];
            float f46 = fArr4[4];
            float f47 = fArr5[4];
            float f48 = fArr4[5];
            float f49 = fArr5[5];
            f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            float[] fArr6 = new float[6];
            fArr6[i3] = f38 - f39;
            fArr6[c2] = f40 - f41;
            fArr6[2] = f42 - f43;
            fArr6[3] = f44 - f45;
            fArr6[4] = f46 - f47;
            fArr6[5] = f48 - f49;
            float f50 = fArr6[i3];
            float f51 = fArr6[c2];
            if (((f41 - f49) * f50) - ((f39 - f47) * f51) >= Call.Parameters.DEFAULT_CAMERA_ZOOM && ((f39 - f43) * f51) - ((f41 - f45) * f50) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f52 = fArr6[2];
                float f53 = fArr6[3];
                if (((f45 - f41) * f52) - ((f43 - f39) * f53) >= Call.Parameters.DEFAULT_CAMERA_ZOOM && ((f43 - f47) * f53) - ((f45 - f49) * f52) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float f54 = fArr6[4];
                    float f55 = fArr6[5];
                    if (((f49 - f45) * f54) - ((f47 - f43) * f55) < Call.Parameters.DEFAULT_CAMERA_ZOOM || ((f47 - f39) * f55) - ((f49 - f41) * f54) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    }
                }
            }
            if (i2 != 0) {
                fArr3 = ColorSpaces.f8955a;
                if (fArr4 == fArr3) {
                    i4 = i3;
                    while (true) {
                        if (i4 < 6) {
                            if (Float.compare(fArr4[i4], fArr3[i4]) != 0 || Math.abs(fArr4[i4] - fArr3[i4]) <= 0.001f) {
                                i4++;
                            }
                        } else if (ColorSpaceKt.c(whitePoint, Illuminant.d)) {
                            rgb = ColorSpaces.f8958e;
                            d = 0.0d;
                            while (true) {
                                if (d <= 1.0d) {
                                    z = c2;
                                } else if (Math.abs(doubleFunction.b(d) - rgb.f8985k.b(d)) > 0.001d) {
                                }
                                d += 0.00392156862745098d;
                            }
                        }
                    }
                } else if (ColorSpaceKt.c(whitePoint, Illuminant.d) && f2 == f4 && f3 == 1.0f) {
                    rgb = ColorSpaces.f8958e;
                    d = 0.0d;
                    while (true) {
                        if (d <= 1.0d) {
                            z = c2;
                        } else if (Math.abs(doubleFunction.b(d) - rgb.f8985k.b(d)) > 0.001d && Math.abs(doubleFunction2.b(d) - rgb.n.b(d)) <= 0.001d) {
                            d += 0.00392156862745098d;
                        }
                    }
                }
                z = i3;
            } else {
                z = c2;
            }
            this.q = z;
        }
        f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i5 = (f2 > f4 ? 1 : (f2 == f4 ? 0 : -1));
        if (i2 != 0) {
            fArr3 = ColorSpaces.f8955a;
            if (fArr4 == fArr3) {
                i4 = i3;
                while (true) {
                    if (i4 < 6) {
                        if (Float.compare(fArr4[i4], fArr3[i4]) != 0) {
                        }
                        i4++;
                    } else if (ColorSpaceKt.c(whitePoint, Illuminant.d)) {
                        rgb = ColorSpaces.f8958e;
                        d = 0.0d;
                        while (true) {
                            if (d <= 1.0d) {
                                z = c2;
                            } else if (Math.abs(doubleFunction.b(d) - rgb.f8985k.b(d)) > 0.001d) {
                            }
                            d += 0.00392156862745098d;
                        }
                    }
                }
            } else if (ColorSpaceKt.c(whitePoint, Illuminant.d)) {
                rgb = ColorSpaces.f8958e;
                d = 0.0d;
                while (true) {
                    if (d <= 1.0d) {
                        z = c2;
                    } else if (Math.abs(doubleFunction.b(d) - rgb.f8985k.b(d)) > 0.001d) {
                    }
                    d += 0.00392156862745098d;
                }
            }
            z = i3;
        } else {
            z = c2;
        }
        this.q = z;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] a(float[] fArr) {
        ColorSpaceKt.h(this.f8984j, fArr);
        if (fArr.length < 3) {
            return fArr;
        }
        double d = fArr[0];
        jt0 jt0Var = this.m;
        fArr[0] = (float) jt0Var.b(d);
        fArr[1] = (float) jt0Var.b(fArr[1]);
        fArr[2] = (float) jt0Var.b(fArr[2]);
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i2) {
        return this.f8981f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float c(int i2) {
        return this.f8980e;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getQ() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long e(float f2, float f3, float f4) {
        double d = f2;
        jt0 jt0Var = this.p;
        float fB = (float) jt0Var.b(d);
        float fB2 = (float) jt0Var.b(f3);
        float fB3 = (float) jt0Var.b(f4);
        float[] fArr = this.f8983i;
        if (fArr.length < 9) {
            return 0L;
        }
        return (((long) Float.floatToRawIntBits((fArr[6] * fB3) + ((fArr[3] * fB2) + (fArr[0] * fB)))) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits((fArr[7] * fB3) + (fArr[4] * fB2) + (fArr[1] * fB))));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Rgb.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.f8980e, this.f8980e) != 0 || Float.compare(rgb.f8981f, this.f8981f) != 0 || !Intrinsics.c(this.d, rgb.d) || !Arrays.equals(this.f8982h, rgb.f8982h)) {
            return false;
        }
        TransferParameters transferParameters = rgb.g;
        TransferParameters transferParameters2 = this.g;
        if (transferParameters2 != null) {
            return Intrinsics.c(transferParameters2, transferParameters);
        }
        if (transferParameters == null) {
            return true;
        }
        if (Intrinsics.c(this.f8985k, rgb.f8985k)) {
            return Intrinsics.c(this.n, rgb.n);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] f(float[] fArr) {
        if (fArr.length < 3) {
            return fArr;
        }
        double d = fArr[0];
        jt0 jt0Var = this.p;
        fArr[0] = (float) jt0Var.b(d);
        fArr[1] = (float) jt0Var.b(fArr[1]);
        fArr[2] = (float) jt0Var.b(fArr[2]);
        ColorSpaceKt.h(this.f8983i, fArr);
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float g(float f2, float f3, float f4) {
        double d = f2;
        jt0 jt0Var = this.p;
        float fB = (float) jt0Var.b(d);
        float fB2 = (float) jt0Var.b(f3);
        float fB3 = (float) jt0Var.b(f4);
        float[] fArr = this.f8983i;
        return (fArr[8] * fB3) + (fArr[5] * fB2) + (fArr[2] * fB);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long h(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        float[] fArr = this.f8984j;
        float f6 = (fArr[6] * f4) + (fArr[3] * f3) + (fArr[0] * f2);
        float f7 = (fArr[7] * f4) + (fArr[4] * f3) + (fArr[1] * f2);
        float f8 = (fArr[8] * f4) + (fArr[5] * f3) + (fArr[2] * f2);
        jt0 jt0Var = this.m;
        return ColorKt.a((float) jt0Var.b(f6), (float) jt0Var.b(f7), (float) jt0Var.b(f8), f5, colorSpace);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final int hashCode() {
        int iHashCode = (Arrays.hashCode(this.f8982h) + ((this.d.hashCode() + (super.hashCode() * 31)) * 31)) * 31;
        float f2 = this.f8980e;
        int iFloatToIntBits = (iHashCode + (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : Float.floatToIntBits(f2))) * 31;
        float f3 = this.f8981f;
        int iFloatToIntBits2 = (iFloatToIntBits + (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : Float.floatToIntBits(f3))) * 31;
        TransferParameters transferParameters = this.g;
        int iHashCode2 = iFloatToIntBits2 + (transferParameters != null ? transferParameters.hashCode() : 0);
        if (transferParameters != null) {
            return iHashCode2;
        }
        return this.n.hashCode() + ((this.f8985k.hashCode() + (iHashCode2 * 31)) * 31);
    }

    public Rgb(Rgb rgb, float[] fArr, WhitePoint whitePoint) {
        this(rgb.f8952a, rgb.f8982h, whitePoint, fArr, rgb.f8985k, rgb.n, rgb.f8980e, rgb.f8981f, rgb.g, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, Function1<? super Double, Double> function1, Function1<? super Double, Double> function2) {
        Companion companion = r;
        companion.getClass();
        this(str, Companion.c(fArr), Companion.a(companion, fArr), null, new lr(function1, 3), new lr(function2, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, null, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, Function1<? super Double, Double> function1, Function1<? super Double, Double> function2, float f2, float f3) {
        this(str, fArr, whitePoint, null, new lr(function1, 5), new lr(function2, 6), f2, f3, null, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, TransferParameters transferParameters) {
        Companion companion = r;
        companion.getClass();
        this(str, Companion.c(fArr), Companion.a(companion, fArr), transferParameters, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, TransferParameters transferParameters) {
        this(str, fArr, whitePoint, transferParameters, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, final TransferParameters transferParameters, int i2) {
        double d;
        DoubleFunction doubleFunction;
        DoubleFunction doubleFunction2;
        r.getClass();
        double d2 = transferParameters.f8988a;
        final int i3 = 0;
        final int i4 = 1;
        boolean z = d2 == -3.0d;
        double d3 = transferParameters.g;
        double d4 = transferParameters.f8992f;
        if (z) {
            d = -3.0d;
            final int i5 = 4;
            doubleFunction = new DoubleFunction() { // from class: lt0
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double b(double d5) {
                    int i6 = i5;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i6) {
                        case 0:
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            return ColorSpaces.c(transferParameters2, d5);
                        case 2:
                            double d6 = transferParameters2.f8989b;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                        case 3:
                            double d7 = transferParameters2.f8989b;
                            double d8 = transferParameters2.f8990c;
                            double d9 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                        case 4:
                            return ColorSpaces.b(transferParameters2, d5);
                        case 5:
                            return ColorSpaces.d(transferParameters2, d5);
                        case 6:
                            double d10 = transferParameters2.f8989b;
                            double d11 = transferParameters2.f8990c;
                            double d12 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = transferParameters2.f8989b;
                            double d14 = transferParameters2.f8990c;
                            double d15 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                    }
                }
            };
        } else {
            d = -3.0d;
            if (d2 == -2.0d) {
                final int i6 = 5;
                doubleFunction = new DoubleFunction() { // from class: lt0
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double b(double d5) {
                        int i7 = i6;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i7) {
                            case 0:
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                return ColorSpaces.c(transferParameters2, d5);
                            case 2:
                                double d6 = transferParameters2.f8989b;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                            case 3:
                                double d7 = transferParameters2.f8989b;
                                double d8 = transferParameters2.f8990c;
                                double d9 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                            case 4:
                                return ColorSpaces.b(transferParameters2, d5);
                            case 5:
                                return ColorSpaces.d(transferParameters2, d5);
                            case 6:
                                double d10 = transferParameters2.f8989b;
                                double d11 = transferParameters2.f8990c;
                                double d12 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = transferParameters2.f8989b;
                                double d14 = transferParameters2.f8990c;
                                double d15 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                        }
                    }
                };
            } else if (d4 == 0.0d && d3 == 0.0d) {
                final int i7 = 6;
                doubleFunction = new DoubleFunction() { // from class: lt0
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double b(double d5) {
                        int i8 = i7;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i8) {
                            case 0:
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                return ColorSpaces.c(transferParameters2, d5);
                            case 2:
                                double d6 = transferParameters2.f8989b;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                            case 3:
                                double d7 = transferParameters2.f8989b;
                                double d8 = transferParameters2.f8990c;
                                double d9 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                            case 4:
                                return ColorSpaces.b(transferParameters2, d5);
                            case 5:
                                return ColorSpaces.d(transferParameters2, d5);
                            case 6:
                                double d10 = transferParameters2.f8989b;
                                double d11 = transferParameters2.f8990c;
                                double d12 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = transferParameters2.f8989b;
                                double d14 = transferParameters2.f8990c;
                                double d15 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                        }
                    }
                };
            } else {
                final int i8 = 7;
                doubleFunction = new DoubleFunction() { // from class: lt0
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double b(double d5) {
                        int i9 = i8;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i9) {
                            case 0:
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                return ColorSpaces.c(transferParameters2, d5);
                            case 2:
                                double d6 = transferParameters2.f8989b;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                            case 3:
                                double d7 = transferParameters2.f8989b;
                                double d8 = transferParameters2.f8990c;
                                double d9 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                            case 4:
                                return ColorSpaces.b(transferParameters2, d5);
                            case 5:
                                return ColorSpaces.d(transferParameters2, d5);
                            case 6:
                                double d10 = transferParameters2.f8989b;
                                double d11 = transferParameters2.f8990c;
                                double d12 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                            default:
                                double d13 = transferParameters2.f8989b;
                                double d14 = transferParameters2.f8990c;
                                double d15 = transferParameters2.d;
                                return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                        }
                    }
                };
            }
        }
        if (d2 == d) {
            doubleFunction2 = new DoubleFunction() { // from class: lt0
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double b(double d5) {
                    int i9 = i3;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i9) {
                        case 0:
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            return ColorSpaces.c(transferParameters2, d5);
                        case 2:
                            double d6 = transferParameters2.f8989b;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                        case 3:
                            double d7 = transferParameters2.f8989b;
                            double d8 = transferParameters2.f8990c;
                            double d9 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                        case 4:
                            return ColorSpaces.b(transferParameters2, d5);
                        case 5:
                            return ColorSpaces.d(transferParameters2, d5);
                        case 6:
                            double d10 = transferParameters2.f8989b;
                            double d11 = transferParameters2.f8990c;
                            double d12 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = transferParameters2.f8989b;
                            double d14 = transferParameters2.f8990c;
                            double d15 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                    }
                }
            };
        } else if (d2 == -2.0d) {
            doubleFunction2 = new DoubleFunction() { // from class: lt0
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double b(double d5) {
                    int i9 = i4;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i9) {
                        case 0:
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            return ColorSpaces.c(transferParameters2, d5);
                        case 2:
                            double d6 = transferParameters2.f8989b;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                        case 3:
                            double d7 = transferParameters2.f8989b;
                            double d8 = transferParameters2.f8990c;
                            double d9 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                        case 4:
                            return ColorSpaces.b(transferParameters2, d5);
                        case 5:
                            return ColorSpaces.d(transferParameters2, d5);
                        case 6:
                            double d10 = transferParameters2.f8989b;
                            double d11 = transferParameters2.f8990c;
                            double d12 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = transferParameters2.f8989b;
                            double d14 = transferParameters2.f8990c;
                            double d15 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                    }
                }
            };
        } else if (d4 == 0.0d && d3 == 0.0d) {
            final int i9 = 2;
            doubleFunction2 = new DoubleFunction() { // from class: lt0
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double b(double d5) {
                    int i10 = i9;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i10) {
                        case 0:
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            return ColorSpaces.c(transferParameters2, d5);
                        case 2:
                            double d6 = transferParameters2.f8989b;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                        case 3:
                            double d7 = transferParameters2.f8989b;
                            double d8 = transferParameters2.f8990c;
                            double d9 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                        case 4:
                            return ColorSpaces.b(transferParameters2, d5);
                        case 5:
                            return ColorSpaces.d(transferParameters2, d5);
                        case 6:
                            double d10 = transferParameters2.f8989b;
                            double d11 = transferParameters2.f8990c;
                            double d12 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = transferParameters2.f8989b;
                            double d14 = transferParameters2.f8990c;
                            double d15 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                    }
                }
            };
        } else {
            final int i10 = 3;
            doubleFunction2 = new DoubleFunction() { // from class: lt0
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double b(double d5) {
                    int i11 = i10;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i11) {
                        case 0:
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            return ColorSpaces.c(transferParameters2, d5);
                        case 2:
                            double d6 = transferParameters2.f8989b;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d6 * d5) + transferParameters2.f8990c, transferParameters2.f8988a) : transferParameters2.d * d5;
                        case 3:
                            double d7 = transferParameters2.f8989b;
                            double d8 = transferParameters2.f8990c;
                            double d9 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e ? Math.pow((d7 * d5) + d8, transferParameters2.f8988a) + transferParameters2.f8992f : (d9 * d5) + transferParameters2.g;
                        case 4:
                            return ColorSpaces.b(transferParameters2, d5);
                        case 5:
                            return ColorSpaces.d(transferParameters2, d5);
                        case 6:
                            double d10 = transferParameters2.f8989b;
                            double d11 = transferParameters2.f8990c;
                            double d12 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d12 ? (Math.pow(d5, 1.0d / transferParameters2.f8988a) - d11) / d10 : d5 / d12;
                        default:
                            double d13 = transferParameters2.f8989b;
                            double d14 = transferParameters2.f8990c;
                            double d15 = transferParameters2.d;
                            return d5 >= transferParameters2.f8991e * d15 ? (Math.pow(d5 - transferParameters2.f8992f, 1.0d / transferParameters2.f8988a) - d14) / d13 : (d5 - transferParameters2.g) / d15;
                    }
                }
            };
        }
        this(str, fArr, whitePoint, null, doubleFunction, doubleFunction2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, transferParameters, i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, double d) {
        Companion companion = r;
        companion.getClass();
        this(str, Companion.c(fArr), Companion.a(companion, fArr), d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, double d) {
        this(str, fArr, whitePoint, d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, double d, float f2, float f3, int i2) {
        DoubleFunction doubleFunction = s;
        this(str, fArr, whitePoint, null, d == 1.0d ? doubleFunction : new kt0(d, 0), d != 1.0d ? new kt0(d, 1) : doubleFunction, f2, f3, new TransferParameters(d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 96, null), i2);
    }
}

package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import com.batch.android.s.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Lab;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "", "name", "", b.a.f24015b, "<init>", "(Ljava/lang/String;I)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Lab extends ColorSpace {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Lab$Companion;", "", "", "A", "F", NBSSpanMetricUnit.Byte, "C", "D", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lab(String str, int i2) {
        super(str, ColorModel.d, i2, null);
        ColorModel.f8948a.getClass();
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] a(float[] fArr) {
        float f2 = fArr[0];
        float[] fArr2 = Illuminant.f8974e;
        float f3 = f2 / fArr2[0];
        float f4 = fArr[1] / fArr2[1];
        float f5 = fArr[2] / fArr2[2];
        float fCbrt = f3 > 0.008856452f ? (float) Math.cbrt(f3) : (f3 * 7.787037f) + 0.13793103f;
        float fCbrt2 = f4 > 0.008856452f ? (float) Math.cbrt(f4) : (f4 * 7.787037f) + 0.13793103f;
        float fCbrt3 = f5 > 0.008856452f ? (float) Math.cbrt(f5) : (f5 * 7.787037f) + 0.13793103f;
        float f6 = (116.0f * fCbrt2) - 16.0f;
        float f7 = (fCbrt - fCbrt2) * 500.0f;
        float f8 = (fCbrt2 - fCbrt3) * 200.0f;
        if (f6 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f6 = 0.0f;
        }
        if (f6 > 100.0f) {
            f6 = 100.0f;
        }
        fArr[0] = f6;
        if (f7 < -128.0f) {
            f7 = -128.0f;
        }
        if (f7 > 128.0f) {
            f7 = 128.0f;
        }
        fArr[1] = f7;
        if (f8 < -128.0f) {
            f8 = -128.0f;
        }
        fArr[2] = f8 <= 128.0f ? f8 : 128.0f;
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i2) {
        return i2 == 0 ? 100.0f : 128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float c(int i2) {
        if (i2 == 0) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return -128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long e(float f2, float f3, float f4) {
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        if (f2 > 100.0f) {
            f2 = 100.0f;
        }
        if (f3 < -128.0f) {
            f3 = -128.0f;
        }
        if (f3 > 128.0f) {
            f3 = 128.0f;
        }
        float f5 = (f2 + 16.0f) / 116.0f;
        float f6 = (f3 * 0.002f) + f5;
        float f7 = f6 > 0.20689656f ? f6 * f6 * f6 : (f6 - 0.13793103f) * 0.12841855f;
        float f8 = f5 > 0.20689656f ? f5 * f5 * f5 : (f5 - 0.13793103f) * 0.12841855f;
        WhitePoint whitePoint = Illuminant.f8971a;
        float[] fArr = Illuminant.f8974e;
        return (((long) Float.floatToRawIntBits(f7 * fArr[0])) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(f8 * fArr[1])));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] f(float[] fArr) {
        float f2 = fArr[0];
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        if (f2 > 100.0f) {
            f2 = 100.0f;
        }
        fArr[0] = f2;
        float f3 = fArr[1];
        if (f3 < -128.0f) {
            f3 = -128.0f;
        }
        if (f3 > 128.0f) {
            f3 = 128.0f;
        }
        fArr[1] = f3;
        float f4 = fArr[2];
        float f5 = f4 >= -128.0f ? f4 : -128.0f;
        float f6 = f5 <= 128.0f ? f5 : 128.0f;
        fArr[2] = f6;
        float f7 = (f2 + 16.0f) / 116.0f;
        float f8 = (f3 * 0.002f) + f7;
        float f9 = f7 - (f6 * 0.005f);
        float f10 = f8 > 0.20689656f ? f8 * f8 * f8 : (f8 - 0.13793103f) * 0.12841855f;
        float f11 = f7 > 0.20689656f ? f7 * f7 * f7 : (f7 - 0.13793103f) * 0.12841855f;
        float f12 = f9 > 0.20689656f ? f9 * f9 * f9 : (f9 - 0.13793103f) * 0.12841855f;
        float[] fArr2 = Illuminant.f8974e;
        fArr[0] = f10 * fArr2[0];
        fArr[1] = f11 * fArr2[1];
        fArr[2] = f12 * fArr2[2];
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float g(float f2, float f3, float f4) {
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        if (f2 > 100.0f) {
            f2 = 100.0f;
        }
        if (f4 < -128.0f) {
            f4 = -128.0f;
        }
        if (f4 > 128.0f) {
            f4 = 128.0f;
        }
        float f5 = ((f2 + 16.0f) / 116.0f) - (f4 * 0.005f);
        float f6 = f5 > 0.20689656f ? f5 * f5 * f5 : 0.12841855f * (f5 - 0.13793103f);
        WhitePoint whitePoint = Illuminant.f8971a;
        return f6 * Illuminant.f8974e[2];
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long h(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        WhitePoint whitePoint = Illuminant.f8971a;
        float[] fArr = Illuminant.f8974e;
        float f6 = f2 / fArr[0];
        float f7 = f3 / fArr[1];
        float f8 = f4 / fArr[2];
        float fCbrt = f6 > 0.008856452f ? (float) Math.cbrt(f6) : (f6 * 7.787037f) + 0.13793103f;
        float fCbrt2 = f7 > 0.008856452f ? (float) Math.cbrt(f7) : (f7 * 7.787037f) + 0.13793103f;
        float fCbrt3 = f8 > 0.008856452f ? (float) Math.cbrt(f8) : (f8 * 7.787037f) + 0.13793103f;
        float f9 = (116.0f * fCbrt2) - 16.0f;
        float f10 = (fCbrt - fCbrt2) * 500.0f;
        float f11 = (fCbrt2 - fCbrt3) * 200.0f;
        if (f9 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f9 = 0.0f;
        }
        if (f9 > 100.0f) {
            f9 = 100.0f;
        }
        if (f10 < -128.0f) {
            f10 = -128.0f;
        }
        if (f10 > 128.0f) {
            f10 = 128.0f;
        }
        if (f11 < -128.0f) {
            f11 = -128.0f;
        }
        return ColorKt.a(f9, f10, f11 <= 128.0f ? f11 : 128.0f, f5, colorSpace);
    }
}

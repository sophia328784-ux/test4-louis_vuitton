package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import com.batch.android.s.b;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Xyz;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "", "name", "", b.a.f24015b, "<init>", "(Ljava/lang/String;I)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Xyz extends ColorSpace {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Xyz(String str, int i2) {
        super(str, ColorModel.f8950c, i2, null);
        ColorModel.f8948a.getClass();
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] a(float[] fArr) {
        float f2 = fArr[0];
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 > 2.0f) {
            f2 = 2.0f;
        }
        fArr[0] = f2;
        float f3 = fArr[1];
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        if (f3 > 2.0f) {
            f3 = 2.0f;
        }
        fArr[1] = f3;
        float f4 = fArr[2];
        float f5 = f4 >= -2.0f ? f4 : -2.0f;
        fArr[2] = f5 <= 2.0f ? f5 : 2.0f;
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i2) {
        return 2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float c(int i2) {
        return -2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long e(float f2, float f3, float f4) {
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 > 2.0f) {
            f2 = 2.0f;
        }
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        return (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3 <= 2.0f ? f3 : 2.0f)) & BodyPartID.bodyIdMax);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float[] f(float[] fArr) {
        float f2 = fArr[0];
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 > 2.0f) {
            f2 = 2.0f;
        }
        fArr[0] = f2;
        float f3 = fArr[1];
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        if (f3 > 2.0f) {
            f3 = 2.0f;
        }
        fArr[1] = f3;
        float f4 = fArr[2];
        float f5 = f4 >= -2.0f ? f4 : -2.0f;
        fArr[2] = f5 <= 2.0f ? f5 : 2.0f;
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float g(float f2, float f3, float f4) {
        if (f4 < -2.0f) {
            f4 = -2.0f;
        }
        if (f4 > 2.0f) {
            return 2.0f;
        }
        return f4;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long h(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 > 2.0f) {
            f2 = 2.0f;
        }
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        if (f3 > 2.0f) {
            f3 = 2.0f;
        }
        if (f4 < -2.0f) {
            f4 = -2.0f;
        }
        return ColorKt.a(f2, f3, f4 <= 2.0f ? f4 : 2.0f, f5, colorSpace);
    }
}

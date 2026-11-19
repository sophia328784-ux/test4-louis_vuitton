package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Metadata;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class NestedScrollInteropConnectionKt {
    public static final int a(long j2) {
        int i2 = Math.abs(Float.intBitsToFloat((int) (j2 >> 32))) >= 0.5f ? 1 : 0;
        return Math.abs(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))) >= 0.5f ? i2 | 2 : i2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004c A[PHI: r14
      0x004c: PHI (r14v5 float) = (r14v4 float), (r14v6 float) binds: [B:16:0x0059, B:13:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x0073 A[PHI: r11
      0x0073: PHI (r11v6 float) = (r11v3 float), (r11v7 float) binds: [B:24:0x0080, B:21:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
    public static final long b(int i2, long j2, int[] iArr, int i3) {
        float f2;
        float fIntBitsToFloat;
        float f3;
        float fIntBitsToFloat2;
        float fIntBitsToFloat3 = Math.abs(iArr[0]) == 0 ? 0.0f : Float.intBitsToFloat((int) (j2 >> 32)) - (i2 * (-1.0f));
        float fIntBitsToFloat4 = Math.abs(iArr[1]) == 0 ? 0.0f : Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - (i3 * (-1.0f));
        int i4 = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i4) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = (iArr[0] * (-1.0f)) + fIntBitsToFloat3;
            fIntBitsToFloat = Float.intBitsToFloat(i4);
            if (f2 > fIntBitsToFloat) {
                f2 = fIntBitsToFloat;
            }
        } else {
            f2 = (iArr[0] * (-1.0f)) + fIntBitsToFloat3;
            fIntBitsToFloat = Float.intBitsToFloat(i4);
            if (f2 < fIntBitsToFloat) {
                f2 = fIntBitsToFloat;
            }
        }
        int i5 = (int) (j2 & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat(i5) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f3 = (iArr[1] * (-1.0f)) + fIntBitsToFloat4;
            fIntBitsToFloat2 = Float.intBitsToFloat(i5);
            if (f3 > fIntBitsToFloat2) {
                f3 = fIntBitsToFloat2;
            }
        } else {
            f3 = (iArr[1] * (-1.0f)) + fIntBitsToFloat4;
            fIntBitsToFloat2 = Float.intBitsToFloat(i5);
            if (f3 < fIntBitsToFloat2) {
                f3 = fIntBitsToFloat2;
            }
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public static final int c(int i2) {
        NestedScrollSource.f9260a.getClass();
        return (i2 == NestedScrollSource.f9261b ? 1 : 0) ^ 1;
    }

    public static final int d(float f2) {
        return MathKt.c(f2) * (-1);
    }

    public static final NestedScrollInteropConnection e(Composer composer) {
        View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.k(CompositionLocalsKt.u);
        boolean zK = composer.K(view) | composer.K(viewConfiguration);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new NestedScrollInteropConnection(view, viewConfiguration.c());
            composer.q(objX);
        }
        return (NestedScrollInteropConnection) objX;
    }
}

package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BorderKt {
    public static final Modifier a(Modifier modifier, float f2, long j2, Shape shape) {
        return b(modifier, f2, new SolidColor(j2, null), shape);
    }

    public static final Modifier b(Modifier modifier, float f2, Brush brush, Shape shape) {
        return modifier.o(new BorderModifierNodeElement(f2, brush, shape, null));
    }

    public static final long c(float f2, long j2) {
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (j2 >> 32)) - f2);
        float fMax2 = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - f2);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & BodyPartID.bodyIdMax);
        CornerRadius.Companion companion = CornerRadius.f8802a;
        return jFloatToRawIntBits;
    }
}

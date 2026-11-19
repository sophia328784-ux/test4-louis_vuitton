package androidx.compose.foundation.layout;

import android.graphics.Insets;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1", "Landroidx/compose/foundation/layout/SideCalculator;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SideCalculator$Companion$RightSideCalculator$1 implements SideCalculator {
    @Override // androidx.compose.foundation.layout.SideCalculator
    public final float b(float f2, float f3) {
        return -f2;
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final Insets c(Insets insets, int i2) {
        return Insets.of(insets.left, insets.top, i2, insets.bottom);
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final int e(Insets insets) {
        return insets.right;
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final long f(float f2, long j2) {
        return VelocityKt.a(Velocity.b(j2) + f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final long g(long j2) {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 >> 32)))) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }
}

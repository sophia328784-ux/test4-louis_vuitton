package androidx.compose.foundation.layout;

import android.graphics.Insets;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1", "Landroidx/compose/foundation/layout/SideCalculator;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SideCalculator$Companion$BottomSideCalculator$1 implements SideCalculator {
    @Override // androidx.compose.foundation.layout.SideCalculator
    public final float b(float f2, float f3) {
        return -f3;
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final Insets c(Insets insets, int i2) {
        return Insets.of(insets.left, insets.top, insets.right, i2);
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final int e(Insets insets) {
        return insets.bottom;
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final long f(float f2, long j2) {
        return VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Velocity.c(j2) + f2);
    }

    @Override // androidx.compose.foundation.layout.SideCalculator
    public final long g(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(fIntBitsToFloat)));
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }
}

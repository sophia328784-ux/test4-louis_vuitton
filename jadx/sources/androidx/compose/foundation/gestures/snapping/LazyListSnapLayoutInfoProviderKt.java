package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyListSnapLayoutInfoProviderKt {
    public static final int a(float f2, Density density) {
        if (Math.abs(f2) < density.u1(SnapFlingBehaviorKt.f4867a)) {
            FinalSnappingItem.f4845a.getClass();
            return 0;
        }
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            FinalSnappingItem.f4845a.getClass();
            return FinalSnappingItem.f4846b;
        }
        FinalSnappingItem.f4845a.getClass();
        return FinalSnappingItem.f4847c;
    }

    public static final int b(LazyListLayoutInfo lazyListLayoutInfo) {
        return (int) (lazyListLayoutInfo.getP() == Orientation.Vertical ? lazyListLayoutInfo.a() & BodyPartID.bodyIdMax : lazyListLayoutInfo.a() >> 32);
    }

    public static final TargetedFlingBehavior c(LazyListState lazyListState, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(lazyListState)) || (i2 & 6) == 4;
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListState, SnapPosition.Center.f4876a);
            composer.q(objX);
        }
        return SnapFlingBehaviorKt.e((SnapLayoutInfoProvider) objX, composer);
    }
}

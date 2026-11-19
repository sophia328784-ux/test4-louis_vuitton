package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.pager.PagerState;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerSnapLayoutInfoProviderKt {
    public static final float a(PagerState pagerState) {
        return pagerState.n().getF5742e() == Orientation.Horizontal ? Float.intBitsToFloat((int) (pagerState.s() >> 32)) : Float.intBitsToFloat((int) (pagerState.s() & BodyPartID.bodyIdMax));
    }

    public static final boolean b(PagerState pagerState, float f2) {
        boolean f5744h = pagerState.n().getF5744h();
        boolean z = (pagerState.t() ? -f2 : a(pagerState)) > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        return (z && f5744h) || !(z || f5744h);
    }
}

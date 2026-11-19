package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/foundation/pager/PagerState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "<init>", "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultPagerNestedScrollConnection implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PagerState f5690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Orientation f5691c;

    public DefaultPagerNestedScrollConnection(PagerState pagerState, Orientation orientation) {
        this.f5690b = pagerState;
        this.f5691c = orientation;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        NestedScrollSource.f9260a.getClass();
        if (i2 == NestedScrollSource.f9262c) {
            if (Float.intBitsToFloat((int) (this.f5691c == Orientation.Horizontal ? j3 >> 32 : BodyPartID.bodyIdMax & j3)) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                throw new CancellationException("Scroll cancelled");
            }
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        return new Velocity(this.f5691c == Orientation.Vertical ? Velocity.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, j3, 2) : Velocity.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, j3, 1));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        NestedScrollSource.f9260a.getClass();
        if (i2 == NestedScrollSource.f9261b) {
            PagerState pagerState = this.f5690b;
            float fL = pagerState.l();
            ScrollableState scrollableState = pagerState.f5765k;
            if (Math.abs(fL) > 1.0E-6d) {
                Orientation orientation = Orientation.Horizontal;
                Orientation orientation2 = this.f5691c;
                if (Math.abs(Float.intBitsToFloat((int) (orientation2 == orientation ? j2 >> 32 : j2 & BodyPartID.bodyIdMax))) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    PagerLayoutInfo pagerLayoutInfoN = pagerState.n();
                    float fL2 = pagerState.l() * pagerState.p();
                    float f5741c = ((pagerLayoutInfoN.getF5741c() + pagerLayoutInfoN.getF5740b()) * (-Math.signum(pagerState.l()))) + fL2;
                    if (pagerState.l() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f5741c = fL2;
                        fL2 = f5741c;
                    }
                    float fC = RangesKt.c(Float.intBitsToFloat((int) (orientation2 == orientation ? j2 >> 32 : j2 & BodyPartID.bodyIdMax)), fL2, f5741c);
                    float fE = (orientation2 == orientation && pagerLayoutInfoN.getF5744h()) ? scrollableState.e(fC) : -scrollableState.e(-fC);
                    float fIntBitsToFloat = orientation2 == orientation ? fE : Float.intBitsToFloat((int) (j2 >> 32));
                    if (orientation2 != Orientation.Vertical) {
                        fE = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
                    }
                    Offset.Companion companion = Offset.f8806b;
                    return (((long) Float.floatToRawIntBits(fE)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32);
                }
            }
        }
        Offset.f8806b.getClass();
        return 0L;
    }
}

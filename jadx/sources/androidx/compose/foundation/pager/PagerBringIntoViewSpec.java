package androidx.compose.foundation.pager;

import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "Landroidx/compose/foundation/pager/PagerState;", "pagerState", "defaultBringIntoViewSpec", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "<init>", "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PagerBringIntoViewSpec implements BringIntoViewSpec {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PagerState f5713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BringIntoViewSpec f5714c;
    public final LayoutDirection d;

    public PagerBringIntoViewSpec(PagerState pagerState, BringIntoViewSpec bringIntoViewSpec, LayoutDirection layoutDirection) {
        this.f5713b = pagerState;
        this.f5714c = bringIntoViewSpec;
        this.d = layoutDirection;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0012  */
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final float a(float f2, float f3, float f4) {
        int iQ;
        int iQ2;
        int iQ3;
        float fA = this.f5714c.a(f2, f3, f4);
        boolean z = false;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f5 = f2 + f3;
            Rect rect = VisibilityThresholdsKt.f4089a;
            if (f5 <= 1.0f) {
                z = true;
            }
        } else if (f2 + f3 > f4) {
            z = true;
        }
        float fAbs = Math.abs(fA);
        LayoutDirection layoutDirection = this.d;
        PagerState pagerState = this.f5713b;
        if (fAbs != Call.Parameters.DEFAULT_CAMERA_ZOOM && z) {
            if (layoutDirection == LayoutDirection.Rtl && pagerState.n().getF5742e() == Orientation.Horizontal) {
                iQ3 = pagerState.q() + (-pagerState.f5761f);
            } else {
                iQ3 = pagerState.f5761f;
            }
            float fQ = iQ3 * (-1.0f);
            while (fA > Call.Parameters.DEFAULT_CAMERA_ZOOM && fQ < fA) {
                fQ += pagerState.q();
            }
            while (fA < Call.Parameters.DEFAULT_CAMERA_ZOOM && fQ > fA) {
                fQ -= pagerState.q();
            }
            return fQ;
        }
        if (Math.abs(pagerState.f5761f) < 1.0E-6d) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        LayoutDirection layoutDirection2 = LayoutDirection.Rtl;
        if (layoutDirection == layoutDirection2 && pagerState.n().getF5742e() == Orientation.Horizontal) {
            iQ = pagerState.q() + (-pagerState.f5761f);
        } else {
            iQ = pagerState.f5761f;
        }
        float f6 = iQ * (-1.0f);
        if (layoutDirection == layoutDirection2 && pagerState.n().getF5742e() == Orientation.Horizontal) {
            if (!pagerState.m()) {
                iQ2 = pagerState.q();
                f6 += iQ2;
            }
        } else if (pagerState.m()) {
            iQ2 = pagerState.q();
            f6 += iQ2;
        }
        return RangesKt.c(f6, -f4, f4);
    }
}

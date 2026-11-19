package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import java.util.List;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 implements SnapLayoutInfoProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LazyListState f4848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SnapPosition f4849b;

    public LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(LazyListState lazyListState, SnapPosition snapPosition) {
        this.f4848a = lazyListState;
        this.f4849b = snapPosition;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
    public final float a(float f2) {
        LazyListState lazyListState = this.f4848a;
        List f5211k = lazyListState.j().getF5211k();
        int size = f5211k.size();
        float f3 = Float.NEGATIVE_INFINITY;
        float f4 = Float.POSITIVE_INFINITY;
        for (int i2 = 0; i2 < size; i2++) {
            LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) f5211k.get(i2);
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem = lazyListItemInfo instanceof LazyLayoutMeasuredItem ? (LazyLayoutMeasuredItem) lazyListItemInfo : null;
            if (lazyLayoutMeasuredItem == null || !lazyLayoutMeasuredItem.getT()) {
                int iB = LazyListSnapLayoutInfoProviderKt.b(lazyListState.j());
                int iE = lazyListState.j().e();
                int q = lazyListState.j().getQ();
                int q2 = lazyListItemInfo.getQ();
                int p = lazyListItemInfo.getP();
                lazyListState.j().getN();
                float fD = p - this.f4849b.d(iB, q2, iE, q);
                if (fD <= Call.Parameters.DEFAULT_CAMERA_ZOOM && fD > f3) {
                    f3 = fD;
                }
                if (fD >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fD < f4) {
                    f4 = fD;
                }
            }
        }
        int iA = LazyListSnapLayoutInfoProviderKt.a(f2, ((LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f5236f).getF10755b()).f5209i);
        FinalSnappingItem.f4845a.getClass();
        if (iA == 0) {
            if (Math.abs(f4) <= Math.abs(f3)) {
                f3 = f4;
            }
        } else if (iA == FinalSnappingItem.f4846b) {
            f3 = f4;
        } else if (iA != FinalSnappingItem.f4847c) {
            f3 = 0.0f;
        }
        return (f3 == Float.POSITIVE_INFINITY || f3 == Float.NEGATIVE_INFINITY) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f3;
    }

    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
    public final float b(float f2, float f3) {
        float fAbs = Math.abs(f3);
        LazyListLayoutInfo lazyListLayoutInfoJ = this.f4848a.j();
        int i2 = 0;
        if (!lazyListLayoutInfoJ.getF5211k().isEmpty()) {
            int size = lazyListLayoutInfoJ.getF5211k().size();
            List f5211k = lazyListLayoutInfoJ.getF5211k();
            int size2 = f5211k.size();
            int q = 0;
            while (i2 < size2) {
                q += ((LazyListItemInfo) f5211k.get(i2)).getQ();
                i2++;
            }
            i2 = q / size;
        }
        float f4 = fAbs - i2;
        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f4 = 0.0f;
        }
        return Math.signum(f3) * f4;
    }
}

package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "state", "<init>", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridBeyondBoundsState implements LazyLayoutBeyondBoundsState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyStaggeredGridState f5598a;

    public LazyStaggeredGridBeyondBoundsState(LazyStaggeredGridState lazyStaggeredGridState) {
        this.f5598a = lazyStaggeredGridState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean a() {
        return !this.f5598a.g().getM().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return this.f5598a.g().getL();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        int i2;
        LazyStaggeredGridState lazyStaggeredGridState = this.f5598a;
        int s = 0;
        if (lazyStaggeredGridState.g().getM().isEmpty()) {
            return 0;
        }
        LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfoG = lazyStaggeredGridState.g();
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = LazyStaggeredGridMeasureResultKt.f5641a;
        int n = (int) (lazyStaggeredGridLayoutInfoG.getU() == Orientation.Vertical ? lazyStaggeredGridLayoutInfoG.getN() & BodyPartID.bodyIdMax : lazyStaggeredGridLayoutInfoG.getN() >> 32);
        LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfoG2 = lazyStaggeredGridState.g();
        List m = lazyStaggeredGridLayoutInfoG2.getM();
        if (!m.isEmpty()) {
            int size = m.size();
            int s2 = 0;
            while (s < size) {
                LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) m.get(s);
                s2 += (int) (lazyStaggeredGridLayoutInfoG2.getU() == Orientation.Vertical ? lazyStaggeredGridItemInfo.getS() & BodyPartID.bodyIdMax : lazyStaggeredGridItemInfo.getS() >> 32);
                s++;
            }
            s = lazyStaggeredGridLayoutInfoG2.getS() + (s2 / m.size());
        }
        if (s != 0 && (i2 = n / s) >= 1) {
            return i2;
        }
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int d() {
        return ((SnapshotMutableIntStateImpl) this.f5598a.f5667c.f5654c).f();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return ((LazyStaggeredGridItemInfo) CollectionsKt.M(this.f5598a.g().getM())).getF5212a();
    }
}

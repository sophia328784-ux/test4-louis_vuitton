package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "state", "<init>", "(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridBeyondBoundsState implements LazyLayoutBeyondBoundsState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridState f5275a;

    public LazyGridBeyondBoundsState(LazyGridState lazyGridState) {
        this.f5275a = lazyGridState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean a() {
        return !this.f5275a.h().getM().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return this.f5275a.h().getP();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        int i2;
        LazyGridState lazyGridState = this.f5275a;
        int t = 0;
        if (lazyGridState.h().getM().isEmpty()) {
            return 0;
        }
        LazyGridLayoutInfo lazyGridLayoutInfoH = lazyGridState.h();
        Orientation r = lazyGridLayoutInfoH.getR();
        Orientation orientation = Orientation.Vertical;
        int iA = (int) (r == orientation ? lazyGridLayoutInfoH.a() & BodyPartID.bodyIdMax : lazyGridLayoutInfoH.a() >> 32);
        LazyGridLayoutInfo lazyGridLayoutInfoH2 = lazyGridState.h();
        boolean z = lazyGridLayoutInfoH2.getR() == orientation;
        List m = lazyGridLayoutInfoH2.getM();
        if (!m.isEmpty()) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < m.size()) {
                LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) lazyGridLayoutInfoH2.getM().get(i3);
                int w = z ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX();
                if (w == -1) {
                    i3++;
                } else {
                    int iMax = 0;
                    while (i3 < m.size()) {
                        LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) lazyGridLayoutInfoH2.getM().get(i3);
                        if ((z ? lazyGridItemInfo2.getW() : lazyGridItemInfo2.getX()) != w) {
                            break;
                        }
                        iMax = Math.max(iMax, (int) (z ? ((LazyGridItemInfo) m.get(i3)).getU() & BodyPartID.bodyIdMax : ((LazyGridItemInfo) m.get(i3)).getU() >> 32));
                        i3++;
                    }
                    i4 += iMax;
                    i5++;
                }
            }
            t = lazyGridLayoutInfoH2.getT() + (i4 / i5);
        }
        if (t != 0 && (i2 = iA / t) >= 1) {
            return i2;
        }
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int d() {
        return this.f5275a.g();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return ((LazyGridItemInfo) CollectionsKt.M(this.f5275a.h().getM())).getF5212a();
    }
}

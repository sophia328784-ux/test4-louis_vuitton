package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "Landroidx/compose/foundation/lazy/LazyListState;", "state", "", "beyondBoundsItemCount", "<init>", "(Landroidx/compose/foundation/lazy/LazyListState;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListBeyondBoundsState implements LazyLayoutBeyondBoundsState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyListState f5176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5177b;

    public LazyListBeyondBoundsState(LazyListState lazyListState, int i2) {
        this.f5176a = lazyListState;
        this.f5177b = i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean a() {
        return !this.f5176a.j().getF5211k().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return this.f5176a.j().getN();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        int i2;
        LazyListState lazyListState = this.f5176a;
        if (lazyListState.j().getF5211k().isEmpty()) {
            return 0;
        }
        int iB = LazyListSnapLayoutInfoProviderKt.b(lazyListState.j());
        int iA = LazyListLayoutInfoKt.a(lazyListState.j());
        if (iA != 0 && (i2 = iB / iA) >= 1) {
            return i2;
        }
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int d() {
        return Math.max(0, this.f5176a.h() - this.f5177b);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return Math.min(b() - 1, ((LazyListItemInfo) CollectionsKt.M(this.f5176a.j().getF5211k())).getF5212a() + this.f5177b);
    }
}

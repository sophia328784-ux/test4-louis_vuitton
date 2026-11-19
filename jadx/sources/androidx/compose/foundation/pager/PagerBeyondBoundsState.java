package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/pager/PagerBeyondBoundsState;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "Landroidx/compose/foundation/pager/PagerState;", "state", "", "beyondViewportPageCount", "<init>", "(Landroidx/compose/foundation/pager/PagerState;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerBeyondBoundsState implements LazyLayoutBeyondBoundsState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PagerState f5711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5712b;

    public PagerBeyondBoundsState(PagerState pagerState, int i2) {
        this.f5711a = pagerState;
        this.f5712b = i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean a() {
        return !this.f5711a.n().getF5739a().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return this.f5711a.o();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        int i2;
        PagerState pagerState = this.f5711a;
        if (pagerState.n().getF5739a().size() == 0) {
            return 0;
        }
        int iA = PagerLayoutInfoKt.a(pagerState.n());
        int f5741c = pagerState.n().getF5741c() + pagerState.n().getF5740b();
        if (f5741c != 0 && (i2 = iA / f5741c) >= 1) {
            return i2;
        }
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int d() {
        return Math.max(0, this.f5711a.f5760e - this.f5712b);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        PagerState pagerState = this.f5711a;
        return Math.min(pagerState.o() - 1, ((PageInfo) CollectionsKt.M(pagerState.n().getF5739a())).getF5700a() + this.f5712b);
    }
}

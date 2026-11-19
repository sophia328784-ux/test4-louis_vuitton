package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1", "Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;", "Landroidx/compose/foundation/gestures/ScrollScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerScrollScopeKt$LazyLayoutScrollScope$1 implements LazyLayoutScrollScope, ScrollScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ScrollScope f5754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerState f5755b;

    public PagerScrollScopeKt$LazyLayoutScrollScope$1(ScrollScope scrollScope, PagerState pagerState) {
        this.f5755b = pagerState;
        this.f5754a = scrollScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int a() {
        return ((PageInfo) CollectionsKt.M(this.f5755b.n().getF5739a())).getF5700a();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int b() {
        return this.f5755b.o();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final void c(int i2, int i3) {
        PagerState pagerState = this.f5755b;
        float fQ = pagerState.q();
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (fQ != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = i3 / fQ;
        }
        pagerState.w(f2, i2, true);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int d(int i2) {
        PagerState pagerState = this.f5755b;
        return (int) (RangesKt.e(PagerScrollPositionKt.a(pagerState) + ((long) MathKt.c(((pagerState.q() * (i2 - pagerState.k())) - (pagerState.l() * pagerState.q())) + Call.Parameters.DEFAULT_CAMERA_ZOOM)), pagerState.f5762h, pagerState.g) - PagerScrollPositionKt.a(pagerState));
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float e(float f2) {
        return this.f5754a.e(f2);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int f() {
        return this.f5755b.f5761f;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int g() {
        return this.f5755b.f5760e;
    }
}

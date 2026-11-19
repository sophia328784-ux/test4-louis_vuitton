package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "state", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;", "intervalContent", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "keyIndexMap", "<init>", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyStaggeredGridItemProviderImpl implements LazyStaggeredGridItemProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyStaggeredGridState f5604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyStaggeredGridIntervalContent f5605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutKeyIndexMap f5606c;

    public LazyStaggeredGridItemProviderImpl(LazyStaggeredGridState lazyStaggeredGridState, LazyStaggeredGridIntervalContent lazyStaggeredGridIntervalContent, LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap) {
        this.f5604a = lazyStaggeredGridState;
        this.f5605b = lazyStaggeredGridIntervalContent;
        this.f5606c = lazyLayoutKeyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProvider
    /* JADX INFO: renamed from: a, reason: from getter */
    public final LazyLayoutKeyIndexMap getF5606c() {
        return this.f5606c;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int b() {
        return this.f5605b.getF5602a().f5539b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int c(Object obj) {
        return this.f5606c.c(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object d(int i2) {
        Object objD = this.f5606c.d(i2);
        return objD == null ? this.f5605b.n(i2) : objD;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyStaggeredGridItemProviderImpl)) {
            return false;
        }
        return Intrinsics.c(this.f5605b, ((LazyStaggeredGridItemProviderImpl) obj).f5605b);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object f(int i2) {
        return this.f5605b.l(i2);
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProvider
    public final LazyStaggeredGridSpanProvider h() {
        return this.f5605b.f5603b;
    }

    public final int hashCode() {
        return this.f5605b.hashCode();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void i(final int i2, Object obj, Composer composer, final int i3) {
        final int i4;
        final Object obj2;
        GapComposer gapComposerH = composer.h(89098518);
        int i5 = (gapComposerH.d(i2) ? 4 : 2) | i3 | (gapComposerH.y(obj) ? 32 : 16) | (gapComposerH.K(this) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            i4 = i2;
            obj2 = obj;
            LazyLayoutPinnableItemKt.a(obj2, i4, this.f5604a.s, ComposableLambdaKt.b(608834466, new Function2() { // from class: androidx.compose.foundation.lazy.staggeredgrid.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        MutableIntervalList mutableIntervalList = this.f5684b.f5605b.f5602a;
                        int i6 = i2;
                        IntervalList.Interval interval = mutableIntervalList.get(i6);
                        ((LazyStaggeredGridInterval) interval.f5407c).d.g(LazyStaggeredGridItemScopeImpl.f5607a, Integer.valueOf(i6 - interval.f5405a), composer2, 6);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i5 >> 3) & 14) | 3072 | ((i5 << 3) & 112));
        } else {
            i4 = i2;
            obj2 = obj;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(i4, obj2, i3) { // from class: androidx.compose.foundation.lazy.staggeredgrid.b

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f5687c;
                public final /* synthetic */ Object d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f5686b.i(this.f5687c, this.d, (Composer) obj3, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}

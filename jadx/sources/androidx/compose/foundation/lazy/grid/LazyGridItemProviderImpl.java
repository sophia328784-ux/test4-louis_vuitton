package androidx.compose.foundation.lazy.grid;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
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
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;", "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "state", "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "intervalContent", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "keyIndexMap", "<init>", "(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyGridItemProviderImpl implements LazyGridItemProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridState f5284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyGridIntervalContent f5285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyLayoutKeyIndexMap f5286c;

    public LazyGridItemProviderImpl(LazyGridState lazyGridState, LazyGridIntervalContent lazyGridIntervalContent, LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap) {
        this.f5284a = lazyGridState;
        this.f5285b = lazyGridIntervalContent;
        this.f5286c = lazyLayoutKeyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemProvider
    /* JADX INFO: renamed from: a, reason: from getter */
    public final LazyLayoutKeyIndexMap getF5286c() {
        return this.f5286c;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int b() {
        return this.f5285b.getF5282b().f5539b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int c(Object obj) {
        return this.f5286c.c(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object d(int i2) {
        Object objD = this.f5286c.d(i2);
        return objD == null ? this.f5285b.n(i2) : objD;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemProvider
    public final MutableIntList e() {
        this.f5285b.getClass();
        return IntListKt.f3257a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyGridItemProviderImpl)) {
            return false;
        }
        return Intrinsics.c(this.f5285b, ((LazyGridItemProviderImpl) obj).f5285b);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object f(int i2) {
        return this.f5285b.l(i2);
    }

    public final int hashCode() {
        return this.f5285b.hashCode();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void i(final int i2, Object obj, Composer composer, final int i3) {
        final int i4;
        final Object obj2;
        GapComposer gapComposerH = composer.h(1493551140);
        int i5 = (gapComposerH.d(i2) ? 4 : 2) | i3 | (gapComposerH.y(obj) ? 32 : 16) | (gapComposerH.K(this) ? 256 : 128);
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            i4 = i2;
            obj2 = obj;
            LazyLayoutPinnableItemKt.a(obj2, i4, this.f5284a.q, ComposableLambdaKt.b(726189336, new Function2() { // from class: androidx.compose.foundation.lazy.grid.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        MutableIntervalList mutableIntervalList = this.f5376b.f5285b.f5282b;
                        int i6 = i2;
                        IntervalList.Interval interval = mutableIntervalList.get(i6);
                        ((LazyGridInterval) interval.f5407c).d.g(LazyGridItemScopeImpl.f5287a, Integer.valueOf(i6 - interval.f5405a), composer2, 6);
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
            recomposeScopeImplB0.d = new Function2(i4, obj2, i3) { // from class: androidx.compose.foundation.lazy.grid.b

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f5379c;
                public final /* synthetic */ Object d;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f5378b.i(this.f5379c, this.d, (Composer) obj3, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemProvider
    public final LazyGridSpanLayoutProvider j() {
        return this.f5285b.f5281a;
    }
}

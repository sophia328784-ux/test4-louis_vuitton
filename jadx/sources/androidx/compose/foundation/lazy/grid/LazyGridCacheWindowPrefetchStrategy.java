package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowPrefetchStrategy;", "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;", "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;", "cacheWindow", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridCacheWindowPrefetchStrategy extends CacheWindowLogic implements LazyGridPrefetchStrategy {
    public final LazyGridCacheWindowScope p;

    public LazyGridCacheWindowPrefetchStrategy(LazyLayoutCacheWindow lazyLayoutCacheWindow) {
        super(lazyLayoutCacheWindow, false, 2, null);
        this.p = new LazyGridCacheWindowScope();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void a(NestedPrefetchScope nestedPrefetchScope, int i2) {
        int f5507a = nestedPrefetchScope.getF5507a();
        for (int i3 = 0; i3 < f5507a; i3++) {
            nestedPrefetchScope.a(i2 + i3);
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void d(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, float f2, LazyGridLayoutInfo lazyGridLayoutInfo) {
        LazyGridCacheWindowScope lazyGridCacheWindowScope = this.p;
        lazyGridCacheWindowScope.f5276a = lazyGridLayoutInfo;
        lazyGridCacheWindowScope.f5277b = lazyGridState$prefetchScope$1;
        j(lazyGridCacheWindowScope, f2);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public final void e(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, LazyGridMeasureResult lazyGridMeasureResult) {
        LazyGridCacheWindowScope lazyGridCacheWindowScope = this.p;
        lazyGridCacheWindowScope.f5276a = lazyGridMeasureResult;
        lazyGridCacheWindowScope.f5277b = lazyGridState$prefetchScope$1;
        k(lazyGridCacheWindowScope);
    }
}

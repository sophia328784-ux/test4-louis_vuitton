package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LazyGridPrefetchStrategy {
    void a(NestedPrefetchScope nestedPrefetchScope, int i2);

    void d(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, float f2, LazyGridLayoutInfo lazyGridLayoutInfo);

    void e(LazyGridState$prefetchScope$1 lazyGridState$prefetchScope$1, LazyGridMeasureResult lazyGridMeasureResult);
}

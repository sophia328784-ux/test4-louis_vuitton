package androidx.compose.foundation.lazy.grid;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;", "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;", "", "lineIndex", "", "mainAxisSizes", "<init>", "(ILjava/util/List;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridPrefetchResultScopeImpl implements LazyGridPrefetchResultScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5333a;

    public LazyGridPrefetchResultScopeImpl(int i2, List<Integer> list) {
        this.f5333a = list;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchResultScope
    public final int a(int i2) {
        return ((Number) this.f5333a.get(i2)).intValue();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchResultScope
    public final int b() {
        return this.f5333a.size();
    }
}

package androidx.compose.foundation.lazy;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;", "Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;", "", "index", "mainAxisSize", "<init>", "(II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListPrefetchResultScopeImpl implements LazyListPrefetchResultScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5224b;

    public LazyListPrefetchResultScopeImpl(int i2, int i3) {
        this.f5223a = i2;
        this.f5224b = i3;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchResultScope
    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getF5224b() {
        return this.f5224b;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchResultScope
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5223a() {
        return this.f5223a;
    }
}

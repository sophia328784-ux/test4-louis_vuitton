package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.ui.unit.Density;
import defpackage.l3;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;", "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListCacheWindowScope implements CacheWindowScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LazyListLayoutInfo f5178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LazyListPrefetchScope f5179b;

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final boolean a() {
        return !o().getF5211k().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final List b(int i2, Function2 function2) {
        LazyListPrefetchScope lazyListPrefetchScope = this.f5179b;
        if (lazyListPrefetchScope != null) {
            return CollectionsKt.O(lazyListPrefetchScope.a(i2, new l3(5, function2)));
        }
        Intrinsics.h("prefetchScope");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int c() {
        return ((LazyListItemInfo) CollectionsKt.B(o().getF5211k())).getF5212a();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int d() {
        return o().getN();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int e(int i2) {
        return ((LazyListItemInfo) o().getF5211k().get(i2)).getF5212a();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int f() {
        return o().getF5211k().size();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int g(int i2) {
        return i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Density getDensity() {
        LazyListLayoutInfo lazyListLayoutInfoO = o();
        LazyListMeasureResult lazyListMeasureResult = lazyListLayoutInfoO instanceof LazyListMeasureResult ? (LazyListMeasureResult) lazyListLayoutInfoO : null;
        if (lazyListMeasureResult != null) {
            return lazyListMeasureResult.f5209i;
        }
        return null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int h() {
        return ((LazyListItemInfo) CollectionsKt.M(o().getF5211k())).getF5212a();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int i() {
        int iE = o().e() + ((LazyListItemInfo) CollectionsKt.B(o().getF5211k())).getP();
        if (iE > 0) {
            iE = 0;
        }
        return Math.abs(iE);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int j(int i2) {
        return ((LazyListItemInfo) o().getF5211k().get(i2)).getQ();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int k() {
        return LazyListSnapLayoutInfoProviderKt.b(o());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int l() {
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.M(o().getF5211k());
        return Math.abs((o().getR() + (lazyListItemInfo.getQ() + lazyListItemInfo.getP())) - o().getM());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int m() {
        if (d() == 0) {
            return -1;
        }
        return d() - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Object n(int i2) {
        return ((LazyListItemInfo) o().getF5211k().get(i2)).getL();
    }

    public final LazyListLayoutInfo o() {
        LazyListLayoutInfo lazyListLayoutInfo = this.f5178a;
        if (lazyListLayoutInfo != null) {
            return lazyListLayoutInfo;
        }
        Intrinsics.h("layoutInfo");
        throw null;
    }
}

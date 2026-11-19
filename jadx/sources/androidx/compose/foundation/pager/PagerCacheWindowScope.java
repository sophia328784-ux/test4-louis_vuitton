package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/pager/PagerCacheWindowScope;", "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;", "Lkotlin/Function0;", "", "itemCount", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PagerCacheWindowScope implements CacheWindowScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f5715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PagerMeasureResult f5716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LazyLayoutPrefetchState f5717c;

    public PagerCacheWindowScope(Function0<Integer> function0) {
        this.f5715a = function0;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final boolean a() {
        return !o().f5739a.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final List b(int i2, Function2 function2) {
        long j2 = o().v;
        LazyLayoutPrefetchState lazyLayoutPrefetchState = this.f5717c;
        if (lazyLayoutPrefetchState != null) {
            return CollectionsKt.O(lazyLayoutPrefetchState.a(i2, j2, true, new e(function2, this, 0)));
        }
        Intrinsics.h("state");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int c() {
        if (o().f5739a.isEmpty()) {
            return -1;
        }
        long j2 = ((long) ((MeasuredPage) CollectionsKt.B(o().f5739a)).f5700a) - ((long) o().f5745i);
        if (j2 < 0) {
            j2 = 0;
        }
        return (int) j2;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int d() {
        return ((Number) this.f5715a.mo47invoke()).intValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int e(int i2) {
        int size = o().r.size();
        int size2 = o().f5739a.size();
        if (i2 < size) {
            return ((MeasuredPage) o().r.get(i2)).f5700a;
        }
        if (i2 >= size && i2 < size + size2) {
            return ((MeasuredPage) o().f5739a.get(i2 - size)).f5700a;
        }
        if (i2 >= size + size2) {
            return ((MeasuredPage) o().s.get((i2 - size) - size2)).f5700a;
        }
        return -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int f() {
        return o().s.size() + o().f5739a.size() + o().r.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int g(int i2) {
        return i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Density getDensity() {
        return o().u;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int h() {
        if (o().f5739a.isEmpty()) {
            return -1;
        }
        long j2 = ((long) ((MeasuredPage) CollectionsKt.M(o().f5739a)).f5700a) + ((long) o().f5745i);
        long jD = ((long) d()) - 1;
        if (j2 > jD) {
            j2 = jD;
        }
        return (int) j2;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int i() {
        if (o().f5739a.isEmpty()) {
            return 0;
        }
        int i2 = ((MeasuredPage) CollectionsKt.B(o().f5739a)).m + (-o().f5743f);
        return Math.abs(i2 <= 0 ? i2 : 0);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int j(int i2) {
        return o().f5740b;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int k() {
        return PagerLayoutInfoKt.a(o());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int l() {
        if (o().f5739a.isEmpty()) {
            return 0;
        }
        return Math.abs(((((MeasuredPage) CollectionsKt.M(o().f5739a)).m + o().f5740b) + o().f5741c) - o().g);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int m() {
        if (o().f5739a.isEmpty()) {
            return -1;
        }
        return d() - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Object n(int i2) {
        int size = o().r.size();
        int size2 = o().f5739a.size();
        if (i2 < size) {
            return ((MeasuredPage) o().r.get(i2)).f5703e;
        }
        if (i2 < size || i2 >= size + size2) {
            return i2 >= size + size2 ? ((MeasuredPage) o().s.get((i2 - size) - size2)).f5703e : CachedItem.f5400c;
        }
        return ((MeasuredPage) o().f5739a.get(i2 - size)).f5703e;
    }

    public final PagerMeasureResult o() {
        PagerMeasureResult pagerMeasureResult = this.f5716b;
        if (pagerMeasureResult != null) {
            return pagerMeasureResult;
        }
        Intrinsics.h("layoutInfo");
        throw null;
    }
}

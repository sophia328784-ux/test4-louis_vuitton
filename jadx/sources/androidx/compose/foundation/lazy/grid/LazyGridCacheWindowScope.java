package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.ui.unit.Density;
import defpackage.ze;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;", "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LazyGridCacheWindowScope implements CacheWindowScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LazyGridLayoutInfo f5276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LazyGridPrefetchScope f5277b;

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final boolean a() {
        return !o().getM().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final List b(int i2, Function2 function2) {
        LazyGridPrefetchScope lazyGridPrefetchScope = this.f5277b;
        if (lazyGridPrefetchScope != null) {
            return lazyGridPrefetchScope.b(i2, new ze(function2, i2, 6));
        }
        Intrinsics.h("prefetchScope");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int c() {
        LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.B(o().getM());
        return o().getR() == Orientation.Vertical ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int d() {
        return o().getP();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int e(int i2) {
        return c() + i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int f() {
        return (h() - c()) + 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int g(int i2) {
        LazyGridLayoutInfo lazyGridLayoutInfoO = o();
        LazyGridMeasureResult lazyGridMeasureResult = lazyGridLayoutInfoO instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) lazyGridLayoutInfoO : null;
        if (lazyGridMeasureResult == null) {
            return -1;
        }
        List list = (List) lazyGridMeasureResult.f5310k.invoke(Integer.valueOf(i2));
        if (list.isEmpty()) {
            return -1;
        }
        return (list.size() + ((Number) ((Pair) CollectionsKt.B(list)).f71705b).intValue()) - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Density getDensity() {
        LazyGridLayoutInfo lazyGridLayoutInfoO = o();
        LazyGridMeasureResult lazyGridMeasureResult = lazyGridLayoutInfoO instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) lazyGridLayoutInfoO : null;
        if (lazyGridMeasureResult != null) {
            return lazyGridMeasureResult.f5308i;
        }
        return null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int h() {
        LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.M(o().getM());
        return o().getR() == Orientation.Vertical ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int i() {
        int iE = o().e() + LazyGridSnapLayoutInfoProviderKt.a((LazyGridItemInfo) CollectionsKt.B(o().getM()), o().getR());
        if (iE > 0) {
            iE = 0;
        }
        return Math.abs(iE);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int j(int i2) {
        int iC = i2 + c();
        List m = o().getM();
        ArrayList arrayList = new ArrayList(m.size());
        int size = m.size();
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = m.get(i3);
            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) obj;
            if ((o().getR() == Orientation.Vertical ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX()) == iC) {
                arrayList.add(obj);
            }
        }
        int size2 = arrayList.size();
        int iMax = 0;
        for (int i4 = 0; i4 < size2; i4++) {
            iMax = Math.max(LazyGridSnapLayoutInfoProviderKt.b((LazyGridItemInfo) arrayList.get(i4), o().getR()), iMax);
        }
        return iMax;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int k() {
        LazyGridLayoutInfo lazyGridLayoutInfoO = o();
        return (int) (lazyGridLayoutInfoO.getR() == Orientation.Vertical ? lazyGridLayoutInfoO.a() & BodyPartID.bodyIdMax : lazyGridLayoutInfoO.a() >> 32);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int l() {
        LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.M(o().getM());
        return Math.abs((o().getT() + (LazyGridSnapLayoutInfoProviderKt.b(lazyGridItemInfo, o().getR()) + LazyGridSnapLayoutInfoProviderKt.a(lazyGridItemInfo, o().getR()))) - o().getO());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final int m() {
        LazyGridLayoutInfo lazyGridLayoutInfoO = o();
        LazyGridMeasureResult lazyGridMeasureResult = lazyGridLayoutInfoO instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) lazyGridLayoutInfoO : null;
        if (lazyGridMeasureResult == null || d() == 0) {
            return -1;
        }
        return ((Number) lazyGridMeasureResult.l.invoke(Integer.valueOf(d() - 1))).intValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final Object n(int i2) {
        Object l;
        int iC = i2 + c();
        List m = o().getM();
        ArrayList arrayList = new ArrayList(m.size());
        int size = m.size();
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = m.get(i3);
            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) obj;
            if ((o().getR() == Orientation.Vertical ? lazyGridItemInfo.getW() : lazyGridItemInfo.getX()) == iC) {
                arrayList.add(obj);
            }
        }
        LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) CollectionsKt.firstOrNull(arrayList);
        return (lazyGridItemInfo2 == null || (l = lazyGridItemInfo2.getL()) == null) ? CachedItem.f5400c : l;
    }

    public final LazyGridLayoutInfo o() {
        LazyGridLayoutInfo lazyGridLayoutInfo = this.f5276a;
        if (lazyGridLayoutInfo != null) {
            return lazyGridLayoutInfo;
        }
        Intrinsics.h("layoutInfo");
        throw null;
    }
}

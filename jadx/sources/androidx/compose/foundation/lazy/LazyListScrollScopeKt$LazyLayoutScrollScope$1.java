package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1", "Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;", "Landroidx/compose/foundation/gestures/ScrollScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListScrollScopeKt$LazyLayoutScrollScope$1 implements LazyLayoutScrollScope, ScrollScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ScrollScope f5230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LazyListState f5231b;

    public LazyListScrollScopeKt$LazyLayoutScrollScope$1(ScrollScope scrollScope, LazyListState lazyListState) {
        this.f5231b = lazyListState;
        this.f5230a = scrollScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int a() {
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.N(this.f5231b.j().getF5211k());
        if (lazyListItemInfo != null) {
            return lazyListItemInfo.getF5212a();
        }
        return 0;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int b() {
        return this.f5231b.j().getN();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final void c(int i2, int i3) {
        this.f5231b.l(i2, i3, true);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int d(int i2) {
        Object obj;
        LazyListState lazyListState = this.f5231b;
        LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
        if (!lazyListLayoutInfoJ.getF5211k().isEmpty()) {
            int iH = lazyListState.h();
            if (i2 > a() || iH > i2) {
                return ((i2 - lazyListState.h()) * LazyListLayoutInfoKt.a(lazyListLayoutInfoJ)) - lazyListState.i();
            }
            List f5211k = lazyListLayoutInfoJ.getF5211k();
            int size = f5211k.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    obj = null;
                    break;
                }
                obj = f5211k.get(i3);
                if (((LazyListItemInfo) obj).getF5212a() == i2) {
                    break;
                }
                i3++;
            }
            LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) obj;
            if (lazyListItemInfo != null) {
                return lazyListItemInfo.getP();
            }
        }
        return 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float e(float f2) {
        return this.f5230a.e(f2);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int f() {
        return this.f5231b.i();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int g() {
        return this.f5231b.h();
    }
}

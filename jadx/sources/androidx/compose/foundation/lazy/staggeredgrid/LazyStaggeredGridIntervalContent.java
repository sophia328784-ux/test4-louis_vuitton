package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.h90;
import defpackage.l00;
import defpackage.n60;
import defpackage.v10;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B \u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "content", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridIntervalContent extends LazyLayoutIntervalContent<LazyStaggeredGridInterval> implements LazyStaggeredGridScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableIntervalList f5602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyStaggeredGridSpanProvider f5603b;

    public LazyStaggeredGridIntervalContent(Function1<? super LazyStaggeredGridScope, Unit> function1) {
        MutableIntervalList mutableIntervalList = new MutableIntervalList();
        this.f5602a = mutableIntervalList;
        this.f5603b = new LazyStaggeredGridSpanProvider(mutableIntervalList);
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope
    public final void e(StaggeredGridItemSpan staggeredGridItemSpan, ComposableLambdaImpl composableLambdaImpl) {
        k(1, null, new n60(21), staggeredGridItemSpan != null ? new l00(staggeredGridItemSpan, 22) : null, new ComposableLambdaImpl(1062451479, true, new v10(composableLambdaImpl, 1)));
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope
    public final void k(int i2, h90 h90Var, Function1 function1, l00 l00Var, ComposableLambdaImpl composableLambdaImpl) {
        this.f5602a.a(i2, new LazyStaggeredGridInterval(h90Var, function1, l00Var, composableLambdaImpl));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    /* JADX INFO: renamed from: m, reason: from getter */
    public final MutableIntervalList getF5602a() {
        return this.f5602a;
    }
}

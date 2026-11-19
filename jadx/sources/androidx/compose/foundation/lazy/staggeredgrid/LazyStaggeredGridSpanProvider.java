package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;", "", "Landroidx/compose/foundation/lazy/layout/IntervalList;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;", "intervals", "<init>", "(Landroidx/compose/foundation/lazy/layout/IntervalList;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridSpanProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntervalList f5664a;

    public LazyStaggeredGridSpanProvider(IntervalList<LazyStaggeredGridInterval> intervalList) {
        this.f5664a = intervalList;
    }

    public final boolean a(int i2) {
        if (i2 < 0) {
            return false;
        }
        IntervalList intervalList = this.f5664a;
        if (i2 >= intervalList.getSize()) {
            return false;
        }
        IntervalList.Interval interval = intervalList.get(i2);
        Function1 function1 = ((LazyStaggeredGridInterval) interval.f5407c).f5601c;
        int i3 = i2 - interval.f5405a;
        if (function1 == null) {
            return false;
        }
        Object objInvoke = function1.invoke(Integer.valueOf(i3));
        StaggeredGridItemSpan.f5682a.getClass();
        return objInvoke == StaggeredGridItemSpan.f5683b;
    }
}

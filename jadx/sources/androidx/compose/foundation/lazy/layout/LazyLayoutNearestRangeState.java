package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;", "Landroidx/compose/runtime/State;", "Lkotlin/ranges/IntRange;", "", "firstVisibleItem", "slidingWindowSize", "extraItemCount", "<init>", "(III)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutNearestRangeState implements State<IntRange> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f5491f = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5493c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5494e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public LazyLayoutNearestRangeState(int i2, int i3, int i4) {
        this.f5492b = i3;
        this.f5493c = i4;
        f5491f.getClass();
        int i5 = (i2 / i3) * i3;
        this.d = SnapshotStateKt.f(RangesKt.j(Math.max(i5 - i4, 0), i5 + i3 + i4), SnapshotStateKt.n());
        this.f5494e = i2;
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        return (IntRange) ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    public final void h(int i2) {
        if (i2 != this.f5494e) {
            this.f5494e = i2;
            f5491f.getClass();
            int i3 = this.f5492b;
            int i4 = (i2 / i3) * i3;
            int i5 = this.f5493c;
            ((SnapshotMutableStateImpl) this.d).setValue(RangesKt.j(Math.max(i4 - i5, 0), i4 + i3 + i5));
        }
    }
}

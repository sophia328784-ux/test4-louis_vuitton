package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;", "", "", "isVertical", "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;", "slots", "", "gridItemsCount", "spaceBetweenLines", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;", "measuredItemProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "spanLayoutProvider", "<init>", "(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LazyGridMeasuredLineProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyGridSlots f5329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5330c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LazyGridMeasuredItemProvider f5331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LazyGridSpanLayoutProvider f5332f;

    public LazyGridMeasuredLineProvider(boolean z, LazyGridSlots lazyGridSlots, int i2, int i3, LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider, LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider) {
        this.f5328a = z;
        this.f5329b = lazyGridSlots;
        this.f5330c = i2;
        this.d = i3;
        this.f5331e = lazyGridMeasuredItemProvider;
        this.f5332f = lazyGridSpanLayoutProvider;
    }

    public final long a(int i2, int i3) {
        int i4;
        LazyGridSlots lazyGridSlots = this.f5329b;
        if (i3 == 1) {
            i4 = lazyGridSlots.f5339a[i2];
        } else {
            int i5 = (i3 + i2) - 1;
            int[] iArr = lazyGridSlots.f5340b;
            i4 = (iArr[i5] + lazyGridSlots.f5339a[i5]) - iArr[i2];
        }
        if (i4 < 0) {
            i4 = 0;
        }
        if (this.f5328a) {
            Constraints.f10998b.getClass();
            return Constraints.Companion.e(i4);
        }
        Constraints.f10998b.getClass();
        return Constraints.Companion.d(i4);
    }

    public abstract LazyGridMeasuredLine b(int i2, LazyGridMeasuredItem[] lazyGridMeasuredItemArr, List list, int i3);

    public final LazyGridMeasuredLine c(int i2) {
        LazyGridSpanLayoutProvider.LineConfiguration lineConfigurationB = this.f5332f.b(i2);
        int i3 = lineConfigurationB.f5352a;
        List list = lineConfigurationB.f5353b;
        int size = list.size();
        int i4 = (size == 0 || i3 + size == this.f5330c) ? 0 : this.d;
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = new LazyGridMeasuredItem[size];
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            int i7 = (int) ((GridItemSpan) list.get(i6)).f5271a;
            LazyGridMeasuredItem lazyGridMeasuredItemD = this.f5331e.d(i3 + i6, i5, i7, i4, a(i5, i7));
            i5 += i7;
            lazyGridMeasuredItemArr[i6] = lazyGridMeasuredItemD;
        }
        return b(i2, lazyGridMeasuredItemArr, list, i4);
    }
}

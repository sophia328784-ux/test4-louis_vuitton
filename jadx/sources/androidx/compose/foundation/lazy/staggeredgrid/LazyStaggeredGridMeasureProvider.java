package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "", "isVertical", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "measureScope", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "resolvedSlots", "<init>", "(ZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LazyStaggeredGridMeasureProvider extends LazyLayoutMeasuredItemProvider<LazyStaggeredGridMeasuredItem> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyStaggeredGridItemProvider f5630c;
    public final LazyLayoutMeasureScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LazyStaggeredGridSlots f5631e;

    public LazyStaggeredGridMeasureProvider(boolean z, LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, LazyStaggeredGridSlots lazyStaggeredGridSlots) {
        this.f5629b = z;
        this.f5630c = lazyStaggeredGridItemProvider;
        this.d = lazyLayoutMeasureScope;
        this.f5631e = lazyStaggeredGridSlots;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    public final LazyLayoutMeasuredItem a(int i2, int i3, int i4, long j2) {
        LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider = this.f5630c;
        return c(i2, i3, i4, lazyStaggeredGridItemProvider.d(i2), lazyStaggeredGridItemProvider.f(i2), b(this.d, i2, j2), j2);
    }

    public abstract LazyStaggeredGridMeasuredItem c(int i2, int i3, int i4, Object obj, Object obj2, List list, long j2);

    public final LazyStaggeredGridMeasuredItem d(int i2, long j2) {
        int i3;
        long jD;
        LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider = this.f5630c;
        Object objD = lazyStaggeredGridItemProvider.d(i2);
        Object objF = lazyStaggeredGridItemProvider.f(i2);
        LazyStaggeredGridSlots lazyStaggeredGridSlots = this.f5631e;
        int[] iArr = lazyStaggeredGridSlots.f5663b;
        int length = iArr.length;
        int i4 = (int) (j2 >> 32);
        int i5 = length - 1;
        if (i4 <= i5) {
            i5 = i4;
        }
        int i6 = ((int) (j2 & BodyPartID.bodyIdMax)) - i4;
        int i7 = length - i5;
        if (i6 > i7) {
            i6 = i7;
        }
        if (i6 == 1) {
            i3 = iArr[i5];
        } else {
            int[] iArr2 = lazyStaggeredGridSlots.f5662a;
            int i8 = (i5 + i6) - 1;
            i3 = (iArr2[i8] + iArr[i8]) - iArr2[i5];
        }
        if (this.f5629b) {
            Constraints.f10998b.getClass();
            jD = Constraints.Companion.e(i3);
        } else {
            Constraints.f10998b.getClass();
            jD = Constraints.Companion.d(i3);
        }
        long j3 = jD;
        return c(i2, i5, i6, objD, objF, b(this.d, i2, j3), j3);
    }
}

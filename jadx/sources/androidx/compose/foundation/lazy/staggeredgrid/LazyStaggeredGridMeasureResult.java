package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u00ad\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001b\u001a\u00020\u0014\u0012\u0006\u0010\u001c\u001a\u00020\u0014\u0012\u0006\u0010\u001d\u001a\u00020\u0014\u0012\u0006\u0010\u001e\u001a\u00020\u0014\u0012\u0006\u0010\u001f\u001a\u00020\u0014\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "", "firstVisibleItemIndices", "firstVisibleItemScrollOffsets", "", "consumedScroll", "measureResult", "scrollBackAmount", "", "canScrollForward", "isVertical", "remeasureNeeded", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "slots", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;", "spanProvider", "Landroidx/compose/ui/unit/Density;", "density", "", "totalItemsCount", "", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "visibleItemsInfo", "Landroidx/compose/ui/unit/IntSize;", "viewportSize", "viewportStartOffset", "viewportEndOffset", "beforeContentPadding", "afterContentPadding", "mainAxisItemSpacing", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "([I[IFLandroidx/compose/ui/layout/MeasureResult;FZZZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;Landroidx/compose/ui/unit/Density;ILjava/util/List;JIIIIILkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridMeasureResult implements LazyStaggeredGridLayoutInfo, MeasureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f5632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5634c;
    public final MeasureResult d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f5635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5636f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5637h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LazyStaggeredGridSlots f5638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LazyStaggeredGridSpanProvider f5639j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Density f5640k;
    public final int l;
    public final List m;
    public final long n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final CoroutineScope t;
    public final Orientation u;

    public LazyStaggeredGridMeasureResult(int[] iArr, int[] iArr2, float f2, MeasureResult measureResult, float f3, boolean z, boolean z2, boolean z3, LazyStaggeredGridSlots lazyStaggeredGridSlots, LazyStaggeredGridSpanProvider lazyStaggeredGridSpanProvider, Density density, int i2, List list, long j2, int i3, int i4, int i5, int i6, int i7, CoroutineScope coroutineScope, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5632a = iArr;
        this.f5633b = iArr2;
        this.f5634c = f2;
        this.d = measureResult;
        this.f5635e = f3;
        this.f5636f = z;
        this.g = z2;
        this.f5637h = z3;
        this.f5638i = lazyStaggeredGridSlots;
        this.f5639j = lazyStaggeredGridSpanProvider;
        this.f5640k = density;
        this.l = i2;
        this.m = list;
        this.n = j2;
        this.o = i3;
        this.p = i4;
        this.q = i5;
        this.r = i6;
        this.s = i7;
        this.t = coroutineScope;
        this.u = z2 ? Orientation.Vertical : Orientation.Horizontal;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getN() {
        return this.n;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getR() {
        return this.r;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: c, reason: from getter */
    public final Orientation getU() {
        return this.u;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getL() {
        return this.l;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getQ() {
        return this.q;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getS() {
        return this.s;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLayoutInfo
    /* JADX INFO: renamed from: g, reason: from getter */
    public final List getM() {
        return this.m;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getHeight */
    public final int getF9727b() {
        return this.d.getF9727b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getWidth */
    public final int getF9726a() {
        return this.d.getF9726a();
    }

    public final LazyStaggeredGridMeasureResult h(int i2, boolean z) {
        if (this.f5637h) {
            return null;
        }
        List list = this.m;
        if (list.isEmpty() || this.f5632a.length == 0) {
            return null;
        }
        int[] iArr = this.f5633b;
        if (iArr.length == 0) {
            return null;
        }
        int i3 = this.r;
        int i4 = this.p;
        int i5 = i4 - i3;
        List list2 = list;
        int size = list2.size();
        for (int i6 = 0; i6 < size; i6++) {
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) list.get(i6);
            boolean z2 = lazyStaggeredGridMeasuredItem.r;
            int i7 = lazyStaggeredGridMeasuredItem.n;
            if (z2) {
                return null;
            }
            if ((lazyStaggeredGridMeasuredItem.k() <= 0) != (lazyStaggeredGridMeasuredItem.k() + i2 <= 0)) {
                return null;
            }
            int iK = lazyStaggeredGridMeasuredItem.k();
            int i8 = this.o;
            if (iK <= i8) {
                if (i2 < 0) {
                    if ((lazyStaggeredGridMeasuredItem.k() + i7) - i8 <= (-i2)) {
                        return null;
                    }
                } else if (i8 - lazyStaggeredGridMeasuredItem.k() <= i2) {
                    return null;
                }
            }
            if (lazyStaggeredGridMeasuredItem.k() + i7 >= i5) {
                if (i2 < 0) {
                    if ((lazyStaggeredGridMeasuredItem.k() + i7) - i4 <= (-i2)) {
                        return null;
                    }
                } else if (i4 - lazyStaggeredGridMeasuredItem.k() <= i2) {
                    return null;
                }
            }
        }
        int size2 = list2.size();
        for (int i9 = 0; i9 < size2; i9++) {
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem2 = (LazyStaggeredGridMeasuredItem) list.get(i9);
            boolean z3 = lazyStaggeredGridMeasuredItem2.d;
            if (!lazyStaggeredGridMeasuredItem2.r) {
                long j2 = lazyStaggeredGridMeasuredItem2.t;
                IntOffset.Companion companion = IntOffset.f11012b;
                int i10 = z3 ? (int) (j2 >> 32) : ((int) (j2 >> 32)) + i2;
                long j3 = BodyPartID.bodyIdMax;
                lazyStaggeredGridMeasuredItem2.t = (((long) (z3 ? ((int) (j2 & BodyPartID.bodyIdMax)) + i2 : (int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (((long) i10) << 32);
                if (z) {
                    int size3 = lazyStaggeredGridMeasuredItem2.f5645c.size();
                    int i11 = 0;
                    while (i11 < size3) {
                        LazyLayoutItemAnimation lazyLayoutItemAnimationA = lazyStaggeredGridMeasuredItem2.f5650j.a(i11, lazyStaggeredGridMeasuredItem2.f5644b);
                        if (lazyLayoutItemAnimationA != null) {
                            long j4 = lazyLayoutItemAnimationA.l;
                            lazyLayoutItemAnimationA.l = (((long) (z3 ? ((int) (j4 & j3)) + i2 : (int) (j4 & j3))) & j3) | (((long) (z3 ? (int) (j4 >> 32) : ((int) (j4 >> 32)) + i2)) << 32);
                        } else {
                            j3 = j3;
                        }
                        i11++;
                        j3 = j3;
                    }
                }
            }
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr2[i12] = iArr[i12] - i2;
        }
        return new LazyStaggeredGridMeasureResult(this.f5632a, iArr2, i2, this.d, this.f5635e, this.f5636f || i2 > 0, this.g, this.f5637h, this.f5638i, this.f5639j, this.f5640k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, null);
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: j */
    public final Map getF5787a() {
        return this.d.getF5787a();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void k() {
        this.d.k();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: l */
    public final Function1 getD() {
        return this.d.getD();
    }
}

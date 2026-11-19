package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B÷\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u00123\u0010\u001a\u001a/\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00190\u00180\u00170\u0013\u0012!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00050\u0013\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u0005\u0012\u0006\u0010 \u001a\u00020\u0005\u0012\u0006\u0010!\u001a\u00020\u0005\u0012\u0006\u0010\"\u001a\u00020\u0007\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010%\u001a\u00020\u0005\u0012\u0006\u0010&\u001a\u00020\u0005¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;", "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;", "firstVisibleLine", "", "firstVisibleLineScrollOffset", "", "canScrollForward", "", "consumedScroll", "measureResult", "scrollBackAmount", "remeasureNeeded", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Landroidx/compose/ui/unit/Density;", "density", "slotsPerLine", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "line", "", "Lkotlin/Pair;", "Landroidx/compose/ui/unit/Constraints;", "prefetchInfoRetriever", "itemIndex", "lineIndexProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "visibleItemsInfo", "viewportStartOffset", "viewportEndOffset", "totalItemsCount", "reverseLayout", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "afterContentPadding", "mainAxisItemSpacing", "<init>", "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridMeasureResult implements LazyGridLayoutInfo, MeasureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridMeasuredLine f5302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5304c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MeasureResult f5305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f5306f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CoroutineScope f5307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Density f5308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Function1 f5310k;
    public final Function1 l;
    public final List m;
    public final int n;
    public final int o;
    public final int p;
    public final boolean q;
    public final Orientation r;
    public final int s;
    public final int t;

    public LazyGridMeasureResult(LazyGridMeasuredLine lazyGridMeasuredLine, int i2, boolean z, float f2, MeasureResult measureResult, float f3, boolean z2, CoroutineScope coroutineScope, Density density, int i3, Function1<? super Integer, ? extends List<Pair<Integer, Constraints>>> function1, Function1<? super Integer, Integer> function2, List<LazyGridMeasuredItem> list, int i4, int i5, int i6, boolean z3, Orientation orientation, int i7, int i8) {
        this.f5302a = lazyGridMeasuredLine;
        this.f5303b = i2;
        this.f5304c = z;
        this.d = f2;
        this.f5305e = measureResult;
        this.f5306f = f3;
        this.g = z2;
        this.f5307h = coroutineScope;
        this.f5308i = density;
        this.f5309j = i3;
        this.f5310k = function1;
        this.l = function2;
        this.m = list;
        this.n = i4;
        this.o = i5;
        this.p = i6;
        this.q = z3;
        this.r = orientation;
        this.s = i7;
        this.t = i8;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public final long a() {
        MeasureResult measureResult = this.f5305e;
        long f9530a = (((long) measureResult.getF9530a()) << 32) | (((long) measureResult.getF9531b()) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return f9530a;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getS() {
        return this.s;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: c, reason: from getter */
    public final Orientation getR() {
        return this.r;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getP() {
        return this.p;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public final int e() {
        return -this.n;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getT() {
        return this.t;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: g, reason: from getter */
    public final List getM() {
        return this.m;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getHeight */
    public final int getF9531b() {
        return this.f5305e.getF9531b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getWidth */
    public final int getF9530a() {
        return this.f5305e.getF9530a();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getO() {
        return this.o;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    /* JADX INFO: renamed from: i, reason: from getter */
    public final int getN() {
        return this.n;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: j */
    public final Map getF9532c() {
        return this.f5305e.getF9532c();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void k() {
        this.f5305e.k();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: l */
    public final Function1 getD() {
        return this.f5305e.getD();
    }

    public final LazyGridMeasureResult m(int i2, boolean z) {
        LazyGridMeasuredLine lazyGridMeasuredLine;
        int i3;
        char c2;
        int i4;
        if (this.g) {
            return null;
        }
        List list = this.m;
        if (list.isEmpty() || (lazyGridMeasuredLine = this.f5302a) == null) {
            return null;
        }
        int i5 = lazyGridMeasuredLine.f5327h;
        int i6 = this.f5303b - i2;
        if (i6 < 0 || i6 >= i5) {
            return null;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.B(list);
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.M(list);
        if (lazyGridMeasuredItem.y || lazyGridMeasuredItem2.y) {
            return null;
        }
        int i7 = this.o;
        int i8 = this.n;
        Orientation orientation = this.r;
        if (i2 < 0) {
            if (Math.min((LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem, orientation) + lazyGridMeasuredItem.q) - i8, (LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem2, orientation) + lazyGridMeasuredItem2.q) - i7) <= (-i2)) {
                return null;
            }
        } else if (Math.min(i8 - LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem, orientation), i7 - LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem2, orientation)) <= i2) {
            return null;
        }
        int size = list.size();
        int i9 = 0;
        while (i9 < size) {
            LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list.get(i9);
            boolean z2 = lazyGridMeasuredItem3.f5313c;
            if (lazyGridMeasuredItem3.y) {
                i3 = i9;
            } else {
                long j2 = lazyGridMeasuredItem3.v;
                IntOffset.Companion companion = IntOffset.f11012b;
                int i10 = z2 ? (int) (j2 >> 32) : ((int) (j2 >> 32)) + i2;
                long j3 = BodyPartID.bodyIdMax;
                int i11 = i9;
                long j4 = ((long) i10) << 32;
                char c3 = ' ';
                lazyGridMeasuredItem3.v = j4 | (((long) (z2 ? ((int) (j2 & BodyPartID.bodyIdMax)) + i2 : (int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
                if (z) {
                    int size2 = lazyGridMeasuredItem3.f5317i.size();
                    int i12 = 0;
                    while (i12 < size2) {
                        LazyLayoutItemAnimation lazyLayoutItemAnimationA = lazyGridMeasuredItem3.l.a(i12, lazyGridMeasuredItem3.f5312b);
                        if (lazyLayoutItemAnimationA != null) {
                            long j5 = lazyLayoutItemAnimationA.l;
                            if (z2) {
                                c2 = c3;
                                i4 = (int) (j5 >> c2);
                            } else {
                                c2 = c3;
                                i4 = ((int) (j5 >> c2)) + i2;
                            }
                            lazyLayoutItemAnimationA.l = (((long) i4) << c2) | (((long) (z2 ? ((int) (j5 & j3)) + i2 : (int) (j5 & j3))) & j3);
                        } else {
                            j3 = j3;
                        }
                        i12++;
                        i11 = i11;
                        j3 = j3;
                        c3 = ' ';
                    }
                }
                i3 = i11;
            }
            i9 = i3 + 1;
        }
        return new LazyGridMeasureResult(this.f5302a, i6, this.f5304c || i2 > 0, i2, this.f5305e, this.f5306f, this.g, this.f5307h, this.f5308i, this.f5309j, this.f5310k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t);
    }
}

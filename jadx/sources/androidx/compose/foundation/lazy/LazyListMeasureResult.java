package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u009f\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0005\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0005\u0012\u0006\u0010\u001d\u001a\u00020\u0005¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "firstVisibleItem", "", "firstVisibleItemScrollOffset", "", "canScrollForward", "", "consumedScroll", "measureResult", "scrollBackAmount", "remeasureNeeded", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/unit/Constraints;", "childConstraints", "", "visibleItemsInfo", "viewportStartOffset", "viewportEndOffset", "totalItemsCount", "reverseLayout", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "afterContentPadding", "mainAxisItemSpacing", "<init>", "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListMeasureResult implements LazyListLayoutInfo, MeasureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyListMeasuredItem f5203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5205c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MeasureResult f5206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f5207f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CoroutineScope f5208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Density f5209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f5210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f5211k;
    public final int l;
    public final int m;
    public final int n;
    public final boolean o;
    public final Orientation p;
    public final int q;
    public final int r;

    public LazyListMeasureResult(LazyListMeasuredItem lazyListMeasuredItem, int i2, boolean z, float f2, MeasureResult measureResult, float f3, boolean z2, CoroutineScope coroutineScope, Density density, long j2, List list, int i3, int i4, int i5, boolean z3, Orientation orientation, int i6, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5203a = lazyListMeasuredItem;
        this.f5204b = i2;
        this.f5205c = z;
        this.d = f2;
        this.f5206e = measureResult;
        this.f5207f = f3;
        this.g = z2;
        this.f5208h = coroutineScope;
        this.f5209i = density;
        this.f5210j = j2;
        this.f5211k = list;
        this.l = i3;
        this.m = i4;
        this.n = i5;
        this.o = z3;
        this.p = orientation;
        this.q = i6;
        this.r = i7;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    public final long a() {
        MeasureResult measureResult = this.f5206e;
        long f9530a = (((long) measureResult.getF9530a()) << 32) | (((long) measureResult.getF9531b()) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return f9530a;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getQ() {
        return this.q;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: c, reason: from getter */
    public final Orientation getP() {
        return this.p;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getN() {
        return this.n;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    public final int e() {
        return -this.l;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getR() {
        return this.r;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: g, reason: from getter */
    public final List getF5211k() {
        return this.f5211k;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getHeight */
    public final int getF9531b() {
        return this.f5206e.getF9531b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: getWidth */
    public final int getF9530a() {
        return this.f5206e.getF9530a();
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getM() {
        return this.m;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    /* JADX INFO: renamed from: i, reason: from getter */
    public final int getL() {
        return this.l;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: j */
    public final Map getF9532c() {
        return this.f5206e.getF9532c();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void k() {
        this.f5206e.k();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    /* JADX INFO: renamed from: l */
    public final Function1 getD() {
        return this.f5206e.getD();
    }

    public final LazyListMeasureResult m(int i2, boolean z) {
        LazyListMeasuredItem lazyListMeasuredItem;
        int i3;
        int i4;
        if (this.g) {
            return null;
        }
        List list = this.f5211k;
        if (list.isEmpty() || (lazyListMeasuredItem = this.f5203a) == null) {
            return null;
        }
        int i5 = lazyListMeasuredItem.r;
        int i6 = this.f5204b - i2;
        if (i6 < 0 || i6 >= i5) {
            return null;
        }
        LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.B(list);
        LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.M(list);
        if (lazyListMeasuredItem2.t || lazyListMeasuredItem3.t) {
            return null;
        }
        int i7 = lazyListMeasuredItem2.p;
        int i8 = this.m;
        int i9 = this.l;
        if (i2 < 0) {
            if (Math.min((i7 + lazyListMeasuredItem2.r) - i9, (lazyListMeasuredItem3.p + lazyListMeasuredItem3.r) - i8) <= (-i2)) {
                return null;
            }
        } else if (Math.min(i9 - i7, i8 - lazyListMeasuredItem3.p) <= i2) {
            return null;
        }
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            LazyListMeasuredItem lazyListMeasuredItem4 = (LazyListMeasuredItem) list.get(i10);
            boolean z2 = lazyListMeasuredItem4.f5214c;
            int[] iArr = lazyListMeasuredItem4.x;
            if (!lazyListMeasuredItem4.t) {
                lazyListMeasuredItem4.p += i2;
                int length = iArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    int i12 = i11 & 1;
                    if ((z2 && i12 != 0) || (!z2 && i12 == 0)) {
                        iArr[i11] = iArr[i11] + i2;
                    }
                }
                if (z) {
                    int size2 = lazyListMeasuredItem4.f5213b.size();
                    int i13 = 0;
                    while (i13 < size2) {
                        LazyLayoutItemAnimation lazyLayoutItemAnimationA = lazyListMeasuredItem4.n.a(i13, lazyListMeasuredItem4.l);
                        if (lazyLayoutItemAnimationA != null) {
                            long j2 = lazyLayoutItemAnimationA.l;
                            if (z2) {
                                IntOffset.Companion companion = IntOffset.f11012b;
                                i3 = (int) (j2 >> 32);
                                i4 = ((int) (j2 & BodyPartID.bodyIdMax)) + i2;
                            } else {
                                IntOffset.Companion companion2 = IntOffset.f11012b;
                                i3 = ((int) (j2 >> 32)) + i2;
                                i4 = (int) (j2 & BodyPartID.bodyIdMax);
                            }
                            lazyLayoutItemAnimationA.l = (((long) i4) & BodyPartID.bodyIdMax) | (((long) i3) << 32);
                        } else {
                            i10 = i10;
                        }
                        i13++;
                        i10 = i10;
                    }
                }
            }
            i10++;
        }
        return new LazyListMeasureResult(this.f5203a, i6, this.f5205c || i2 > 0, i2, this.f5206e, this.f5207f, this.g, this.f5208h, this.f5209i, this.f5210j, this.f5211k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, null);
    }
}

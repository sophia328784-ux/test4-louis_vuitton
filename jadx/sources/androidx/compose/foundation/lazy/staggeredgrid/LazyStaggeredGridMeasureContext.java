package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.graphics.GraphicsContext;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B¥\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001a\u001a\u00020\r\u0012\u0006\u0010\u001b\u001a\u00020\r\u0012\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0004\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;", "", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "state", "", "", "pinnedItems", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "itemProvider", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "resolvedSlots", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "", "isVertical", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "measureScope", "mainAxisAvailableSize", "Landroidx/compose/ui/unit/IntOffset;", "contentOffset", "beforeContentPadding", "afterContentPadding", "reverseLayout", "mainAxisSpacing", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "isInLookaheadScope", "isLookingAhead", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;", "approachVisibleItems", "Landroidx/compose/ui/graphics/GraphicsContext;", "graphicsContext", "<init>", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZILkotlinx/coroutines/CoroutineScope;ZZLjava/util/List;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridMeasureContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyStaggeredGridState f5613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f5614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyStaggeredGridItemProvider f5615c;
    public final LazyStaggeredGridSlots d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f5616e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5617f;
    public final LazyLayoutMeasureScope g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5618h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f5619i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5620j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f5621k;
    public final boolean l;
    public final int m;
    public final CoroutineScope n;
    public final boolean o;
    public final List p;
    public final GraphicsContext q;
    public final LazyStaggeredGridMeasureContext$measuredItemProvider$1 r;
    public final LazyStaggeredGridLaneInfo s;
    public final int t;

    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext$measuredItemProvider$1] */
    public LazyStaggeredGridMeasureContext(LazyStaggeredGridState lazyStaggeredGridState, List list, final LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider, final LazyStaggeredGridSlots lazyStaggeredGridSlots, long j2, final boolean z, final LazyLayoutMeasureScope lazyLayoutMeasureScope, int i2, long j3, int i3, int i4, boolean z2, int i5, CoroutineScope coroutineScope, boolean z3, boolean z4, List list2, GraphicsContext graphicsContext, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5613a = lazyStaggeredGridState;
        this.f5614b = list;
        this.f5615c = lazyStaggeredGridItemProvider;
        this.d = lazyStaggeredGridSlots;
        this.f5616e = j2;
        this.f5617f = z;
        this.g = lazyLayoutMeasureScope;
        this.f5618h = i2;
        this.f5619i = j3;
        this.f5620j = i3;
        this.f5621k = i4;
        this.l = z2;
        this.m = i5;
        this.n = coroutineScope;
        this.o = z3;
        this.p = list2;
        this.q = graphicsContext;
        this.r = new LazyStaggeredGridMeasureProvider(z, lazyStaggeredGridItemProvider, lazyLayoutMeasureScope, lazyStaggeredGridSlots) { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext$measuredItemProvider$1
            @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureProvider
            public final LazyStaggeredGridMeasuredItem c(int i6, int i7, int i8, Object obj, Object obj2, List list3, long j4) {
                LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = this.f5622f;
                return new LazyStaggeredGridMeasuredItem(i6, obj, list3, lazyStaggeredGridMeasureContext.f5617f, lazyStaggeredGridMeasureContext.m, i7, i8, lazyStaggeredGridMeasureContext.f5620j, lazyStaggeredGridMeasureContext.f5621k, obj2, lazyStaggeredGridMeasureContext.f5613a.t, j4, null);
            }
        };
        this.s = lazyStaggeredGridState.f5668e;
        this.t = lazyStaggeredGridSlots.f5663b.length;
    }

    public final long a(LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider, int i2, int i3) {
        boolean zA = lazyStaggeredGridItemProvider.h().a(i2);
        int i4 = zA ? this.t : 1;
        if (zA) {
            i3 = 0;
        }
        return (((long) i3) << 32) | (((long) (i4 + i3)) & BodyPartID.bodyIdMax);
    }
}

package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0095\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00000\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;", "", "index", "", ConfigurationName.KEY, "", "isVertical", "crossAxisSize", "mainAxisSpacing", "reverseLayout", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "beforeContentPadding", "afterContentPadding", "", "Landroidx/compose/ui/layout/Placeable;", "placeables", "Landroidx/compose/ui/unit/IntOffset;", "visualOffset", CMSAttributeTableGenerator.CONTENT_TYPE, "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "lane", "span", "<init>", "(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridMeasuredItem implements LazyGridItemInfo, LazyLayoutMeasuredItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5313c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LayoutDirection f5315f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f5317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f5318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f5319k;
    public final LazyLayoutItemAnimator l;
    public final long m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public int r = Integer.MIN_VALUE;
    public int s;
    public int t;
    public final long u;
    public long v;
    public int w;
    public int x;
    public boolean y;

    public LazyGridMeasuredItem(int i2, Object obj, boolean z, int i3, int i4, boolean z2, LayoutDirection layoutDirection, int i5, int i6, List list, long j2, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j3, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        long j4;
        this.f5311a = i2;
        this.f5312b = obj;
        this.f5313c = z;
        this.d = i3;
        this.f5314e = z2;
        this.f5315f = layoutDirection;
        this.g = i5;
        this.f5316h = i6;
        this.f5317i = list;
        this.f5318j = j2;
        this.f5319k = obj2;
        this.l = lazyLayoutItemAnimator;
        this.m = j3;
        this.n = i7;
        this.o = i8;
        int size = list.size();
        int iMax = 0;
        for (int i9 = 0; i9 < size; i9++) {
            Placeable placeable = (Placeable) list.get(i9);
            iMax = Math.max(iMax, this.f5313c ? placeable.f9549c : placeable.f9548b);
        }
        this.p = iMax;
        int i10 = i4 + iMax;
        this.q = i10 >= 0 ? i10 : 0;
        boolean z3 = this.f5313c;
        int i11 = this.d;
        if (z3) {
            j4 = (((long) i11) << 32) | (((long) iMax) & BodyPartID.bodyIdMax);
            IntSize.Companion companion = IntSize.f11020b;
        } else {
            j4 = (((long) i11) & BodyPartID.bodyIdMax) | (((long) iMax) << 32);
            IntSize.Companion companion2 = IntSize.f11020b;
        }
        this.u = j4;
        IntOffset.f11012b.getClass();
        this.v = 0L;
        this.w = -1;
        this.x = -1;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getU() {
        return this.u;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int b() {
        return this.f5317i.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: c, reason: from getter */
    public final long getM() {
        return this.m;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void d(int i2, int i3, int i4, int i5) {
        r(i2, i3, i4, i5, -1, -1);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getN() {
        return this.n;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final long getV() {
        return this.v;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getY() {
        return this.y;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5311a() {
        return this.f5311a;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final Object getF5312b() {
        return this.f5312b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getO() {
        return this.o;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: i, reason: from getter */
    public final int getW() {
        return this.w;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getF5313c() {
        return this.f5313c;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: k, reason: from getter */
    public final int getX() {
        return this.x;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: l, reason: from getter */
    public final int getQ() {
        return this.q;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object m(int i2) {
        return ((Placeable) this.f5317i.get(i2)).getT();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void n() {
        this.y = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long o(int i2) {
        return this.v;
    }

    public final int p(long j2) {
        long j3;
        if (this.f5313c) {
            IntOffset.Companion companion = IntOffset.f11012b;
            j3 = j2 & BodyPartID.bodyIdMax;
        } else {
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j3 = j2 >> 32;
        }
        return (int) j3;
    }

    public final void q(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        if (this.r == Integer.MIN_VALUE) {
            InlineClassHelperKt.a("position() should be called first");
        }
        List list = this.f5317i;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Placeable placeable = (Placeable) list.get(i2);
            int i3 = this.s;
            boolean z2 = this.f5313c;
            int i4 = i3 - (z2 ? placeable.f9549c : placeable.f9548b);
            int i5 = this.t;
            long j2 = this.v;
            LazyLayoutItemAnimation lazyLayoutItemAnimationA = this.l.a(i2, this.f5312b);
            if (lazyLayoutItemAnimationA != null) {
                if (z) {
                    lazyLayoutItemAnimationA.r = j2;
                } else {
                    long j3 = lazyLayoutItemAnimationA.r;
                    LazyLayoutItemAnimation.s.getClass();
                    long jD = IntOffset.d(!IntOffset.b(j3, LazyLayoutItemAnimation.t) ? lazyLayoutItemAnimationA.r : j2, ((IntOffset) ((SnapshotMutableStateImpl) lazyLayoutItemAnimationA.q).getF10755b()).f11014a);
                    if ((p(j2) <= i4 && p(jD) <= i4) || (p(j2) >= i5 && p(jD) >= i5)) {
                        lazyLayoutItemAnimationA.b();
                    }
                    j2 = jD;
                }
                graphicsLayer = lazyLayoutItemAnimationA.n;
            } else {
                graphicsLayer = null;
            }
            if (this.f5314e) {
                IntOffset.Companion companion = IntOffset.f11012b;
                j2 = (((long) (z2 ? (int) (j2 >> 32) : (this.r - ((int) (j2 >> 32))) - (z2 ? placeable.f9549c : placeable.f9548b))) << 32) | (((long) (z2 ? (this.r - ((int) (j2 & BodyPartID.bodyIdMax))) - (z2 ? placeable.f9549c : placeable.f9548b) : (int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
            }
            long jD2 = IntOffset.d(j2, this.f5318j);
            if (!z && lazyLayoutItemAnimationA != null) {
                lazyLayoutItemAnimationA.m = jD2;
            }
            if (z2) {
                if (graphicsLayer != null) {
                    placementScope.getClass();
                    Placeable.PlacementScope.c(placementScope, placeable);
                    placeable.o0(IntOffset.d(jD2, placeable.f9551f), Call.Parameters.DEFAULT_CAMERA_ZOOM, graphicsLayer);
                } else {
                    Placeable.PlacementScope.H(placementScope, placeable, jD2);
                }
            } else if (graphicsLayer != null) {
                Placeable.PlacementScope.C(placementScope, placeable, jD2, graphicsLayer);
            } else {
                Placeable.PlacementScope.B(placementScope, placeable, jD2);
            }
        }
    }

    public final void r(int i2, int i3, int i4, int i5, int i6, int i7) {
        long j2;
        boolean z = this.f5313c;
        int i8 = z ? i5 : i4;
        this.r = i8;
        if (!z) {
            i4 = i5;
        }
        if (z && this.f5315f == LayoutDirection.Rtl) {
            i3 = (i4 - i3) - this.d;
        }
        if (z) {
            j2 = (((long) i2) & BodyPartID.bodyIdMax) | (((long) i3) << 32);
            IntOffset.Companion companion = IntOffset.f11012b;
        } else {
            j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
            IntOffset.Companion companion2 = IntOffset.f11012b;
        }
        this.v = j2;
        this.w = i6;
        this.x = i7;
        this.s = -this.g;
        this.t = i8 + this.f5316h;
    }
}

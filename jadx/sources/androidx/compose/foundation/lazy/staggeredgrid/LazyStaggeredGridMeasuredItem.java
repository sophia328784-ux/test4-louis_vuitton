package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;", "", "index", "", ConfigurationName.KEY, "", "Landroidx/compose/ui/layout/Placeable;", "placeables", "", "isVertical", "spacing", "lane", "span", "beforeContentPadding", "afterContentPadding", CMSAttributeTableGenerator.CONTENT_TYPE, "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "<init>", "(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridMeasuredItem implements LazyStaggeredGridItemInfo, LazyLayoutMeasuredItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f5645c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5647f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f5649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LazyLayoutItemAnimator f5650j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f5651k;
    public boolean l = true;
    public final int m;
    public final int n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public final long s;
    public long t;

    public LazyStaggeredGridMeasuredItem(int i2, Object obj, List list, boolean z, int i3, int i4, int i5, int i6, int i7, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        int i8;
        long j3;
        this.f5643a = i2;
        this.f5644b = obj;
        this.f5645c = list;
        this.d = z;
        this.f5646e = i4;
        this.f5647f = i5;
        this.g = i6;
        this.f5648h = i7;
        this.f5649i = obj2;
        this.f5650j = lazyLayoutItemAnimator;
        this.f5651k = j2;
        int i9 = 1;
        int i10 = 0;
        if (!list.isEmpty()) {
            Placeable placeable = (Placeable) list.get(0);
            i8 = z ? placeable.f9549c : placeable.f9548b;
            int size = list.size() - 1;
            if (1 <= size) {
                int i11 = 1;
                while (true) {
                    Placeable placeable2 = (Placeable) list.get(i11);
                    int i12 = this.d ? placeable2.f9549c : placeable2.f9548b;
                    i8 = i12 > i8 ? i12 : i8;
                    if (i11 == size) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        } else {
            i8 = 0;
        }
        this.m = i8;
        int i13 = i8 + i3;
        this.n = i13 < 0 ? 0 : i13;
        List list2 = this.f5645c;
        if (!list2.isEmpty()) {
            Placeable placeable3 = (Placeable) list2.get(0);
            int i14 = this.d ? placeable3.f9548b : placeable3.f9549c;
            int size2 = list2.size() - 1;
            if (1 <= size2) {
                while (true) {
                    Placeable placeable4 = (Placeable) list2.get(i9);
                    int i15 = this.d ? placeable4.f9548b : placeable4.f9549c;
                    i14 = i15 > i14 ? i15 : i14;
                    if (i9 == size2) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            i10 = i14;
        }
        this.o = Integer.MIN_VALUE;
        boolean z2 = this.d;
        int i16 = this.m;
        if (z2) {
            j3 = (((long) i16) & BodyPartID.bodyIdMax) | (((long) i10) << 32);
            IntSize.Companion companion = IntSize.f11020b;
        } else {
            j3 = (((long) i16) << 32) | (BodyPartID.bodyIdMax & ((long) i10));
            IntSize.Companion companion2 = IntSize.f11020b;
        }
        this.s = j3;
        IntOffset.f11012b.getClass();
        this.t = 0L;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getS() {
        return this.s;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int b() {
        return this.f5645c.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: c, reason: from getter */
    public final long getF5651k() {
        return this.f5651k;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void d(int i2, int i3, int i4, int i5) {
        if (this.d) {
            i4 = i5;
        }
        p(i2, i3, i4);
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getF5646e() {
        return this.f5646e;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: f, reason: from getter */
    public final long getT() {
        return this.t;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getR() {
        return this.r;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5643a() {
        return this.f5643a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final Object getF5644b() {
        return this.f5644b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getF5647f() {
        return this.f5647f;
    }

    public final int i(long j2) {
        long j3;
        if (this.d) {
            IntOffset.Companion companion = IntOffset.f11012b;
            j3 = j2 & BodyPartID.bodyIdMax;
        } else {
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j3 = j2 >> 32;
        }
        return (int) j3;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getD() {
        return this.d;
    }

    public final int k() {
        long j2;
        long j3 = this.t;
        if (this.d) {
            IntOffset.Companion companion = IntOffset.f11012b;
            j2 = j3 & BodyPartID.bodyIdMax;
        } else {
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: l, reason: from getter */
    public final int getN() {
        return this.n;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object m(int i2) {
        return ((Placeable) this.f5645c.get(i2)).getT();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void n() {
        this.r = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long o(int i2) {
        return this.t;
    }

    public final void p(int i2, int i3, int i4) {
        long j2;
        this.o = i4;
        this.p = -this.g;
        this.q = i4 + this.f5648h;
        if (this.d) {
            j2 = (((long) i3) << 32) | (BodyPartID.bodyIdMax & ((long) i2));
            IntOffset.Companion companion = IntOffset.f11012b;
        } else {
            j2 = (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
            IntOffset.Companion companion2 = IntOffset.f11012b;
        }
        this.t = j2;
    }
}

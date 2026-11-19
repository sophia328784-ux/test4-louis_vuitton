package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0091\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0016\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00000\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "Landroidx/compose/foundation/lazy/LazyListItemInfo;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;", "", "index", "", "Landroidx/compose/ui/layout/Placeable;", "placeables", "", "isVertical", "Landroidx/compose/ui/Alignment$Horizontal;", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "verticalAlignment", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "reverseLayout", "beforeContentPadding", "afterContentPadding", "spacing", "Landroidx/compose/ui/unit/IntOffset;", "visualOffset", "", ConfigurationName.KEY, CMSAttributeTableGenerator.CONTENT_TYPE, "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "<init>", "(ILjava/util/List;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListMeasuredItem implements LazyListItemInfo, LazyLayoutMeasuredItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f5213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5214c;
    public final Alignment.Horizontal d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Alignment.Vertical f5215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LayoutDirection f5216f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5219j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f5220k;
    public final Object l;
    public final Object m;
    public final LazyLayoutItemAnimator n;
    public final long o;
    public int p;
    public final int q;
    public final int r;
    public final int s;
    public boolean t;
    public int u = Integer.MIN_VALUE;
    public int v;
    public int w;
    public final int[] x;

    public LazyListMeasuredItem(int i2, List list, boolean z, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z2, int i3, int i4, int i5, long j2, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5212a = i2;
        this.f5213b = list;
        this.f5214c = z;
        this.d = horizontal;
        this.f5215e = vertical;
        this.f5216f = layoutDirection;
        this.g = z2;
        this.f5217h = i3;
        this.f5218i = i4;
        this.f5219j = i5;
        this.f5220k = j2;
        this.l = obj;
        this.m = obj2;
        this.n = lazyLayoutItemAnimator;
        this.o = j3;
        int size = list.size();
        int i6 = 0;
        int iMax = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Placeable placeable = (Placeable) list.get(i7);
            boolean z3 = this.f5214c;
            i6 += z3 ? placeable.f9549c : placeable.f9548b;
            iMax = Math.max(iMax, !z3 ? placeable.f9549c : placeable.f9548b);
        }
        this.q = i6;
        int i8 = i6 + this.f5219j;
        this.r = i8 >= 0 ? i8 : 0;
        this.s = iMax;
        this.x = new int[this.f5213b.size() * 2];
    }

    public final int a(long j2) {
        long j3;
        if (this.f5214c) {
            IntOffset.Companion companion = IntOffset.f11012b;
            j3 = j2 & BodyPartID.bodyIdMax;
        } else {
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j3 = j2 >> 32;
        }
        return (int) j3;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int b() {
        return this.f5213b.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: c, reason: from getter */
    public final long getF5651k() {
        return this.o;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void d(int i2, int i3, int i4, int i5) {
        i(i2, i4, i5);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: e */
    public final int getF5646e() {
        return 0;
    }

    public final void f(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        long j2;
        if (this.u == Integer.MIN_VALUE) {
            InlineClassHelperKt.a("position() should be called first");
        }
        List list = this.f5213b;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Placeable placeable = (Placeable) list.get(i2);
            int i3 = this.v;
            boolean z2 = this.f5214c;
            int i4 = i3 - (z2 ? placeable.f9549c : placeable.f9548b);
            int i5 = this.w;
            long jO = o(i2);
            LazyLayoutItemAnimation lazyLayoutItemAnimationA = this.n.a(i2, this.l);
            if (lazyLayoutItemAnimationA != null) {
                if (z) {
                    lazyLayoutItemAnimationA.r = jO;
                } else {
                    long j3 = lazyLayoutItemAnimationA.r;
                    LazyLayoutItemAnimation.s.getClass();
                    if (!IntOffset.b(j3, LazyLayoutItemAnimation.t)) {
                        jO = lazyLayoutItemAnimationA.r;
                    }
                    long jD = IntOffset.d(jO, ((IntOffset) ((SnapshotMutableStateImpl) lazyLayoutItemAnimationA.q).getF10755b()).f11014a);
                    if ((a(jO) <= i4 && a(jD) <= i4) || (a(jO) >= i5 && a(jD) >= i5)) {
                        lazyLayoutItemAnimationA.b();
                    }
                    jO = jD;
                }
                graphicsLayer = lazyLayoutItemAnimationA.n;
            } else {
                graphicsLayer = null;
            }
            if (this.g) {
                IntOffset.Companion companion = IntOffset.f11012b;
                if (z2) {
                    j2 = (((long) ((int) (jO >> 32))) << 32) | (BodyPartID.bodyIdMax & ((long) ((this.u - ((int) (jO & BodyPartID.bodyIdMax))) - (z2 ? placeable.f9549c : placeable.f9548b))));
                } else {
                    j2 = (((long) ((int) (jO & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (((long) ((this.u - ((int) (jO >> 32))) - (z2 ? placeable.f9549c : placeable.f9548b))) << 32);
                }
                jO = j2;
            }
            long jD2 = IntOffset.d(jO, this.f5220k);
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

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getR() {
        return this.t;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getIndex, reason: from getter */
    public final int getF5643a() {
        return this.f5212a;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final Object getF5644b() {
        return this.l;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    /* JADX INFO: renamed from: getOffset, reason: from getter */
    public final int getP() {
        return this.p;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    /* JADX INFO: renamed from: getSize, reason: from getter */
    public final int getQ() {
        return this.q;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: h */
    public final int getF5647f() {
        return 1;
    }

    public final void i(int i2, int i3, int i4) {
        int i5;
        this.p = i2;
        boolean z = this.f5214c;
        this.u = z ? i4 : i3;
        List list = this.f5213b;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            Placeable placeable = (Placeable) list.get(i6);
            int i7 = i6 * 2;
            int[] iArr = this.x;
            if (z) {
                Alignment.Horizontal horizontal = this.d;
                if (horizontal == null) {
                    throw o60.u("null horizontalAlignment when isVertical == true");
                }
                iArr[i7] = horizontal.a(placeable.f9548b, i3, this.f5216f);
                iArr[i7 + 1] = i2;
                i5 = placeable.f9549c;
            } else {
                iArr[i7] = i2;
                int i8 = i7 + 1;
                Alignment.Vertical vertical = this.f5215e;
                if (vertical == null) {
                    throw o60.u("null verticalAlignment when isVertical == false");
                }
                iArr[i8] = vertical.a(placeable.f9549c, i4);
                i5 = placeable.f9548b;
            }
            i2 += i5;
        }
        this.v = -this.f5217h;
        this.w = this.u + this.f5218i;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getD() {
        return this.f5214c;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: l, reason: from getter */
    public final int getN() {
        return this.r;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object m(int i2) {
        return ((Placeable) this.f5213b.get(i2)).getT();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void n() {
        this.t = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long o(int i2) {
        if (i2 != 0 || this.f5213b.size() != 0) {
            int i3 = i2 * 2;
            int[] iArr = this.x;
            int i4 = iArr[i3];
            long j2 = (((long) iArr[i3 + 1]) & BodyPartID.bodyIdMax) | (((long) i4) << 32);
            IntOffset.Companion companion = IntOffset.f11012b;
            return j2;
        }
        int i5 = this.p;
        if (this.f5214c) {
            long j3 = ((long) i5) & BodyPartID.bodyIdMax;
            IntOffset.Companion companion2 = IntOffset.f11012b;
            return j3;
        }
        long j4 = ((long) i5) << 32;
        IntOffset.Companion companion3 = IntOffset.f11012b;
        return j4;
    }
}

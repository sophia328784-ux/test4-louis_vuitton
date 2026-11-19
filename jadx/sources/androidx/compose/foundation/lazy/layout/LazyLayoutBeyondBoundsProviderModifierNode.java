package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a2;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000fB'\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;", "Landroidx/compose/ui/layout/BeyondBoundsLayout;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;", "state", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "beyondBoundsInfo", "", "reverseLayout", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutBeyondBoundsProviderModifierNode extends Modifier.Node implements LayoutModifierNode, BeyondBoundsLayoutProviderModifierNode, BeyondBoundsLayout {
    public static final LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 t;
    public LazyLayoutBeyondBoundsState p;
    public LazyLayoutBeyondBoundsInfo q;
    public boolean r;
    public Orientation s;

    @Metadata(d1 = {"\u0000\u000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004*\u0001\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$Companion;", "", "androidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1", "emptyBeyondBoundsScope", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5418a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f5418a = iArr;
        }
    }

    static {
        new Companion(null);
        t = new LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1();
    }

    public LazyLayoutBeyondBoundsProviderModifierNode(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, boolean z, Orientation orientation) {
        this.p = lazyLayoutBeyondBoundsState;
        this.q = lazyLayoutBeyondBoundsInfo;
        this.r = z;
        this.s = orientation;
    }

    @Override // androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode
    public final LazyLayoutBeyondBoundsProviderModifierNode A1() {
        return this;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 8));
    }

    @Override // androidx.compose.ui.layout.BeyondBoundsLayout
    public final Object h0(final int i2, Function1 function1) {
        if (this.p.b() <= 0 || !this.p.a() || !this.o) {
            return function1.invoke(t);
        }
        boolean zI2 = i2(i2);
        LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState = this.p;
        int iE = zI2 ? lazyLayoutBeyondBoundsState.e() : lazyLayoutBeyondBoundsState.d();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = this.q;
        lazyLayoutBeyondBoundsInfo.getClass();
        LazyLayoutBeyondBoundsInfo.Interval interval = new LazyLayoutBeyondBoundsInfo.Interval(iE, iE);
        lazyLayoutBeyondBoundsInfo.f5412a.b(interval);
        ref$ObjectRef.f71921b = interval;
        int iC = this.p.c() * 2;
        int iB = this.p.b();
        if (iC > iB) {
            iC = iB;
        }
        Object objInvoke = null;
        int i3 = 0;
        while (objInvoke == null && h2((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.f71921b, i2) && i3 < iC) {
            LazyLayoutBeyondBoundsInfo.Interval interval2 = (LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.f71921b;
            int i4 = interval2.f5413a;
            int i5 = interval2.f5414b;
            if (i2(i2)) {
                i5++;
            } else {
                i4--;
            }
            LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo2 = this.q;
            lazyLayoutBeyondBoundsInfo2.getClass();
            LazyLayoutBeyondBoundsInfo.Interval interval3 = new LazyLayoutBeyondBoundsInfo.Interval(i4, i5);
            lazyLayoutBeyondBoundsInfo2.f5412a.b(interval3);
            this.q.f5412a.n((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.f71921b);
            ref$ObjectRef.f71921b = interval3;
            i3++;
            DelegatableNodeKt.f(this).e();
            objInvoke = function1.invoke(new BeyondBoundsLayout.BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode$layout$2
                @Override // androidx.compose.ui.layout.BeyondBoundsLayout.BeyondBoundsScope
                public final boolean a() {
                    LazyLayoutBeyondBoundsInfo.Interval interval4 = (LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.f71921b;
                    LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 lazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 = LazyLayoutBeyondBoundsProviderModifierNode.t;
                    return this.f5419a.h2(interval4, i2);
                }
            });
        }
        this.q.f5412a.n((LazyLayoutBeyondBoundsInfo.Interval) ref$ObjectRef.f71921b);
        DelegatableNodeKt.f(this).e();
        return objInvoke;
    }

    public final boolean h2(LazyLayoutBeyondBoundsInfo.Interval interval, int i2) {
        BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
        if (i2 == BeyondBoundsLayout.LayoutDirection.f9441f || i2 == BeyondBoundsLayout.LayoutDirection.g) {
            if (this.s == Orientation.Horizontal) {
                return false;
            }
        } else if (i2 == BeyondBoundsLayout.LayoutDirection.d || i2 == BeyondBoundsLayout.LayoutDirection.f9440e) {
            if (this.s == Orientation.Vertical) {
                return false;
            }
        } else if (i2 != BeyondBoundsLayout.LayoutDirection.f9438b && i2 != BeyondBoundsLayout.LayoutDirection.f9439c) {
            md.k("Lazy list does not support beyond bounds layout for the specified direction");
            return false;
        }
        if (i2(i2)) {
            if (interval.f5414b >= this.p.b() - 1) {
                return false;
            }
        } else if (interval.f5413a <= 0) {
            return false;
        }
        return true;
    }

    public final boolean i2(int i2) {
        BeyondBoundsLayout.LayoutDirection.f9437a.getClass();
        if (i2 == BeyondBoundsLayout.LayoutDirection.f9438b) {
            return false;
        }
        if (i2 != BeyondBoundsLayout.LayoutDirection.f9439c) {
            if (i2 == BeyondBoundsLayout.LayoutDirection.f9441f) {
                return this.r;
            }
            if (i2 == BeyondBoundsLayout.LayoutDirection.g) {
                if (this.r) {
                    return false;
                }
            } else if (i2 == BeyondBoundsLayout.LayoutDirection.d) {
                int i3 = WhenMappings.f5418a[DelegatableNodeKt.f(this).B.ordinal()];
                if (i3 == 1) {
                    return this.r;
                }
                if (i3 != 2) {
                    v40.g();
                    return false;
                }
                if (this.r) {
                    return false;
                }
            } else {
                if (i2 != BeyondBoundsLayout.LayoutDirection.f9440e) {
                    md.k("Lazy list does not support beyond bounds layout for the specified direction");
                    return false;
                }
                int i4 = WhenMappings.f5418a[DelegatableNodeKt.f(this).B.ordinal()];
                if (i4 != 1) {
                    if (i4 == 2) {
                        return this.r;
                    }
                    v40.g();
                    return false;
                }
                if (this.r) {
                    return false;
                }
            }
        }
        return true;
    }
}

package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BW\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/ScrollableAreaElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/ScrollableAreaNode;", "Landroidx/compose/foundation/gestures/ScrollableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "reverseScrolling", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "bringIntoViewSpec", "useLocalOverscrollFactory", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "<init>", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ScrollableAreaElement extends ModifierNodeElement<ScrollableAreaNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollableState f4297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Orientation f4298c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FlingBehavior f4300f;
    public final MutableInteractionSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BringIntoViewSpec f4301h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4302i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final OverscrollEffect f4303j;

    public ScrollableAreaElement(ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec, boolean z3, OverscrollEffect overscrollEffect) {
        this.f4297b = scrollableState;
        this.f4298c = orientation;
        this.d = z;
        this.f4299e = z2;
        this.f4300f = flingBehavior;
        this.g = mutableInteractionSource;
        this.f4301h = bringIntoViewSpec;
        this.f4302i = z3;
        this.f4303j = overscrollEffect;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ScrollableAreaNode(this.f4297b, this.f4298c, this.d, this.f4299e, this.f4300f, this.g, this.f4301h, this.f4302i, this.f4303j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ScrollableAreaElement.class != obj.getClass()) {
            return false;
        }
        ScrollableAreaElement scrollableAreaElement = (ScrollableAreaElement) obj;
        return Intrinsics.c(this.f4297b, scrollableAreaElement.f4297b) && this.f4298c == scrollableAreaElement.f4298c && this.d == scrollableAreaElement.d && this.f4299e == scrollableAreaElement.f4299e && Intrinsics.c(this.f4300f, scrollableAreaElement.f4300f) && Intrinsics.c(this.g, scrollableAreaElement.g) && Intrinsics.c(this.f4301h, scrollableAreaElement.f4301h) && this.f4302i == scrollableAreaElement.f4302i && Intrinsics.c(this.f4303j, scrollableAreaElement.f4303j);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((ScrollableAreaNode) node).m2(this.f4297b, this.f4298c, this.f4302i, this.d, this.f4300f, this.g, this.f4301h, this.f4299e, this.f4303j);
    }

    public final int hashCode() {
        int iB = o60.b(o60.b((this.f4298c.hashCode() + (this.f4297b.hashCode() * 31)) * 31, 31, this.d), 31, this.f4299e);
        FlingBehavior flingBehavior = this.f4300f;
        int iHashCode = (iB + (flingBehavior != null ? flingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSource mutableInteractionSource = this.g;
        int iHashCode2 = (iHashCode + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        BringIntoViewSpec bringIntoViewSpec = this.f4301h;
        int iB2 = o60.b((iHashCode2 + (bringIntoViewSpec != null ? bringIntoViewSpec.hashCode() : 0)) * 31, 31, this.f4302i);
        OverscrollEffect overscrollEffect = this.f4303j;
        return iB2 + (overscrollEffect != null ? overscrollEffect.hashCode() : 0);
    }
}

package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BO\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/gestures/ScrollableNode;", "Landroidx/compose/foundation/gestures/ScrollableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "", "enabled", "reverseDirection", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "bringIntoViewSpec", "<init>", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ScrollableElement extends ModifierNodeElement<ScrollableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollableState f4668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Orientation f4669c;
    public final OverscrollEffect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4671f;
    public final FlingBehavior g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableInteractionSource f4672h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BringIntoViewSpec f4673i;

    public ScrollableElement(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        this.f4668b = scrollableState;
        this.f4669c = orientation;
        this.d = overscrollEffect;
        this.f4670e = z;
        this.f4671f = z2;
        this.g = flingBehavior;
        this.f4672h = mutableInteractionSource;
        this.f4673i = bringIntoViewSpec;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ScrollableNode(this.f4668b, this.d, this.g, this.f4669c, this.f4670e, this.f4671f, this.f4672h, this.f4673i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollableElement)) {
            return false;
        }
        ScrollableElement scrollableElement = (ScrollableElement) obj;
        return Intrinsics.c(this.f4668b, scrollableElement.f4668b) && this.f4669c == scrollableElement.f4669c && Intrinsics.c(this.d, scrollableElement.d) && this.f4670e == scrollableElement.f4670e && this.f4671f == scrollableElement.f4671f && Intrinsics.c(this.g, scrollableElement.g) && Intrinsics.c(this.f4672h, scrollableElement.f4672h) && Intrinsics.c(this.f4673i, scrollableElement.f4673i);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((ScrollableNode) node).C2(this.f4668b, this.f4669c, this.d, this.f4670e, this.f4671f, this.g, this.f4672h, this.f4673i);
    }

    public final int hashCode() {
        int iHashCode = (this.f4669c.hashCode() + (this.f4668b.hashCode() * 31)) * 31;
        OverscrollEffect overscrollEffect = this.d;
        int iB = o60.b(o60.b((iHashCode + (overscrollEffect != null ? overscrollEffect.hashCode() : 0)) * 31, 31, this.f4670e), 31, this.f4671f);
        FlingBehavior flingBehavior = this.g;
        int iHashCode2 = (iB + (flingBehavior != null ? flingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSource mutableInteractionSource = this.f4672h;
        int iHashCode3 = (iHashCode2 + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        BringIntoViewSpec bringIntoViewSpec = this.f4673i;
        return iHashCode3 + (bringIntoViewSpec != null ? bringIntoViewSpec.hashCode() : 0);
    }
}

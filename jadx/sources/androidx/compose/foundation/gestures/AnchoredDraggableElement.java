package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B[\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/gestures/AnchoredDraggableElement;", "T", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/gestures/AnchoredDraggableNode;", "Landroidx/compose/foundation/gestures/AnchoredDraggableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "reverseDirection", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "startDragImmediately", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "<init>", "(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLjava/lang/Boolean;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/Boolean;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnchoredDraggableElement<T> extends ModifierNodeElement<AnchoredDraggableNode<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnchoredDraggableState f4339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Orientation f4340c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f4341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableInteractionSource f4342f;
    public final Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OverscrollEffect f4343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FlingBehavior f4344i;

    public AnchoredDraggableElement(AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, Boolean bool, MutableInteractionSource mutableInteractionSource, Boolean bool2, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior) {
        this.f4339b = anchoredDraggableState;
        this.f4340c = orientation;
        this.d = z;
        this.f4341e = bool;
        this.f4342f = mutableInteractionSource;
        this.g = bool2;
        this.f4343h = overscrollEffect;
        this.f4344i = flingBehavior;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new AnchoredDraggableNode(this.f4339b, this.f4340c, this.d, this.f4341e, this.f4342f, this.f4343h, this.g, this.f4344i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnchoredDraggableElement)) {
            return false;
        }
        AnchoredDraggableElement anchoredDraggableElement = (AnchoredDraggableElement) obj;
        return Intrinsics.c(this.f4339b, anchoredDraggableElement.f4339b) && this.f4340c == anchoredDraggableElement.f4340c && this.d == anchoredDraggableElement.d && Intrinsics.c(this.f4341e, anchoredDraggableElement.f4341e) && Intrinsics.c(this.f4342f, anchoredDraggableElement.f4342f) && Intrinsics.c(this.g, anchoredDraggableElement.g) && Intrinsics.c(this.f4343h, anchoredDraggableElement.f4343h) && Intrinsics.c(this.f4344i, anchoredDraggableElement.f4344i);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        boolean z;
        boolean z2;
        AnchoredDraggableNode anchoredDraggableNode = (AnchoredDraggableNode) node;
        FlingBehavior flingBehavior = this.f4344i;
        anchoredDraggableNode.P = flingBehavior;
        AnchoredDraggableState anchoredDraggableState = anchoredDraggableNode.K;
        AnchoredDraggableState anchoredDraggableState2 = this.f4339b;
        if (Intrinsics.c(anchoredDraggableState, anchoredDraggableState2)) {
            z = false;
        } else {
            anchoredDraggableNode.K = anchoredDraggableState2;
            anchoredDraggableNode.F2(flingBehavior);
            z = true;
        }
        Orientation orientation = anchoredDraggableNode.L;
        Orientation orientation2 = this.f4340c;
        if (orientation != orientation2) {
            anchoredDraggableNode.L = orientation2;
            z = true;
        }
        Boolean bool = anchoredDraggableNode.M;
        Boolean bool2 = this.f4341e;
        if (Intrinsics.c(bool, bool2)) {
            z2 = z;
        } else {
            anchoredDraggableNode.M = bool2;
            z2 = true;
        }
        anchoredDraggableNode.O = this.g;
        anchoredDraggableNode.N = this.f4343h;
        anchoredDraggableNode.B2(anchoredDraggableNode.s, this.d, this.f4342f, orientation2, z2);
    }

    public final int hashCode() {
        int iB = o60.b((this.f4340c.hashCode() + (this.f4339b.hashCode() * 31)) * 31, 31, this.d);
        Boolean bool = this.f4341e;
        int iHashCode = (iB + (bool != null ? bool.hashCode() : 0)) * 31;
        MutableInteractionSource mutableInteractionSource = this.f4342f;
        int iHashCode2 = (iHashCode + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        Boolean bool2 = this.g;
        int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        OverscrollEffect overscrollEffect = this.f4343h;
        int iHashCode4 = (iHashCode3 + (overscrollEffect != null ? overscrollEffect.hashCode() : 0)) * 31;
        FlingBehavior flingBehavior = this.f4344i;
        return iHashCode4 + (flingBehavior != null ? flingBehavior.hashCode() : 0);
    }

    public /* synthetic */ AnchoredDraggableElement(AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z, Boolean bool, MutableInteractionSource mutableInteractionSource, Boolean bool2, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(anchoredDraggableState, orientation, z, bool, mutableInteractionSource, (i2 & 32) != 0 ? null : bool2, overscrollEffect, (i2 & 128) != 0 ? null : flingBehavior);
    }
}

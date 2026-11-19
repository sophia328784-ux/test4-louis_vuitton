package androidx.compose.material3;

import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/material3/ThumbElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/ThumbNode;", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "", "checked", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "", "animationSpec", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;ZLandroidx/compose/animation/core/FiniteAnimationSpec;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final /* data */ class ThumbElement extends ModifierNodeElement<ThumbNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InteractionSource f7384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7385c;
    public final FiniteAnimationSpec d;

    public ThumbElement(InteractionSource interactionSource, boolean z, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.f7384b = interactionSource;
        this.f7385c = z;
        this.d = finiteAnimationSpec;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ThumbNode(this.f7384b, this.f7385c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThumbElement)) {
            return false;
        }
        ThumbElement thumbElement = (ThumbElement) obj;
        return Intrinsics.c(this.f7384b, thumbElement.f7384b) && this.f7385c == thumbElement.f7385c && Intrinsics.c(this.d, thumbElement.d);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ThumbNode thumbNode = (ThumbNode) node;
        thumbNode.p = this.f7384b;
        boolean z = thumbNode.q;
        boolean z2 = this.f7385c;
        if (z != z2) {
            DelegatableNodeKt.f(thumbNode).X();
        }
        thumbNode.q = z2;
        thumbNode.r = this.d;
        if (thumbNode.u == null && !Float.isNaN(thumbNode.w)) {
            thumbNode.u = AnimatableKt.a(thumbNode.w);
        }
        if (thumbNode.t != null || Float.isNaN(thumbNode.v)) {
            return;
        }
        thumbNode.t = AnimatableKt.a(thumbNode.v);
    }

    public final int hashCode() {
        return this.d.hashCode() + o60.b(this.f7384b.hashCode() * 31, 31, this.f7385c);
    }

    public final String toString() {
        return "ThumbElement(interactionSource=" + this.f7384b + ", checked=" + this.f7385c + ", animationSpec=" + this.d + ')';
    }
}

package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u001c\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006R\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/VeilModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/VeilModifierNode;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "transition", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/animation/core/AnimationVector4D;", "veilAnimation", "Landroidx/compose/animation/EnterTransition;", "enter", "Landroidx/compose/animation/ExitTransition;", "exit", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class VeilModifierElement extends ModifierNodeElement<VeilModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transition f3761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Transition.DeferredAnimation f3762c;
    public final EnterTransition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ExitTransition f3763e;

    public VeilModifierElement(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition) {
        this.f3761b = transition;
        this.f3762c = deferredAnimation;
        this.d = enterTransition;
        this.f3763e = exitTransition;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new VeilModifierNode(this.f3761b, this.f3762c, this.d, this.f3763e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VeilModifierElement)) {
            return false;
        }
        VeilModifierElement veilModifierElement = (VeilModifierElement) obj;
        return Intrinsics.c(this.f3761b, veilModifierElement.f3761b) && Intrinsics.c(this.f3762c, veilModifierElement.f3762c) && Intrinsics.c(this.d, veilModifierElement.d) && Intrinsics.c(this.f3763e, veilModifierElement.f3763e);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        VeilModifierNode veilModifierNode = (VeilModifierNode) node;
        veilModifierNode.getClass();
        veilModifierNode.p = this.f3762c;
        veilModifierNode.q = this.d;
        veilModifierNode.r = this.f3763e;
    }

    public final int hashCode() {
        return this.f3763e.hashCode() + ((this.d.hashCode() + ((this.f3762c.hashCode() + (this.f3761b.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "VeilModifierElement(transition=" + this.f3761b + ", veilAnimation=" + this.f3762c + ", enter=" + this.d + ", exit=" + this.f3763e + ')';
    }
}

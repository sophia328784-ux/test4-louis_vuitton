package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u009b\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006R\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u001e\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006R\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006R\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/compose/animation/EnterExitTransitionElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/EnterExitTransitionModifierNode;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "transition", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "sizeAnimation", "Landroidx/compose/ui/unit/IntOffset;", "offsetAnimation", "slideAnimation", "Landroidx/compose/animation/EnterTransition;", "enter", "Landroidx/compose/animation/ExitTransition;", "exit", "Lkotlin/Function0;", "", "isEnabled", "Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;", "graphicsLayerBlock", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EnterExitTransitionElement extends ModifierNodeElement<EnterExitTransitionModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transition f3573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Transition.DeferredAnimation f3574c;
    public final Transition.DeferredAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Transition.DeferredAnimation f3575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EnterTransition f3576f;
    public final ExitTransition g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f3577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GraphicsLayerBlockForEnterExit f3578i;

    public EnterExitTransitionElement(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation2, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, Function0<Boolean> function0, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.f3573b = transition;
        this.f3574c = deferredAnimation;
        this.d = deferredAnimation2;
        this.f3575e = deferredAnimation3;
        this.f3576f = enterTransition;
        this.g = exitTransition;
        this.f3577h = function0;
        this.f3578i = graphicsLayerBlockForEnterExit;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new EnterExitTransitionModifierNode(this.f3573b, this.f3574c, this.d, this.f3575e, this.f3576f, this.g, this.f3577h, this.f3578i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof EnterExitTransitionElement)) {
            return false;
        }
        EnterExitTransitionElement enterExitTransitionElement = (EnterExitTransitionElement) obj;
        return Intrinsics.c(enterExitTransitionElement.f3573b, this.f3573b) && Intrinsics.c(enterExitTransitionElement.f3574c, this.f3574c) && Intrinsics.c(enterExitTransitionElement.d, this.d) && Intrinsics.c(enterExitTransitionElement.f3575e, this.f3575e) && Intrinsics.c(enterExitTransitionElement.f3576f, this.f3576f) && Intrinsics.c(enterExitTransitionElement.g, this.g) && enterExitTransitionElement.f3577h == this.f3577h && Intrinsics.c(enterExitTransitionElement.f3578i, this.f3578i);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        EnterExitTransitionModifierNode enterExitTransitionModifierNode = (EnterExitTransitionModifierNode) node;
        enterExitTransitionModifierNode.p = this.f3573b;
        enterExitTransitionModifierNode.q = this.f3574c;
        enterExitTransitionModifierNode.r = this.d;
        enterExitTransitionModifierNode.s = this.f3575e;
        enterExitTransitionModifierNode.t = this.f3576f;
        enterExitTransitionModifierNode.u = this.g;
        enterExitTransitionModifierNode.v = this.f3577h;
        enterExitTransitionModifierNode.w = this.f3578i;
    }

    public final int hashCode() {
        int iHashCode = this.f3573b.hashCode() * 31;
        Transition.DeferredAnimation deferredAnimation = this.f3574c;
        int iHashCode2 = (iHashCode + (deferredAnimation != null ? deferredAnimation.hashCode() : 0)) * 31;
        Transition.DeferredAnimation deferredAnimation2 = this.d;
        int iHashCode3 = (iHashCode2 + (deferredAnimation2 != null ? deferredAnimation2.hashCode() : 0)) * 31;
        Transition.DeferredAnimation deferredAnimation3 = this.f3575e;
        return this.f3578i.hashCode() + ((this.f3577h.hashCode() + ((this.g.hashCode() + ((this.f3576f.hashCode() + ((iHashCode3 + (deferredAnimation3 != null ? deferredAnimation3.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }
}

package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/SharedTransitionScopeRootModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;", "Landroidx/compose/animation/SharedTransitionScopeImpl;", "sharedTransitionScope", "<init>", "(Landroidx/compose/animation/SharedTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class SharedTransitionScopeRootModifierElement extends ModifierNodeElement<SharedTransitionScopeRootModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedTransitionScopeImpl f3711b;

    public SharedTransitionScopeRootModifierElement(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.f3711b = sharedTransitionScopeImpl;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SharedTransitionScopeRootModifierNode(this.f3711b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SharedTransitionScopeRootModifierElement) && Intrinsics.c(this.f3711b, ((SharedTransitionScopeRootModifierElement) obj).f3711b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SharedTransitionScopeRootModifierNode sharedTransitionScopeRootModifierNode = (SharedTransitionScopeRootModifierNode) node;
        SharedTransitionScopeImpl sharedTransitionScopeImpl = sharedTransitionScopeRootModifierNode.p;
        SharedTransitionScopeImpl sharedTransitionScopeImpl2 = this.f3711b;
        if (!Intrinsics.c(sharedTransitionScopeImpl2, sharedTransitionScopeImpl)) {
            ObserverModifierNodeKt.a(sharedTransitionScopeRootModifierNode, sharedTransitionScopeImpl2.f3685e);
        }
        sharedTransitionScopeRootModifierNode.p = sharedTransitionScopeImpl2;
    }

    public final int hashCode() {
        return this.f3711b.hashCode();
    }

    public final String toString() {
        return "SharedTransitionScopeRootModifierElement(sharedTransitionScope=" + this.f3711b + ')';
    }
}

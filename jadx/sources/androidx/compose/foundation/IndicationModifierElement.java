package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/IndicationModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/IndicationModifierNode;", "Landroidx/compose/foundation/interaction/InteractionSource;", "interactionSource", "Landroidx/compose/foundation/IndicationNodeFactory;", "indication", "<init>", "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class IndicationModifierElement extends ModifierNodeElement<IndicationModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InteractionSource f4233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IndicationNodeFactory f4234c;

    public IndicationModifierElement(InteractionSource interactionSource, IndicationNodeFactory indicationNodeFactory) {
        this.f4233b = interactionSource;
        this.f4234c = indicationNodeFactory;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new IndicationModifierNode(this.f4234c.a(this.f4233b));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndicationModifierElement)) {
            return false;
        }
        IndicationModifierElement indicationModifierElement = (IndicationModifierElement) obj;
        return Intrinsics.c(this.f4233b, indicationModifierElement.f4233b) && Intrinsics.c(this.f4234c, indicationModifierElement.f4234c);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        IndicationModifierNode indicationModifierNode = (IndicationModifierNode) node;
        DelegatableNode delegatableNodeA = this.f4234c.a(this.f4233b);
        indicationModifierNode.i2(indicationModifierNode.r);
        indicationModifierNode.r = delegatableNodeA;
        indicationModifierNode.h2(delegatableNodeA);
    }

    public final int hashCode() {
        return this.f4234c.hashCode() + (this.f4233b.hashCode() * 31);
    }
}

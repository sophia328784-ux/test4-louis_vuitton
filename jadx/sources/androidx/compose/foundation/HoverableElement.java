package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/HoverableElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/HoverableNode;", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "<init>", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class HoverableElement extends ModifierNodeElement<HoverableNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableInteractionSource f4220b;

    public HoverableElement(MutableInteractionSource mutableInteractionSource) {
        this.f4220b = mutableInteractionSource;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new HoverableNode(this.f4220b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HoverableElement) && Intrinsics.c(((HoverableElement) obj).f4220b, this.f4220b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        HoverableNode hoverableNode = (HoverableNode) node;
        MutableInteractionSource mutableInteractionSource = hoverableNode.p;
        MutableInteractionSource mutableInteractionSource2 = this.f4220b;
        if (Intrinsics.c(mutableInteractionSource, mutableInteractionSource2)) {
            return;
        }
        hoverableNode.j2();
        hoverableNode.p = mutableInteractionSource2;
    }

    public final int hashCode() {
        return this.f4220b.hashCode() * 31;
    }
}

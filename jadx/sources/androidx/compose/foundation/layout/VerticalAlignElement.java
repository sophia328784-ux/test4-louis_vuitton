package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/layout/VerticalAlignElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/VerticalAlignNode;", "Landroidx/compose/ui/Alignment$Vertical;", "alignment", "<init>", "(Landroidx/compose/ui/Alignment$Vertical;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VerticalAlignElement extends ModifierNodeElement<VerticalAlignNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Alignment.Vertical f5069b;

    public VerticalAlignElement(Alignment.Vertical vertical) {
        this.f5069b = vertical;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new VerticalAlignNode(this.f5069b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        VerticalAlignElement verticalAlignElement = obj instanceof VerticalAlignElement ? (VerticalAlignElement) obj : null;
        if (verticalAlignElement == null) {
            return false;
        }
        return Intrinsics.c(this.f5069b, verticalAlignElement.f5069b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((VerticalAlignNode) node).p = this.f5069b;
    }

    public final int hashCode() {
        return this.f5069b.hashCode();
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/LayoutWeightElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/LayoutWeightNode;", "", "weight", "", "fill", "<init>", "(FZ)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutWeightElement extends ModifierNodeElement<LayoutWeightNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5014c;

    public LayoutWeightElement(float f2, boolean z) {
        this.f5013b = f2;
        this.f5014c = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new LayoutWeightNode(this.f5013b, this.f5014c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        LayoutWeightElement layoutWeightElement = obj instanceof LayoutWeightElement ? (LayoutWeightElement) obj : null;
        return layoutWeightElement != null && this.f5013b == layoutWeightElement.f5013b && this.f5014c == layoutWeightElement.f5014c;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        LayoutWeightNode layoutWeightNode = (LayoutWeightNode) node;
        layoutWeightNode.p = this.f5013b;
        layoutWeightNode.q = this.f5014c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f5014c) + (Float.hashCode(this.f5013b) * 31);
    }
}

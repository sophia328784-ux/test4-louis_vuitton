package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/pointer/PointerHoverIconModifierNode;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "icon", "", "overrideDescendants", "<init>", "(Landroidx/compose/ui/input/pointer/PointerIcon;Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PointerHoverIconModifierElement extends ModifierNodeElement<PointerHoverIconModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointerIcon f9319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9320c;

    public /* synthetic */ PointerHoverIconModifierElement(PointerIcon pointerIcon, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pointerIcon, (i2 & 2) != 0 ? false : z);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new PointerHoverIconModifierNode(this.f9319b, this.f9320c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerHoverIconModifierElement)) {
            return false;
        }
        PointerHoverIconModifierElement pointerHoverIconModifierElement = (PointerHoverIconModifierElement) obj;
        return Intrinsics.c(this.f9319b, pointerHoverIconModifierElement.f9319b) && this.f9320c == pointerHoverIconModifierElement.f9320c;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        PointerHoverIconModifierNode pointerHoverIconModifierNode = (PointerHoverIconModifierNode) node;
        PointerIcon pointerIcon = pointerHoverIconModifierNode.q;
        PointerIcon pointerIcon2 = this.f9319b;
        if (!Intrinsics.c(pointerIcon, pointerIcon2)) {
            pointerHoverIconModifierNode.q = pointerIcon2;
            if (pointerHoverIconModifierNode.s) {
                pointerHoverIconModifierNode.j2();
            }
        }
        pointerHoverIconModifierNode.m2(this.f9320c);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f9320c) + (this.f9319b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PointerHoverIconModifierElement(icon=");
        sb.append(this.f9319b);
        sb.append(", overrideDescendants=");
        return d21.q(sb, this.f9320c, ')');
    }

    public PointerHoverIconModifierElement(PointerIcon pointerIcon, boolean z) {
        this.f9319b = pointerIcon;
        this.f9320c = z;
    }
}

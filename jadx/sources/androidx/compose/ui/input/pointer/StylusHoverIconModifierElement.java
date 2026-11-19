package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/input/pointer/StylusHoverIconModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/pointer/StylusHoverIconModifierNode;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "icon", "", "overrideDescendants", "Landroidx/compose/ui/node/DpTouchBoundsExpansion;", "touchBoundsExpansion", "<init>", "(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class StylusHoverIconModifierElement extends ModifierNodeElement<StylusHoverIconModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointerIcon f9373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9374c;
    public final DpTouchBoundsExpansion d;

    public /* synthetic */ StylusHoverIconModifierElement(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pointerIcon, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : dpTouchBoundsExpansion);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new StylusHoverIconModifierNode(this.f9373b, this.f9374c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StylusHoverIconModifierElement)) {
            return false;
        }
        StylusHoverIconModifierElement stylusHoverIconModifierElement = (StylusHoverIconModifierElement) obj;
        return Intrinsics.c(this.f9373b, stylusHoverIconModifierElement.f9373b) && this.f9374c == stylusHoverIconModifierElement.f9374c && Intrinsics.c(this.d, stylusHoverIconModifierElement.d);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        StylusHoverIconModifierNode stylusHoverIconModifierNode = (StylusHoverIconModifierNode) node;
        PointerIcon pointerIcon = stylusHoverIconModifierNode.q;
        PointerIcon pointerIcon2 = this.f9373b;
        if (!Intrinsics.c(pointerIcon, pointerIcon2)) {
            stylusHoverIconModifierNode.q = pointerIcon2;
            if (stylusHoverIconModifierNode.s) {
                stylusHoverIconModifierNode.j2();
            }
        }
        stylusHoverIconModifierNode.m2(this.f9374c);
        stylusHoverIconModifierNode.p = this.d;
    }

    public final int hashCode() {
        int iB = o60.b(this.f9373b.hashCode() * 31, 31, this.f9374c);
        DpTouchBoundsExpansion dpTouchBoundsExpansion = this.d;
        return iB + (dpTouchBoundsExpansion == null ? 0 : dpTouchBoundsExpansion.hashCode());
    }

    public final String toString() {
        return "StylusHoverIconModifierElement(icon=" + this.f9373b + ", overrideDescendants=" + this.f9374c + ", touchBoundsExpansion=" + this.d + ')';
    }

    public StylusHoverIconModifierElement(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.f9373b = pointerIcon;
        this.f9374c = z;
        this.d = dpTouchBoundsExpansion;
    }
}

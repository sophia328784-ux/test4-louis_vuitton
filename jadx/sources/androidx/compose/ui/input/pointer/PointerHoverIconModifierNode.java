package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerHoverIconModifierNode;", "Landroidx/compose/ui/input/pointer/HoverIconModifierNode;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "icon", "", "overrideDescendants", "<init>", "(Landroidx/compose/ui/input/pointer/PointerIcon;Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerHoverIconModifierNode extends HoverIconModifierNode {
    public final String t;

    public PointerHoverIconModifierNode(PointerIcon pointerIcon, boolean z) {
        super(pointerIcon, z, null, 4, null);
        this.t = "androidx.compose.ui.input.pointer.PointerHoverIcon";
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M */
    public final Object getR() {
        return this.t;
    }

    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final void i2(PointerIcon pointerIcon) {
        PointerIconService pointerIconService = (PointerIconService) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.w);
        if (pointerIconService != null) {
            pointerIconService.a(pointerIcon);
        }
    }

    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final boolean k2(int i2) {
        PointerType.Companion companion = PointerType.f9367b;
        companion.getClass();
        if (i2 == PointerType.f9369e) {
            return false;
        }
        companion.getClass();
        return i2 != PointerType.f9370f;
    }

    public /* synthetic */ PointerHoverIconModifierNode(PointerIcon pointerIcon, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pointerIcon, (i2 & 2) != 0 ? false : z);
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BA\u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0003¢\u0006\u0002\b\u0006¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/layout/OffsetPxElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/OffsetPxNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/Density;", "Landroidx/compose/ui/unit/IntOffset;", "Lkotlin/ExtensionFunctionType;", "offset", "", "rtlAware", "Landroidx/compose/ui/platform/InspectorInfo;", "", "inspectorInfo", "<init>", "(Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class OffsetPxElement extends ModifierNodeElement<OffsetPxNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f5020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5021c;
    public final Function1 d;

    public OffsetPxElement(Function1<? super Density, IntOffset> function1, boolean z, Function1<? super InspectorInfo, Unit> function2) {
        this.f5020b = function1;
        this.f5021c = z;
        this.d = function2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new OffsetPxNode(this.f5020b, this.f5021c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetPxElement offsetPxElement = obj instanceof OffsetPxElement ? (OffsetPxElement) obj : null;
        return offsetPxElement != null && this.f5020b == offsetPxElement.f5020b && this.f5021c == offsetPxElement.f5021c;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        OffsetPxNode offsetPxNode = (OffsetPxNode) node;
        Function1 function1 = offsetPxNode.p;
        Function1 function2 = this.f5020b;
        boolean z = this.f5021c;
        if (function1 != function2 || offsetPxNode.q != z) {
            LayoutNode layoutNodeF = DelegatableNodeKt.f(offsetPxNode);
            LayoutNode.Companion companion = LayoutNode.T;
            layoutNodeF.l0(false);
        }
        offsetPxNode.p = function2;
        offsetPxNode.q = z;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f5021c) + (this.f5020b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OffsetPxModifier(offset=");
        sb.append(this.f5020b);
        sb.append(", rtlAware=");
        return d21.q(sb, this.f5021c, ')');
    }
}

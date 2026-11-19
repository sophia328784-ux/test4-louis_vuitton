package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B8\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/layout/OffsetElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/OffsetNode;", "Landroidx/compose/ui/unit/Dp;", "x", "y", "", "rtlAware", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class OffsetElement extends ModifierNodeElement<OffsetNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5018c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f5019e;

    public OffsetElement(float f2, float f3, boolean z, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5017b = f2;
        this.f5018c = f3;
        this.d = z;
        this.f5019e = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new OffsetNode(this.f5017b, this.f5018c, this.d, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetElement offsetElement = obj instanceof OffsetElement ? (OffsetElement) obj : null;
        return offsetElement != null && Dp.b(this.f5017b, offsetElement.f5017b) && Dp.b(this.f5018c, offsetElement.f5018c) && this.d == offsetElement.d;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        OffsetNode offsetNode = (OffsetNode) node;
        float f2 = offsetNode.p;
        float f3 = this.f5017b;
        boolean zB = Dp.b(f2, f3);
        float f4 = this.f5018c;
        boolean z = this.d;
        if (!zB || !Dp.b(offsetNode.q, f4) || offsetNode.r != z) {
            LayoutNode layoutNodeF = DelegatableNodeKt.f(offsetNode);
            LayoutNode.Companion companion = LayoutNode.T;
            layoutNodeF.l0(false);
        }
        offsetNode.p = f3;
        offsetNode.q = f4;
        offsetNode.r = z;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Boolean.hashCode(this.d) + pq0.b(Float.hashCode(this.f5017b) * 31, 31, this.f5018c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OffsetModifierElement(x=");
        fc.w(this.f5017b, ", y=", sb);
        fc.w(this.f5018c, ", rtlAware=", sb);
        return d21.q(sb, this.d, ')');
    }
}

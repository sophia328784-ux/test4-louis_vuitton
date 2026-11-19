package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B(\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class InsetsPaddingModifierElement extends ModifierNodeElement<InsetsPaddingModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f5002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f5003c;

    public InsetsPaddingModifierElement(WindowInsets windowInsets, Function1<? super InspectorInfo, Unit> function1) {
        this.f5002b = windowInsets;
        this.f5003c = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new InsetsPaddingModifierNode(this.f5002b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InsetsPaddingModifierElement) {
            return Intrinsics.c(((InsetsPaddingModifierElement) obj).f5002b, this.f5002b);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        InsetsPaddingModifierNode insetsPaddingModifierNode = (InsetsPaddingModifierNode) node;
        WindowInsets windowInsets = insetsPaddingModifierNode.r;
        WindowInsets windowInsets2 = this.f5002b;
        if (Intrinsics.c(windowInsets2, windowInsets)) {
            return;
        }
        insetsPaddingModifierNode.r = windowInsets2;
        insetsPaddingModifierNode.i2();
    }

    public final int hashCode() {
        return this.f5002b.hashCode();
    }
}

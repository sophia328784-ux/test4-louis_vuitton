package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B(\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class UnionInsetsConsumingModifierElement extends ModifierNodeElement<UnionInsetsConsumingModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f5063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f5064c;

    public UnionInsetsConsumingModifierElement(WindowInsets windowInsets, Function1<? super InspectorInfo, Unit> function1) {
        this.f5063b = windowInsets;
        this.f5064c = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new UnionInsetsConsumingModifierNode(this.f5063b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnionInsetsConsumingModifierElement) {
            return Intrinsics.c(((UnionInsetsConsumingModifierElement) obj).f5063b, this.f5063b);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        UnionInsetsConsumingModifierNode unionInsetsConsumingModifierNode = (UnionInsetsConsumingModifierNode) node;
        WindowInsets windowInsets = unionInsetsConsumingModifierNode.r;
        WindowInsets windowInsets2 = this.f5063b;
        if (Intrinsics.c(windowInsets2, windowInsets)) {
            return;
        }
        unionInsetsConsumingModifierNode.r = windowInsets2;
        unionInsetsConsumingModifierNode.i2();
    }

    public final int hashCode() {
        return this.f5063b.hashCode();
    }
}

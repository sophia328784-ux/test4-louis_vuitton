package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B0\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/layout/DerivedHeightModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/DerivedHeightModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "inspectorInfo", "Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;", "heightCalc", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DerivedHeightModifierElement extends ModifierNodeElement<DerivedHeightModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WindowInsets f4954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f4955c;
    public final WindowInsetsHeightCalculator d;

    public DerivedHeightModifierElement(WindowInsets windowInsets, Function1<? super InspectorInfo, Unit> function1, WindowInsetsHeightCalculator windowInsetsHeightCalculator) {
        this.f4954b = windowInsets;
        this.f4955c = function1;
        this.d = windowInsetsHeightCalculator;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new DerivedHeightModifierNode(this.f4954b, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DerivedHeightModifierElement)) {
            return false;
        }
        DerivedHeightModifierElement derivedHeightModifierElement = (DerivedHeightModifierElement) obj;
        return Intrinsics.c(this.f4954b, derivedHeightModifierElement.f4954b) && this.d == derivedHeightModifierElement.d;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        DerivedHeightModifierNode derivedHeightModifierNode = (DerivedHeightModifierNode) node;
        WindowInsets windowInsets = derivedHeightModifierNode.r;
        WindowInsets windowInsets2 = this.f4954b;
        boolean zC = Intrinsics.c(windowInsets, windowInsets2);
        WindowInsetsHeightCalculator windowInsetsHeightCalculator = this.d;
        if (zC && windowInsetsHeightCalculator == derivedHeightModifierNode.s) {
            return;
        }
        derivedHeightModifierNode.r = windowInsets2;
        derivedHeightModifierNode.s = windowInsetsHeightCalculator;
        WindowInsets windowInsets3 = derivedHeightModifierNode.p;
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        derivedHeightModifierNode.t = new ExcludeInsets(windowInsets2, windowInsets3);
        DelegatableNodeKt.f(derivedHeightModifierNode).X();
    }

    public final int hashCode() {
        return this.d.hashCode() + (this.f4954b.hashCode() * 31);
    }
}

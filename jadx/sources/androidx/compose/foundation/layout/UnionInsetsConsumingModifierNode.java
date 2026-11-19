package androidx.compose.foundation.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;", "Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;", "Landroidx/compose/foundation/layout/WindowInsets;", "insets", "<init>", "(Landroidx/compose/foundation/layout/WindowInsets;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class UnionInsetsConsumingModifierNode extends InsetsConsumingModifierNode {
    public WindowInsets r;

    public UnionInsetsConsumingModifierNode(WindowInsets windowInsets) {
        this.r = windowInsets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets h2(WindowInsets windowInsets) {
        WindowInsets windowInsets2 = this.r;
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        return new UnionInsets(windowInsets, windowInsets2);
    }
}

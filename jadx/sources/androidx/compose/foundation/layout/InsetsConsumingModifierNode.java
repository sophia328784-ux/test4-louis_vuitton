package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.i40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b!\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/TraversableNode;", "<init>", "()V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class InsetsConsumingModifierNode extends Modifier.Node implements TraversableNode {
    public WindowInsets p;
    public WindowInsets q;

    public InsetsConsumingModifierNode() {
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        this.p = fixedIntInsets;
        this.q = fixedIntInsets;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object M() {
        return "androidx.compose.foundation.layout.ConsumedInsetsProvider";
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void Z1() {
        TraversableNodeKt.c(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new i40(this, 1));
        i2();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void a2() {
        this.q = this.p;
        TraversableNodeKt.e(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new i40(this, 0));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void b2() {
        this.p = WindowInsetsKt.f5085a;
    }

    public abstract WindowInsets h2(WindowInsets windowInsets);

    public void i2() {
        this.q = h2(this.p);
        TraversableNodeKt.e(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new i40(this, 0));
    }
}

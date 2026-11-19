package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import defpackage.ck;
import defpackage.jh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B \u0012\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/material3/internal/ChildSemanticsNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Lkotlin/Function1;", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "", "Lkotlin/ExtensionFunctionType;", SAPropertyFilter.PROPERTIES, "<init>", "(Lkotlin/jvm/functions/Function1;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ChildSemanticsNode extends Modifier.Node implements SemanticsModifierNode {
    public Function1 p;

    public ChildSemanticsNode(Function1<? super SemanticsPropertyReceiver, Unit> function1) {
        this.p = function1;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        TraversableNodeKt.c(this, ParentSemanticsNodeKey.f7644a, new ck(semanticsPropertyReceiver, 3));
        this.p.invoke(semanticsPropertyReceiver);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        TraversableNodeKt.c(this, ParentSemanticsNodeKey.f7644a, new jh(29));
    }
}

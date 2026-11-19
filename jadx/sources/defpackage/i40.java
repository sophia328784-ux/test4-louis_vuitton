package defpackage;

import androidx.compose.foundation.layout.InsetsConsumingModifierNode;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i40 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InsetsConsumingModifierNode f69870c;

    public /* synthetic */ i40(InsetsConsumingModifierNode insetsConsumingModifierNode, int i2) {
        this.f69869b = i2;
        this.f69870c = insetsConsumingModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69869b;
        InsetsConsumingModifierNode insetsConsumingModifierNode = this.f69870c;
        TraversableNode traversableNode = (TraversableNode) obj;
        switch (i2) {
            case 0:
                traversableNode.getClass();
                InsetsConsumingModifierNode insetsConsumingModifierNode2 = (InsetsConsumingModifierNode) traversableNode;
                WindowInsets windowInsets = insetsConsumingModifierNode.q;
                if (!Intrinsics.c(insetsConsumingModifierNode2.p, windowInsets)) {
                    insetsConsumingModifierNode2.p = windowInsets;
                    insetsConsumingModifierNode2.i2();
                }
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            default:
                traversableNode.getClass();
                insetsConsumingModifierNode.p = ((InsetsConsumingModifierNode) traversableNode).q;
                return Boolean.FALSE;
        }
    }
}

package com.dynatrace.agent.compose.api;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/api/DTMaskingModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcom/dynatrace/agent/compose/api/DynatraceMaskingNode;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DTMaskingModifier extends ModifierNodeElement<DynatraceMaskingNode> {
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new DynatraceMaskingNode();
    }

    public final boolean equals(Object obj) {
        return obj instanceof DTMaskingModifier;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((DynatraceMaskingNode) node).getClass();
    }

    public final int hashCode() {
        return 0;
    }
}

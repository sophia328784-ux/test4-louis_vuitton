package com.dynatrace.agent.compose.userinteraction.sensor;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceFunctionNameNode;", "", "text", "<init>", "(Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DTFunctionNameModifier extends ModifierNodeElement<DynatraceFunctionNameNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26697b;

    public DTFunctionNameModifier(String str) {
        str.getClass();
        this.f26697b = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new DynatraceFunctionNameNode(this.f26697b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DTFunctionNameModifier) {
            return Intrinsics.c(this.f26697b, ((DTFunctionNameModifier) obj).f26697b);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((DynatraceFunctionNameNode) node).getClass();
    }

    public final int hashCode() {
        return this.f26697b.hashCode() + 527;
    }
}

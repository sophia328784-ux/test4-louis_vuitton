package com.dynatrace.agent.compose.userinteraction.sensor;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcom/dynatrace/agent/compose/userinteraction/sensor/DynatraceBasicTextNode;", "", "text", "<init>", "(Ljava/lang/String;)V", "Landroidx/compose/ui/text/AnnotatedString;", "annotatedString", "(Landroidx/compose/ui/text/AnnotatedString;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DTBasicTextModifier extends ModifierNodeElement<DynatraceBasicTextNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26696b;

    public DTBasicTextModifier(AnnotatedString annotatedString) {
        annotatedString.getClass();
        this.f26696b = annotatedString.f10420c;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new DynatraceBasicTextNode(this.f26696b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DTBasicTextModifier) {
            return Intrinsics.c(this.f26696b, ((DTBasicTextModifier) obj).f26696b);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ((DynatraceBasicTextNode) node).getClass();
    }

    public final int hashCode() {
        return this.f26696b.hashCode() + 527;
    }

    public DTBasicTextModifier(String str) {
        str.getClass();
        this.f26696b = str;
    }
}

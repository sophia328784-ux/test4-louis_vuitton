package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/focus/FocusRequesterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/focus/FocusRequesterNode;", "Landroidx/compose/ui/focus/FocusRequester;", "focusRequester", "<init>", "(Landroidx/compose/ui/focus/FocusRequester;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class FocusRequesterElement extends ModifierNodeElement<FocusRequesterNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FocusRequester f8779b;

    public FocusRequesterElement(FocusRequester focusRequester) {
        this.f8779b = focusRequester;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new FocusRequesterNode(this.f8779b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FocusRequesterElement) && Intrinsics.c(this.f8779b, ((FocusRequesterElement) obj).f8779b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        FocusRequesterNode focusRequesterNode = (FocusRequesterNode) node;
        focusRequesterNode.p.f8778a.n(focusRequesterNode);
        FocusRequester focusRequester = this.f8779b;
        focusRequesterNode.p = focusRequester;
        focusRequester.f8778a.b(focusRequesterNode);
    }

    public final int hashCode() {
        return this.f8779b.hashCode();
    }

    public final String toString() {
        return "FocusRequesterElement(focusRequester=" + this.f8779b + ')';
    }
}

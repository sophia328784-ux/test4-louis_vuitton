package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/viewinterop/FocusTargetInteropElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FocusTargetInteropElement extends ModifierNodeElement<FocusTargetInteropNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FocusTargetInteropElement f11099b = new FocusTargetInteropElement();

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new FocusTargetInteropNode();
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
    }

    public final int hashCode() {
        return 1019320052;
    }
}

package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/node/ComposeUiNode;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1 extends Lambda implements Function1<ComposeUiNode, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1 f9646c = new ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ComposeUiNode composeUiNode = (ComposeUiNode) obj;
        LayoutNode layoutNode = composeUiNode instanceof LayoutNode ? (LayoutNode) composeUiNode : null;
        if (layoutNode != null && layoutNode.S) {
            InlineClassHelperKt.c("Apply is called on deactivated node " + composeUiNode);
        }
        return Unit.f71739a;
    }
}

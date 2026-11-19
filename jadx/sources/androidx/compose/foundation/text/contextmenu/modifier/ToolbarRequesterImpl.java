package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;", "Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ToolbarRequesterImpl extends ToolbarRequester {
    public final void a() {
        TextContextMenuProvider textContextMenuProvider;
        if (this.f6141b == ToolbarHandlerState.Uninitialized) {
            InlineClassHelperKt.c("ToolbarRequester is not initialized.");
        }
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = this.f6140a;
        if (textContextMenuToolbarHandlerNode == null || !textContextMenuToolbarHandlerNode.o) {
            return;
        }
        Job job = textContextMenuToolbarHandlerNode.v;
        if ((job == null || !job.isActive()) && (textContextMenuProvider = (TextContextMenuProvider) CompositionLocalConsumerModifierNodeKt.a(textContextMenuToolbarHandlerNode, TextContextMenuProviderKt.f6154b)) != null) {
            textContextMenuToolbarHandlerNode.v = BuildersKt.c(textContextMenuToolbarHandlerNode.V1(), null, CoroutineStart.UNDISPATCHED, new TextContextMenuToolbarHandlerNode$show$1(textContextMenuToolbarHandlerNode, textContextMenuProvider, null), 1);
        }
    }
}

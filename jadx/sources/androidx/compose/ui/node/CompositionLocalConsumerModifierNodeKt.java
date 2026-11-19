package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionLocalConsumerModifierNodeKt {
    public static final Object a(CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode, CompositionLocal compositionLocal) {
        if (!compositionLocalConsumerModifierNode.getF8608b().o) {
            InlineClassHelperKt.c("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        return DelegatableNodeKt.f(compositionLocalConsumerModifierNode).D.a(compositionLocal);
    }
}

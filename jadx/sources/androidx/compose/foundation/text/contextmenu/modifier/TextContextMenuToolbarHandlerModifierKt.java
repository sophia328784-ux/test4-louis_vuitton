package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.Modifier;
import defpackage.oq;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextContextMenuToolbarHandlerModifierKt {
    public static final Modifier a(Modifier modifier, ToolbarRequesterImpl toolbarRequesterImpl, Function1 function1, Function1 function2, oq oqVar) {
        return modifier.o(new TextContextMenuToolbarHandlerElement(toolbarRequesterImpl, function1, function2, oqVar));
    }
}

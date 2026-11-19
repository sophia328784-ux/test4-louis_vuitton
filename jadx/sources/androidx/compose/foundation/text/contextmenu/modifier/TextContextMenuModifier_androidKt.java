package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.selection.e;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextContextMenuModifier_androidKt {
    public static final Modifier a(Modifier modifier, e eVar) {
        return modifier.o(new AddTextContextMenuDataComponentsWithContextElement(eVar));
    }
}

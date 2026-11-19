package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusRequesterModifierKt {
    public static final Modifier a(Modifier modifier, FocusRequester focusRequester) {
        return modifier.o(new FocusRequesterElement(focusRequester));
    }
}

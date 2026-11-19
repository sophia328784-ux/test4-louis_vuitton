package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class HoverableKt {
    public static Modifier a(Modifier modifier, MutableInteractionSource mutableInteractionSource) {
        return modifier.o(new HoverableElement(mutableInteractionSource));
    }
}

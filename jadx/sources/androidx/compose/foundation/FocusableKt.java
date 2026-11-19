package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusableKt {
    public static final Modifier a(Modifier modifier) {
        return modifier.o(FocusGroupElement.f4210b);
    }

    public static final Modifier b(Modifier modifier, boolean z, MutableInteractionSource mutableInteractionSource) {
        return modifier.o(z ? new FocusableElement(mutableInteractionSource) : Modifier.Companion.f8607b);
    }

    public static /* synthetic */ Modifier c(Modifier modifier, MutableInteractionSource mutableInteractionSource, int i2) {
        boolean z = (i2 & 1) != 0;
        if ((i2 & 2) != 0) {
            mutableInteractionSource = null;
        }
        return b(modifier, z, mutableInteractionSource);
    }
}

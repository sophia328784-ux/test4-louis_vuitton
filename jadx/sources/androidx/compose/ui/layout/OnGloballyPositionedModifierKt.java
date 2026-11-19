package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OnGloballyPositionedModifierKt {
    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.o(new OnGloballyPositionedElement(function1));
    }
}

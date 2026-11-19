package androidx.compose.ui.draw;

import androidx.compose.foundation.b;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DrawModifierKt {
    public static final CacheDrawModifierNode a(b bVar) {
        return new CacheDrawModifierNodeImpl(new CacheDrawScope(), bVar);
    }

    public static final Modifier b(Modifier modifier, Function1 function1) {
        return modifier.o(new DrawBehindElement(function1));
    }

    public static final Modifier c(Modifier modifier, Function1 function1) {
        return modifier.o(new DrawWithCacheElement(function1));
    }

    public static final Modifier d(Modifier modifier, Function1 function1) {
        return modifier.o(new DrawWithContentElement(function1));
    }
}

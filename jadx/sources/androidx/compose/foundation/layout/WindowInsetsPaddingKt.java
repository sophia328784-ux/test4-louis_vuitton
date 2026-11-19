package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsPaddingKt {
    public static final Modifier a(Modifier modifier, PaddingValues paddingValues) {
        return modifier.o(new PaddingValuesConsumingModifierElement(paddingValues, InspectableValueKt.f10100a));
    }

    public static final Modifier b(Modifier modifier, WindowInsets windowInsets) {
        return modifier.o(new UnionInsetsConsumingModifierElement(windowInsets, InspectableValueKt.f10100a));
    }

    public static final Modifier c(Modifier modifier, Function1 function1) {
        return modifier.o(new ConsumedInsetsModifierElement(function1, InspectableValueKt.f10100a));
    }

    public static final Modifier d(Modifier modifier, WindowInsets windowInsets) {
        return modifier.o(new InsetsPaddingModifierElement(windowInsets, InspectableValueKt.f10100a));
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IntrinsicKt {
    public static final Modifier a(Modifier modifier, IntrinsicSize intrinsicSize) {
        return modifier.o(new IntrinsicHeightElement(intrinsicSize, true, InspectableValueKt.f10100a));
    }

    public static final Modifier b(Modifier modifier, IntrinsicSize intrinsicSize) {
        return modifier.o(new IntrinsicWidthElement(intrinsicSize, true, InspectableValueKt.f10100a));
    }
}

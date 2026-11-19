package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LayoutIdKt {
    public static final Object a(Measurable measurable) {
        Object objE = measurable.e();
        LayoutIdParentData layoutIdParentData = objE instanceof LayoutIdParentData ? (LayoutIdParentData) objE : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.S0();
        }
        return null;
    }

    public static final Modifier b(Modifier modifier, Object obj) {
        return modifier.o(new LayoutIdElement(obj));
    }
}

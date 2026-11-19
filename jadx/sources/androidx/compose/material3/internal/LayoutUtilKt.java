package androidx.compose.material3.internal;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdParentData;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class LayoutUtilKt {
    public static final Object a(IntrinsicMeasurable intrinsicMeasurable) {
        Object objE = intrinsicMeasurable.e();
        LayoutIdParentData layoutIdParentData = objE instanceof LayoutIdParentData ? (LayoutIdParentData) objE : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.S0();
        }
        return null;
    }

    public static final int b(int i2, int i3) {
        if (i2 == Integer.MAX_VALUE) {
            return i2;
        }
        int i4 = i2 - i3;
        if (i4 < 0) {
            return 0;
        }
        return i4;
    }
}

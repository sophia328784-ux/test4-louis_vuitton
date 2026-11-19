package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CursorAnchorInfoBuilder_androidKt {
    public static final boolean a(Rect rect, float f2, float f3) {
        float f4 = rect.f8811a;
        if (f2 > rect.f8813c || f4 > f2) {
            return false;
        }
        return f3 <= rect.d && rect.f8812b <= f3;
    }
}

package androidx.compose.ui.graphics;

import android.graphics.Rect;
import android.graphics.RectF;
import androidx.compose.ui.unit.IntRect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RectHelper_androidKt {
    public static final Rect a(IntRect intRect) {
        return new Rect(intRect.f11017a, intRect.f11018b, intRect.f11019c, intRect.d);
    }

    public static final RectF b(androidx.compose.ui.geometry.Rect rect) {
        return new RectF(rect.f8811a, rect.f8812b, rect.f8813c, rect.d);
    }

    public static final androidx.compose.ui.geometry.Rect c(RectF rectF) {
        return new androidx.compose.ui.geometry.Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}

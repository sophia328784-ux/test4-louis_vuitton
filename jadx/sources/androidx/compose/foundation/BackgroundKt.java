package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BackgroundKt {
    public static Modifier a(Modifier modifier, LinearGradient linearGradient) {
        return modifier.o(new BackgroundElement(0L, linearGradient, 1.0f, RectangleShapeKt.f8913a, InspectableValueKt.f10100a, 1, null));
    }

    public static final Modifier b(Modifier modifier, long j2, Shape shape) {
        return modifier.o(new BackgroundElement(j2, null, 1.0f, shape, InspectableValueKt.f10100a, 2, null));
    }
}

package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PainterModifierKt {
    public static Modifier a(Modifier modifier, Painter painter, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, int i2) {
        if ((i2 & 4) != 0) {
            Alignment.f8582a.getClass();
            alignment = Alignment.Companion.f8587f;
        }
        Alignment alignment2 = alignment;
        if ((i2 & 16) != 0) {
            f2 = 1.0f;
        }
        float f3 = f2;
        if ((i2 & 32) != 0) {
            colorFilter = null;
        }
        return modifier.o(new PainterElement(painter, true, alignment2, contentScale, f3, colorFilter));
    }
}

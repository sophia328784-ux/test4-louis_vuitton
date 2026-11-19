package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextDrawStyleKt {
    public static final TextForegroundStyle a(TextForegroundStyle textForegroundStyle, TextForegroundStyle textForegroundStyle2, float f2) {
        boolean z = textForegroundStyle instanceof BrushStyle;
        if (!z && !(textForegroundStyle2 instanceof BrushStyle)) {
            return TextForegroundStyle.Companion.b(ColorKt.g(textForegroundStyle.getF10927a(), textForegroundStyle2.getF10927a(), f2));
        }
        if (!z || !(textForegroundStyle2 instanceof BrushStyle)) {
            return (TextForegroundStyle) SpanStyleKt.b(f2, textForegroundStyle, textForegroundStyle2);
        }
        BrushStyle brushStyle = (BrushStyle) textForegroundStyle;
        BrushStyle brushStyle2 = (BrushStyle) textForegroundStyle2;
        return TextForegroundStyle.Companion.a((Brush) SpanStyleKt.b(f2, brushStyle.f10925a, brushStyle2.f10925a), MathHelpersKt.b(brushStyle.f10926b, brushStyle2.f10926b, f2));
    }

    public static final long b(float f2, long j2) {
        return (Float.isNaN(f2) || f2 >= 1.0f) ? j2 : Color.b(Color.d(j2) * f2, j2);
    }
}

package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/text/Paragraph;", "", "Landroidx/compose/ui/text/AndroidParagraph;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Paragraph {
    ResolvedTextDirection a(int i2);

    float b(int i2);

    Rect c(int i2);

    void d(Canvas canvas, long j2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i2);

    long e(int i2);

    float f();

    int g(long j2);

    float getHeight();

    float getWidth();

    int h(int i2);

    int i(int i2, boolean z);

    float j(int i2);

    float k(int i2);

    int l(float f2);

    AndroidPath m(int i2, int i3);

    float n(int i2, boolean z);

    float o(int i2);

    void p(Canvas canvas, Brush brush, float f2, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i2);

    void q(long j2, float[] fArr, int i2);

    float r();

    int s(int i2);

    long t(Rect rect, int i2, TextInclusionStrategy textInclusionStrategy);

    ResolvedTextDirection u(int i2);

    float v(int i2);

    Rect w(int i2);

    List x();
}

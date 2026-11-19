package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import defpackage.hv0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001:\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle;", "", "Unspecified", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface TextForegroundStyle {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public static TextForegroundStyle a(Brush brush, float f2) {
            if (brush == null) {
                return Unspecified.f10974a;
            }
            if (brush instanceof SolidColor) {
                return b(TextDrawStyleKt.b(f2, ((SolidColor) brush).f8931b));
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush, f2);
            }
            v40.g();
            return null;
        }

        public static TextForegroundStyle b(long j2) {
            return j2 != 16 ? new ColorStyle(j2, null) : Unspecified.f10974a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Unspecified implements TextForegroundStyle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unspecified f10974a = new Unspecified();

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        /* JADX INFO: renamed from: a */
        public final float getF10926b() {
            return Float.NaN;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        /* JADX INFO: renamed from: b */
        public final long getF10927a() {
            Color.f8866b.getClass();
            return Color.f8871i;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final Brush e() {
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    float getF10926b();

    /* JADX INFO: renamed from: b */
    long getF10927a();

    default TextForegroundStyle c(Function0 function0) {
        return !equals(Unspecified.f10974a) ? this : (TextForegroundStyle) function0.mo47invoke();
    }

    default TextForegroundStyle d(TextForegroundStyle textForegroundStyle) {
        boolean z = textForegroundStyle instanceof BrushStyle;
        if (!z || !(this instanceof BrushStyle)) {
            if (!z || (this instanceof BrushStyle)) {
                return (z || !(this instanceof BrushStyle)) ? textForegroundStyle.c(new hv0(this, 13)) : this;
            }
            return textForegroundStyle;
        }
        BrushStyle brushStyle = (BrushStyle) textForegroundStyle;
        ShaderBrush shaderBrush = brushStyle.f10925a;
        float f2 = brushStyle.f10926b;
        if (Float.isNaN(f2)) {
            f2 = ((BrushStyle) this).f10926b;
        }
        return new BrushStyle(shaderBrush, f2);
    }

    Brush e();
}

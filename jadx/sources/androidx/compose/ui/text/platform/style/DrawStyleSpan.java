package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.graphics.AndroidPathEffect;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/platform/style/DrawStyleSpan;", "Landroid/text/style/CharacterStyle;", "Landroid/text/style/UpdateAppearance;", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "drawStyle", "<init>", "(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DrawStyleSpan extends CharacterStyle implements UpdateAppearance {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DrawStyle f10917b;

    public DrawStyleSpan(DrawStyle drawStyle) {
        this.f10917b = drawStyle;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            Fill fill = Fill.f9010a;
            DrawStyle drawStyle = this.f10917b;
            if (Intrinsics.c(drawStyle, fill)) {
                textPaint.setStyle(Paint.Style.FILL);
                return;
            }
            if (!(drawStyle instanceof Stroke)) {
                v40.g();
                return;
            }
            textPaint.setStyle(Paint.Style.STROKE);
            textPaint.setStrokeWidth(((Stroke) drawStyle).f9012a);
            textPaint.setStrokeMiter(((Stroke) drawStyle).f9013b);
            textPaint.setStrokeJoin(DrawStyleSpan_androidKt.b(((Stroke) drawStyle).d));
            textPaint.setStrokeCap(DrawStyleSpan_androidKt.a(((Stroke) drawStyle).f9014c));
            PathEffect pathEffect = ((Stroke) drawStyle).f9015e;
            textPaint.setPathEffect(pathEffect != null ? ((AndroidPathEffect) pathEffect).f8844a : null);
        }
    }
}

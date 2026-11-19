package androidx.compose.ui.text.platform.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathEffect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.platform.style.CustomBulletSpan;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/platform/style/CustomBulletSpan;", "Landroid/text/style/LeadingMarginSpan;", "Landroidx/compose/ui/graphics/Shape;", "shape", "", "bulletWidthPx", "bulletHeightPx", "gapWidthPx", "Landroidx/compose/ui/graphics/Brush;", "brush", "alpha", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "drawStyle", "Landroidx/compose/ui/unit/Density;", "density", "textIndentPx", "<init>", "(Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/unit/Density;F)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomBulletSpan implements LeadingMarginSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Shape f10910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f10911c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Brush f10912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f10913f;
    public final DrawStyle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Density f10914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10916j;

    public CustomBulletSpan(Shape shape, float f2, float f3, float f4, Brush brush, float f5, DrawStyle drawStyle, Density density, float f6) {
        this.f10910b = shape;
        this.f10911c = f2;
        this.d = f3;
        this.f10912e = brush;
        this.f10913f = f5;
        this.g = drawStyle;
        this.f10914h = density;
        int iC = MathKt.c(f2 + f4);
        this.f10915i = iC;
        this.f10916j = MathKt.c(f6) - iC;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(final Canvas canvas, final Paint paint, int i2, final int i3, int i4, int i5, int i6, CharSequence charSequence, int i7, int i8, boolean z, Layout layout) {
        if (canvas == null) {
            return;
        }
        final float f2 = (i4 + i6) / 2.0f;
        int i9 = i2 - this.f10915i;
        if (i9 < 0) {
            i9 = 0;
        }
        final int i10 = i9;
        charSequence.getClass();
        if (((Spanned) charSequence).getSpanStart(this) != i7 || paint == null) {
            return;
        }
        Paint.Style style = paint.getStyle();
        Fill fill = Fill.f9010a;
        DrawStyle drawStyle = this.g;
        Integer numValueOf = null;
        if (Intrinsics.c(drawStyle, fill)) {
            paint.setStyle(Paint.Style.FILL);
        } else {
            if (!(drawStyle instanceof Stroke)) {
                v40.g();
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            Stroke stroke = (Stroke) drawStyle;
            paint.setStrokeWidth(stroke.f9012a);
            paint.setStrokeMiter(stroke.f9013b);
            paint.setStrokeCap(DrawStyleSpan_androidKt.a(stroke.f9014c));
            paint.setStrokeJoin(DrawStyleSpan_androidKt.b(stroke.d));
            PathEffect pathEffect = stroke.f9015e;
            paint.setPathEffect(pathEffect != null ? ((AndroidPathEffect) pathEffect).f8844a : null);
        }
        final long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(this.f10911c)) << 32) | (((long) Float.floatToRawIntBits(this.d)) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        Function0 function0 = new Function0() { // from class: pr
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CustomBulletSpan customBulletSpan = this.f78911b;
                Shape shape = customBulletSpan.f10910b;
                int i11 = i3;
                Outline outlineA = shape.a(jFloatToRawIntBits, i11 > 0 ? LayoutDirection.Ltr : LayoutDirection.Rtl, customBulletSpan.f10914h);
                float f3 = i10;
                boolean z2 = outlineA instanceof Outline.Generic;
                Canvas canvas2 = canvas;
                Paint paint2 = paint;
                float f4 = f2;
                if (z2) {
                    canvas2.save();
                    Path path = ((Outline.Generic) outlineA).f8902a;
                    Rect bounds = path.getBounds();
                    canvas2.translate(f3, f4 - ((bounds.d - bounds.f8812b) / 2.0f));
                    if (!(path instanceof AndroidPath)) {
                        mt.i("Unable to obtain android.graphics.Path");
                        return null;
                    }
                    canvas2.drawPath(((AndroidPath) path).f8841a, paint2);
                    canvas2.restore();
                } else if (outlineA instanceof Outline.Rounded) {
                    RoundRect roundRect = ((Outline.Rounded) outlineA).f8904a;
                    if (RoundRectKt.d(roundRect)) {
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.f8817e >> 32));
                        canvas2.drawRoundRect(f3, f4 - (roundRect.a() / 2.0f), (roundRect.b() * i11) + f3, (roundRect.a() / 2.0f) + f4, fIntBitsToFloat, fIntBitsToFloat, paint2);
                    } else {
                        AndroidPath androidPathA = AndroidPath_androidKt.a();
                        androidPathA.s(roundRect, Path.Direction.CounterClockwise);
                        canvas2.save();
                        canvas2.translate(f3, f4 - (roundRect.a() / 2.0f));
                        canvas2.drawPath(androidPathA.f8841a, paint2);
                        canvas2.restore();
                    }
                } else {
                    if (!(outlineA instanceof Outline.Rectangle)) {
                        v40.g();
                        return null;
                    }
                    Rect rect = ((Outline.Rectangle) outlineA).f8903a;
                    float f5 = (rect.d - rect.f8812b) / 2.0f;
                    canvas2.drawRect(f3, f4 - f5, tr.a(rect.f8813c, rect.f8811a, i11, f3), f5 + f4, paint2);
                }
                return Unit.f71739a;
            }
        };
        Brush brush = this.f10912e;
        float f3 = this.f10913f;
        if (brush == null) {
            if (!Float.isNaN(f3)) {
                numValueOf = Integer.valueOf(paint.getAlpha());
                paint.setAlpha((int) Math.rint(f3 * 255.0f));
            }
            function0.mo47invoke();
            if (numValueOf != null) {
                paint.setAlpha(numValueOf.intValue());
            }
        } else if (brush instanceof SolidColor) {
            int color = paint.getColor();
            if (!Float.isNaN(f3)) {
                numValueOf = Integer.valueOf(paint.getAlpha());
                paint.setAlpha((int) Math.rint(f3 * 255.0f));
            }
            paint.setColor(ColorKt.i(((SolidColor) brush).f8931b));
            function0.mo47invoke();
            paint.setColor(color);
            if (numValueOf != null) {
                paint.setAlpha(numValueOf.intValue());
            }
        } else {
            if (!(brush instanceof ShaderBrush)) {
                v40.g();
                return;
            }
            Shader shader = paint.getShader();
            if (!Float.isNaN(f3)) {
                numValueOf = Integer.valueOf(paint.getAlpha());
                paint.setAlpha((int) Math.rint(f3 * 255.0f));
            }
            paint.setShader(((ShaderBrush) brush).b(jFloatToRawIntBits));
            function0.mo47invoke();
            paint.setShader(shader);
            if (numValueOf != null) {
                paint.setAlpha(numValueOf.intValue());
            }
        }
        paint.setStyle(style);
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        int i2 = this.f10916j;
        if (i2 >= 0) {
            return 0;
        }
        return Math.abs(i2);
    }
}

package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "<init>", "()V", "DrawParams", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CanvasDrawScope implements DrawScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DrawParams f8995b = new DrawParams(null, null, null, 0, 15, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CanvasDrawScope$drawContext$1 f8996c = new CanvasDrawScope$drawContext$1(this);
    public AndroidPaint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AndroidPaint f8997e;

    public static Paint c(CanvasDrawScope canvasDrawScope, long j2, DrawStyle drawStyle, float f2, int i2) {
        DrawScope.a0.getClass();
        int i3 = DrawScope.Companion.f9008c;
        Paint paintJ = canvasDrawScope.j(drawStyle);
        if (f2 != 1.0f) {
            j2 = Color.b(Color.d(j2) * f2, j2);
        }
        AndroidPaint androidPaint = (AndroidPaint) paintJ;
        if (!Color.c(androidPaint.b(), j2)) {
            androidPaint.c(j2);
        }
        if (androidPaint.f8837c != null) {
            androidPaint.f(null);
        }
        if (!Intrinsics.c(androidPaint.d, null)) {
            androidPaint.l(null);
        }
        int i4 = androidPaint.f8836b;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i4 != i2) {
            androidPaint.k(i2);
        }
        int iH = androidPaint.h();
        FilterQuality.Companion companion2 = FilterQuality.f8878a;
        if (iH == i3) {
            return paintJ;
        }
        androidPaint.m(i3);
        return paintJ;
    }

    public static Paint f(CanvasDrawScope canvasDrawScope, Brush brush, DrawStyle drawStyle, float f2, ColorFilter colorFilter, int i2) {
        DrawScope.a0.getClass();
        return canvasDrawScope.e(brush, drawStyle, f2, colorFilter, i2, DrawScope.Companion.f9008c);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void G(long j2, float f2, float f3, long j3, long j4, DrawStyle drawStyle, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        int i3 = (int) (j3 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (j3 & BodyPartID.bodyIdMax);
        canvas.f(fIntBitsToFloat, Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j4 >> 32)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat(i4), f2, f3, c(this, j2, drawStyle, 1.0f, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void J1(ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3) {
        this.f8995b.f9000c.d(imageBitmap, j2, j3, j4, j5, e(null, drawStyle, f2, colorFilter, i2, i3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void M0(long j2, long j3, long j4, float f2, DrawStyle drawStyle, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        int i3 = (int) (j3 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (j3 & BodyPartID.bodyIdMax);
        canvas.c(fIntBitsToFloat, Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j4 >> 32)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j4)) + Float.intBitsToFloat(i4), c(this, j2, drawStyle, f2, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void Q0(ImageBitmap imageBitmap, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f8995b.f9000c.e(imageBitmap, j2, f(this, null, drawStyle, f2, colorFilter, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void U0(Brush brush, long j2, long j3, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        int i3 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (j2 & BodyPartID.bodyIdMax);
        canvas.c(fIntBitsToFloat, Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & j3)) + Float.intBitsToFloat(i4), f(this, brush, drawStyle, f2, colorFilter, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void V(long j2, float f2, long j3, DrawStyle drawStyle, int i2) {
        this.f8995b.f9000c.u(f2, j3, c(this, j2, drawStyle, 1.0f, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void a0(Path path, long j2, DrawStyle drawStyle, int i2) {
        this.f8995b.f9000c.t(path, c(this, j2, drawStyle, 1.0f, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void b0(long j2, long j3, long j4, float f2, int i2, PathEffect pathEffect, int i3) {
        Canvas canvas = this.f8995b.f9000c;
        StrokeJoin.f8935a.getClass();
        DrawScope.a0.getClass();
        int i4 = DrawScope.Companion.f9008c;
        Paint paintH = h();
        AndroidPaint androidPaint = (AndroidPaint) paintH;
        android.graphics.Paint paint = androidPaint.f8835a;
        if (!Color.c(androidPaint.b(), j2)) {
            androidPaint.c(j2);
        }
        if (androidPaint.f8837c != null) {
            androidPaint.f(null);
        }
        if (!Intrinsics.c(androidPaint.d, null)) {
            androidPaint.l(null);
        }
        int i5 = androidPaint.f8836b;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i5 != i3) {
            androidPaint.k(i3);
        }
        if (paint.getStrokeWidth() != f2) {
            androidPaint.r(f2);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            androidPaint.q(4.0f);
        }
        int i6 = androidPaint.i();
        StrokeCap.Companion companion2 = StrokeCap.f8932a;
        if (i6 != i2) {
            androidPaint.o(i2);
        }
        if (androidPaint.j() != 0) {
            androidPaint.p(0);
        }
        if (!Intrinsics.c(androidPaint.f8838e, pathEffect)) {
            androidPaint.n(pathEffect);
        }
        int iH = androidPaint.h();
        FilterQuality.Companion companion3 = FilterQuality.f8878a;
        if (iH != i4) {
            androidPaint.m(i4);
        }
        canvas.n(j3, j4, paintH);
    }

    public final Paint e(Brush brush, DrawStyle drawStyle, float f2, ColorFilter colorFilter, int i2, int i3) {
        Paint paintJ = j(drawStyle);
        if (brush != null) {
            brush.a(f2, b(), paintJ);
        } else {
            AndroidPaint androidPaint = (AndroidPaint) paintJ;
            if (androidPaint.f8837c != null) {
                androidPaint.f(null);
            }
            long jB = androidPaint.b();
            Color.f8866b.getClass();
            long j2 = Color.f8867c;
            if (!Color.c(jB, j2)) {
                androidPaint.c(j2);
            }
            if (androidPaint.a() != f2) {
                androidPaint.d(f2);
            }
        }
        AndroidPaint androidPaint2 = (AndroidPaint) paintJ;
        if (!Intrinsics.c(androidPaint2.d, colorFilter)) {
            androidPaint2.l(colorFilter);
        }
        int i4 = androidPaint2.f8836b;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i4 != i2) {
            androidPaint2.k(i2);
        }
        int iH = androidPaint2.h();
        FilterQuality.Companion companion2 = FilterQuality.f8878a;
        if (iH == i3) {
            return paintJ;
        }
        androidPaint2.m(i3);
        return paintJ;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11002b() {
        return this.f8995b.f8998a.getF11002b();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.f8995b.f8999b;
    }

    public final Paint h() {
        AndroidPaint androidPaint = this.f8997e;
        if (androidPaint != null) {
            return androidPaint;
        }
        AndroidPaint androidPaint2 = new AndroidPaint();
        PaintingStyle.f8906a.getClass();
        androidPaint2.s(PaintingStyle.f8907b);
        this.f8997e = androidPaint2;
        return androidPaint2;
    }

    public final Paint j(DrawStyle drawStyle) {
        if (Intrinsics.c(drawStyle, Fill.f9010a)) {
            AndroidPaint androidPaint = this.d;
            if (androidPaint != null) {
                return androidPaint;
            }
            AndroidPaint androidPaint2 = new AndroidPaint();
            PaintingStyle.f8906a.getClass();
            androidPaint2.s(0);
            this.d = androidPaint2;
            return androidPaint2;
        }
        if (!(drawStyle instanceof Stroke)) {
            v40.g();
            return null;
        }
        Paint paintH = h();
        AndroidPaint androidPaint3 = (AndroidPaint) paintH;
        android.graphics.Paint paint = androidPaint3.f8835a;
        float strokeWidth = paint.getStrokeWidth();
        Stroke stroke = (Stroke) drawStyle;
        PathEffect pathEffect = stroke.f9015e;
        float f2 = stroke.f9012a;
        if (strokeWidth != f2) {
            androidPaint3.r(f2);
        }
        int i2 = androidPaint3.i();
        int i3 = stroke.f9014c;
        if (i2 != i3) {
            androidPaint3.o(i3);
        }
        float strokeMiter = paint.getStrokeMiter();
        float f3 = stroke.f9013b;
        if (strokeMiter != f3) {
            androidPaint3.q(f3);
        }
        int iJ = androidPaint3.j();
        int i4 = stroke.d;
        if (iJ != i4) {
            androidPaint3.p(i4);
        }
        if (!Intrinsics.c(androidPaint3.f8838e, pathEffect)) {
            androidPaint3.n(pathEffect);
        }
        return paintH;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void m1(Brush brush, long j2, long j3, float f2, float f3, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        StrokeJoin.f8935a.getClass();
        DrawScope.a0.getClass();
        int i3 = DrawScope.Companion.f9008c;
        Paint paintH = h();
        if (brush != null) {
            brush.a(f3, b(), paintH);
        } else {
            AndroidPaint androidPaint = (AndroidPaint) paintH;
            if (androidPaint.a() != f3) {
                androidPaint.d(f3);
            }
        }
        AndroidPaint androidPaint2 = (AndroidPaint) paintH;
        android.graphics.Paint paint = androidPaint2.f8835a;
        if (!Intrinsics.c(androidPaint2.d, null)) {
            androidPaint2.l(null);
        }
        int i4 = androidPaint2.f8836b;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i4 != i2) {
            androidPaint2.k(i2);
        }
        if (paint.getStrokeWidth() != f2) {
            androidPaint2.r(f2);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            androidPaint2.q(4.0f);
        }
        int i5 = androidPaint2.i();
        StrokeCap.Companion companion2 = StrokeCap.f8932a;
        if (i5 != 0) {
            androidPaint2.o(0);
        }
        if (androidPaint2.j() != 0) {
            androidPaint2.p(0);
        }
        if (!Intrinsics.c(androidPaint2.f8838e, null)) {
            androidPaint2.n(null);
        }
        int iH = androidPaint2.h();
        FilterQuality.Companion companion3 = FilterQuality.f8878a;
        if (iH != i3) {
            androidPaint2.m(i3);
        }
        canvas.n(j2, j3, paintH);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void o1(Brush brush, long j2, long j3, long j4, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        int i3 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (j2 & BodyPartID.bodyIdMax);
        canvas.v(fIntBitsToFloat, Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)), f(this, brush, drawStyle, f2, colorFilter, i2));
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11003c() {
        return this.f8995b.f8998a.getF11003c();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void v0(Path path, Brush brush, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2) {
        this.f8995b.f9000c.t(path, f(this, brush, drawStyle, f2, colorFilter, i2));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* JADX INFO: renamed from: x1, reason: from getter */
    public final CanvasDrawScope$drawContext$1 getF8996c() {
        return this.f8996c;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void z1(long j2, long j3, long j4, long j5, DrawStyle drawStyle, int i2) {
        Canvas canvas = this.f8995b.f9000c;
        int i3 = (int) (j3 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        int i4 = (int) (j3 & BodyPartID.bodyIdMax);
        canvas.v(fIntBitsToFloat, Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j4 >> 32)) + Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat(i4), Float.intBitsToFloat((int) (j5 >> 32)), Float.intBitsToFloat((int) (j5 & BodyPartID.bodyIdMax)), c(this, j2, drawStyle, 1.0f, i2));
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;", "", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "Landroidx/compose/ui/graphics/Canvas;", "canvas", "Landroidx/compose/ui/geometry/Size;", "size", "<init>", "(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/Canvas;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class DrawParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Density f8998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LayoutDirection f8999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Canvas f9000c;
        public long d;

        /* JADX WARN: Illegal instructions before constructor call */
        public DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            Density density2 = (i2 & 1) != 0 ? DrawContextKt.f9005a : density;
            LayoutDirection layoutDirection2 = (i2 & 2) != 0 ? LayoutDirection.Ltr : layoutDirection;
            Canvas canvas2 = (i2 & 4) != 0 ? EmptyCanvas.f9009a : canvas;
            if ((i2 & 8) != 0) {
                Size.f8820b.getClass();
                j2 = 0;
            }
            this(density2, layoutDirection2, canvas2, j2, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawParams)) {
                return false;
            }
            DrawParams drawParams = (DrawParams) obj;
            return Intrinsics.c(this.f8998a, drawParams.f8998a) && this.f8999b == drawParams.f8999b && Intrinsics.c(this.f9000c, drawParams.f9000c) && Size.a(this.d, drawParams.d);
        }

        public final int hashCode() {
            int iHashCode = (this.f9000c.hashCode() + ((this.f8999b.hashCode() + (this.f8998a.hashCode() * 31)) * 31)) * 31;
            long j2 = this.d;
            Size.Companion companion = Size.f8820b;
            return Long.hashCode(j2) + iHashCode;
        }

        public final String toString() {
            return "DrawParams(density=" + this.f8998a + ", layoutDirection=" + this.f8999b + ", canvas=" + this.f9000c + ", size=" + ((Object) Size.f(this.d)) + ')';
        }

        public DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            this.f8998a = density;
            this.f8999b = layoutDirection;
            this.f9000c = canvas;
            this.d = j2;
        }
    }
}

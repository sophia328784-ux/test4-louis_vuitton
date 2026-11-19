package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.unit.IntOffset;
import defpackage.mt;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/AndroidCanvas;", "Landroidx/compose/ui/graphics/Canvas;", "<init>", "()V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidCanvas implements Canvas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.graphics.Canvas f8823a = AndroidCanvas_androidKt.f8826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f8824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Rect f8825c;

    @Override // androidx.compose.ui.graphics.Canvas
    public final void a(float f2, float f3, float f4, float f5, int i2) {
        android.graphics.Canvas canvas = this.f8823a;
        ClipOp.f8864a.getClass();
        canvas.clipRect(f2, f3, f4, f5, i2 == 0 ? Region.Op.DIFFERENCE : Region.Op.INTERSECT);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void b(float f2, float f3) {
        this.f8823a.scale(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void c(float f2, float f3, float f4, float f5, Paint paint) {
        this.f8823a.drawRect(f2, f3, f4, f5, AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void d(ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, Paint paint) {
        if (this.f8824b == null) {
            this.f8824b = new Rect();
            this.f8825c = new Rect();
        }
        android.graphics.Canvas canvas = this.f8823a;
        Bitmap bitmapA = AndroidImageBitmap_androidKt.a(imageBitmap);
        Rect rect = this.f8824b;
        rect.getClass();
        IntOffset.Companion companion = IntOffset.f11012b;
        int i2 = (int) (j2 >> 32);
        rect.left = i2;
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        rect.top = i3;
        rect.right = i2 + ((int) (j3 >> 32));
        rect.bottom = i3 + ((int) (j3 & BodyPartID.bodyIdMax));
        Rect rect2 = this.f8825c;
        rect2.getClass();
        int i4 = (int) (j4 >> 32);
        rect2.left = i4;
        int i5 = (int) (j4 & BodyPartID.bodyIdMax);
        rect2.top = i5;
        rect2.right = i4 + ((int) (j5 >> 32));
        rect2.bottom = i5 + ((int) (j5 & BodyPartID.bodyIdMax));
        canvas.drawBitmap(bitmapA, rect, rect2, AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void e(ImageBitmap imageBitmap, long j2, Paint paint) {
        this.f8823a.drawBitmap(AndroidImageBitmap_androidKt.a(imageBitmap), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void f(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        this.f8823a.drawArc(f2, f3, f4, f5, f6, f7, false, AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void i(Path path, int i2) {
        android.graphics.Canvas canvas = this.f8823a;
        if (!(path instanceof AndroidPath)) {
            mt.i("Unable to obtain android.graphics.Path");
            return;
        }
        android.graphics.Path path2 = ((AndroidPath) path).f8841a;
        ClipOp.f8864a.getClass();
        canvas.clipPath(path2, i2 == 0 ? Region.Op.DIFFERENCE : Region.Op.INTERSECT);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void j(float f2, float f3) {
        this.f8823a.translate(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void l() {
        this.f8823a.enableZ();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void m(androidx.compose.ui.geometry.Rect rect, Paint paint) {
        this.f8823a.saveLayer(rect.f8811a, rect.f8812b, rect.f8813c, rect.d, AndroidPaint_androidKt.a(paint), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void n(long j2, long j3, Paint paint) {
        this.f8823a.drawLine(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)), AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void o(float f2) {
        this.f8823a.rotate(f2);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void p() {
        this.f8823a.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void q() {
        this.f8823a.disableZ();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void r(float[] fArr) {
        if (MatrixKt.a(fArr)) {
            return;
        }
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        AndroidMatrixConversions_androidKt.a(matrix, fArr);
        this.f8823a.concat(matrix);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void restore() {
        this.f8823a.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void t(Path path, Paint paint) {
        android.graphics.Canvas canvas = this.f8823a;
        if (path instanceof AndroidPath) {
            canvas.drawPath(((AndroidPath) path).f8841a, AndroidPaint_androidKt.a(paint));
        } else {
            mt.i("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void u(float f2, long j2, Paint paint) {
        this.f8823a.drawCircle(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), f2, AndroidPaint_androidKt.a(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void v(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        this.f8823a.drawRoundRect(f2, f3, f4, f5, f6, f7, AndroidPaint_androidKt.a(paint));
    }
}

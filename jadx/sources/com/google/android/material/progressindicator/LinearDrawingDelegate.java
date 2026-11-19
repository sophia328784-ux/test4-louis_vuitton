package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import androidx.core.math.MathUtils;
import com.google.android.material.color.MaterialColors;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class LinearDrawingDelegate extends DrawingDelegate<LinearProgressIndicatorSpec> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f32843f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32845i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f32846j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f32847k;
    public int l;
    public boolean m;
    public float n;
    public Pair o;

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void a(Canvas canvas, Rect rect, float f2, boolean z, boolean z2) {
        if (this.f32843f != rect.width()) {
            this.f32843f = rect.width();
            g();
        }
        float fE = e();
        canvas.translate((rect.width() / 2.0f) + rect.left, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, (rect.height() - fE) / 2.0f) + (rect.height() / 2.0f) + rect.top);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.f32828a;
        if (linearProgressIndicatorSpec.q) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f3 = this.f32843f / 2.0f;
        float f4 = fE / 2.0f;
        canvas.clipRect(-f3, -f4, f3, f4);
        int i2 = linearProgressIndicatorSpec.f32786a;
        this.g = i2 * f2;
        this.f32844h = Math.min(i2 / 2, linearProgressIndicatorSpec.a()) * f2;
        this.f32846j = linearProgressIndicatorSpec.l * f2;
        this.f32845i = Math.min(linearProgressIndicatorSpec.f32786a / 2.0f, linearProgressIndicatorSpec.e()) * f2;
        if (z || z2) {
            if ((z && linearProgressIndicatorSpec.g == 2) || (z2 && linearProgressIndicatorSpec.f32791h == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && linearProgressIndicatorSpec.f32791h != 3)) {
                canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((1.0f - f2) * linearProgressIndicatorSpec.f32786a) / 2.0f);
            }
        }
        if (z2 && linearProgressIndicatorSpec.f32791h == 3) {
            this.n = f2;
        } else {
            this.n = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void b(int i2, int i3, Canvas canvas, Paint paint) {
        int iA = MaterialColors.a(i2, i3);
        this.m = false;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.f32828a;
        if (linearProgressIndicatorSpec.r <= 0 || iA == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iA);
        Integer num = linearProgressIndicatorSpec.s;
        DrawingDelegate.PathPoint pathPoint = new DrawingDelegate.PathPoint(this, new float[]{(this.f32843f / 2.0f) - (num != null ? (linearProgressIndicatorSpec.r / 2.0f) + num.floatValue() : this.g / 2.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM});
        int i4 = linearProgressIndicatorSpec.r;
        j(canvas, paint, pathPoint, i4, i4, (this.f32844h * i4) / this.g, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void c(Canvas canvas, Paint paint, DrawingDelegate.ActiveIndicator activeIndicator, int i2) {
        int iA = MaterialColors.a(activeIndicator.f32834c, i2);
        this.m = activeIndicator.f32837h;
        float f2 = activeIndicator.f32832a;
        float f3 = activeIndicator.f32833b;
        int i3 = activeIndicator.d;
        i(canvas, paint, f2, f3, iA, i3, i3, activeIndicator.f32835e, activeIndicator.f32836f, true);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void d(Canvas canvas, Paint paint, float f2, float f3, int i2, int i3, int i4) {
        int iA = MaterialColors.a(i2, i3);
        this.m = false;
        i(canvas, paint, f2, f3, iA, i4, i4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final int e() {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32828a;
        return (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).l * 2) + ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).f32786a;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final int f() {
        return -1;
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void g() {
        Path path = this.f32829b;
        path.rewind();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.f32828a;
        if (linearProgressIndicatorSpec.b(this.m)) {
            int i2 = this.m ? linearProgressIndicatorSpec.f32793j : linearProgressIndicatorSpec.f32794k;
            float f2 = this.f32843f;
            int i3 = (int) (f2 / i2);
            this.f32847k = f2 / i3;
            for (int i4 = 0; i4 <= i3; i4++) {
                int i5 = i4 * 2;
                float f3 = i5 + 1;
                path.cubicTo(i5 + 0.48f, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3 - 0.48f, 1.0f, f3, 1.0f);
                float f4 = f3 + 0.48f;
                float f5 = i5 + 2;
                path.cubicTo(f4, 1.0f, f5 - 0.48f, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            Matrix matrix = this.f32831e;
            matrix.reset();
            matrix.setScale(this.f32847k / 2.0f, -2.0f);
            matrix.postTranslate(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            path.transform(matrix);
        } else {
            path.lineTo(this.f32843f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        this.d.setPath(path, false);
    }

    public final void i(Canvas canvas, Paint paint, float f2, float f3, int i2, int i3, int i4, float f4, float f5, boolean z) {
        float fC;
        float fC2;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec;
        int i5;
        float f6;
        Canvas canvas2;
        Pair pair = this.o;
        float fA = MathUtils.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        float fA2 = MathUtils.a(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        float fC3 = com.google.android.material.math.MathUtils.c(1.0f - this.n, 1.0f, fA);
        float fC4 = com.google.android.material.math.MathUtils.c(1.0f - this.n, 1.0f, fA2);
        int iA = (int) ((MathUtils.a(fC3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.01f) * i3) / 0.01f);
        int iA2 = (int) (((1.0f - MathUtils.a(fC4, 0.99f, 1.0f)) * i4) / 0.01f);
        float f7 = this.f32843f;
        int i6 = (int) ((fC3 * f7) + iA);
        int i7 = (int) ((fC4 * f7) - iA2);
        float f8 = this.f32844h;
        float f9 = this.f32845i;
        if (f8 != f9) {
            float fMax = Math.max(f8, f9);
            float f10 = this.f32843f;
            float f11 = fMax / f10;
            fC = com.google.android.material.math.MathUtils.c(this.f32844h, this.f32845i, MathUtils.a(i6 / f10, Call.Parameters.DEFAULT_CAMERA_ZOOM, f11) / f11);
            float f12 = this.f32844h;
            float f13 = this.f32845i;
            float f14 = this.f32843f;
            fC2 = com.google.android.material.math.MathUtils.c(f12, f13, MathUtils.a((f14 - i7) / f14, Call.Parameters.DEFAULT_CAMERA_ZOOM, f11) / f11);
        } else {
            fC = f8;
            fC2 = fC;
        }
        float f15 = (-this.f32843f) / 2.0f;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec2 = (LinearProgressIndicatorSpec) this.f32828a;
        boolean z2 = linearProgressIndicatorSpec2.b(this.m) && z && f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (i6 <= i7) {
            float f16 = i6 + fC;
            float f17 = i7 - fC2;
            float f18 = fC * 2.0f;
            float f19 = fC2 * 2.0f;
            paint.setColor(i2);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.g);
            ((DrawingDelegate.PathPoint) pair.first).c();
            ((DrawingDelegate.PathPoint) pair.second).c();
            ((DrawingDelegate.PathPoint) pair.first).f(f16 + f15);
            ((DrawingDelegate.PathPoint) pair.second).f(f17 + f15);
            if (i6 == 0 && f17 + fC2 < f16 + fC) {
                DrawingDelegate.PathPoint pathPoint = (DrawingDelegate.PathPoint) pair.first;
                float f20 = this.g;
                j(canvas, paint, pathPoint, f18, f20, fC, (DrawingDelegate.PathPoint) pair.second, f19, f20, fC2, true);
                return;
            }
            if (f16 - fC > f17 - fC2) {
                DrawingDelegate.PathPoint pathPoint2 = (DrawingDelegate.PathPoint) pair.second;
                float f21 = this.g;
                j(canvas, paint, pathPoint2, f19, f21, fC2, (DrawingDelegate.PathPoint) pair.first, f18, f21, fC, false);
                return;
            }
            float f22 = fC2;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(linearProgressIndicatorSpec2.c() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            if (z2) {
                float f23 = this.f32843f;
                float f24 = f16 / f23;
                float f25 = f17 / f23;
                if (this.m) {
                    linearProgressIndicatorSpec = linearProgressIndicatorSpec2;
                    i5 = linearProgressIndicatorSpec.f32793j;
                } else {
                    linearProgressIndicatorSpec = linearProgressIndicatorSpec2;
                    i5 = linearProgressIndicatorSpec.f32794k;
                }
                if (i5 != this.l) {
                    this.l = i5;
                    g();
                }
                Path path = this.f32830c;
                path.rewind();
                float f26 = (-this.f32843f) / 2.0f;
                boolean zB = linearProgressIndicatorSpec.b(this.m);
                if (zB) {
                    float f27 = this.f32843f;
                    f6 = 1.0f;
                    float f28 = this.f32847k;
                    float f29 = f27 / f28;
                    float f30 = f5 / f29;
                    float f31 = f29 / (f29 + 1.0f);
                    f24 = (f24 + f30) * f31;
                    f25 = (f25 + f30) * f31;
                    f26 -= f28 * f5;
                } else {
                    f6 = 1.0f;
                }
                PathMeasure pathMeasure = this.d;
                float length = pathMeasure.getLength() * f24;
                float length2 = pathMeasure.getLength() * f25;
                pathMeasure.getSegment(length, length2, path, true);
                DrawingDelegate.PathPoint pathPoint3 = (DrawingDelegate.PathPoint) pair.first;
                pathPoint3.c();
                pathMeasure.getPosTan(length, pathPoint3.f32838a, pathPoint3.f32839b);
                DrawingDelegate.PathPoint pathPoint4 = (DrawingDelegate.PathPoint) pair.second;
                pathPoint4.c();
                pathMeasure.getPosTan(length2, pathPoint4.f32838a, pathPoint4.f32839b);
                Matrix matrix = this.f32831e;
                matrix.reset();
                matrix.setTranslate(f26, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                pathPoint3.f(f26);
                pathPoint4.f(f26);
                if (zB) {
                    float f32 = this.f32846j * f4;
                    matrix.postScale(f6, f32);
                    pathPoint3.e(f32);
                    pathPoint4.e(f32);
                }
                path.transform(matrix);
                canvas2 = canvas;
                canvas2.drawPath(path, paint);
            } else {
                float[] fArr = ((DrawingDelegate.PathPoint) pair.first).f32838a;
                float f33 = fArr[0];
                float f34 = fArr[1];
                float[] fArr2 = ((DrawingDelegate.PathPoint) pair.second).f32838a;
                canvas.drawLine(f33, f34, fArr2[0], fArr2[1], paint);
                canvas2 = canvas;
                linearProgressIndicatorSpec = linearProgressIndicatorSpec2;
            }
            if (linearProgressIndicatorSpec.c()) {
                return;
            }
            if (f16 > Call.Parameters.DEFAULT_CAMERA_ZOOM && fC > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                j(canvas2, paint, (DrawingDelegate.PathPoint) pair.first, f18, this.g, fC, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false);
            }
            if (f17 >= this.f32843f || f22 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            j(canvas, paint, (DrawingDelegate.PathPoint) pair.second, f19, this.g, f22, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false);
        }
    }

    public final void j(Canvas canvas, Paint paint, DrawingDelegate.PathPoint pathPoint, float f2, float f3, float f4, DrawingDelegate.PathPoint pathPoint2, float f5, float f6, float f7, boolean z) {
        float f8;
        float f9;
        float fMin = Math.min(f3, this.g);
        float f10 = (-f2) / 2.0f;
        float f11 = (-fMin) / 2.0f;
        float f12 = f2 / 2.0f;
        float f13 = fMin / 2.0f;
        RectF rectF = new RectF(f10, f11, f12, f13);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pathPoint2 != null) {
            float[] fArr = pathPoint2.f32839b;
            float[] fArr2 = pathPoint2.f32838a;
            float fMin2 = Math.min(f6, this.g);
            float fMin3 = Math.min(f5 / 2.0f, (f7 * fMin2) / this.g);
            RectF rectF2 = new RectF();
            if (z) {
                float f14 = (fArr2[0] - fMin3) - (pathPoint.f32838a[0] - f4);
                if (f14 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    pathPoint2.f((-f14) / 2.0f);
                    f9 = f5 + f14;
                } else {
                    f9 = f5;
                }
                rectF2.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, f11, f12, f13);
            } else {
                float f15 = (fArr2[0] + fMin3) - (pathPoint.f32838a[0] + f4);
                if (f15 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    pathPoint2.f((-f15) / 2.0f);
                    f8 = f5 - f15;
                } else {
                    f8 = f5;
                }
                rectF2.set(f10, f11, Call.Parameters.DEFAULT_CAMERA_ZOOM, f13);
                f9 = f8;
            }
            RectF rectF3 = new RectF((-f9) / 2.0f, (-fMin2) / 2.0f, f9 / 2.0f, fMin2 / 2.0f);
            canvas.translate(fArr2[0], fArr2[1]);
            canvas.rotate(DrawingDelegate.h(fArr));
            Path path = new Path();
            path.addRoundRect(rectF3, fMin3, fMin3, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.rotate(-DrawingDelegate.h(fArr));
            canvas.translate(-fArr2[0], -fArr2[1]);
            float[] fArr3 = pathPoint.f32838a;
            canvas.translate(fArr3[0], fArr3[1]);
            canvas.rotate(DrawingDelegate.h(pathPoint.f32839b));
            canvas.drawRect(rectF2, paint);
            canvas.drawRoundRect(rectF, f4, f4, paint);
        } else {
            float[] fArr4 = pathPoint.f32838a;
            canvas.translate(fArr4[0], fArr4[1]);
            canvas.rotate(DrawingDelegate.h(pathPoint.f32839b));
            canvas.drawRoundRect(rectF, f4, f4, paint);
        }
        canvas.restore();
    }
}

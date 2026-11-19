package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Pair;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.math.MathUtils;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class CircularDrawingDelegate extends DrawingDelegate<CircularProgressIndicatorSpec> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f32795f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f32798j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f32799k;
    public int l;
    public float m;
    public boolean n;
    public float o;
    public final RectF p;
    public final Pair q;

    public CircularDrawingDelegate(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.p = new RectF();
        this.q = new Pair(new DrawingDelegate.PathPoint(this), new DrawingDelegate.PathPoint(this));
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void a(Canvas canvas, Rect rect, float f2, boolean z, boolean z2) {
        float fWidth = rect.width() / k();
        float fHeight = rect.height() / k();
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f32828a;
        float f3 = (circularProgressIndicatorSpec.p / 2.0f) + circularProgressIndicatorSpec.q;
        canvas.translate((f3 * fWidth) + rect.left, (f3 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (circularProgressIndicatorSpec.r != 0) {
            canvas.scale(1.0f, -1.0f);
            if (Build.VERSION.SDK_INT == 29) {
                canvas.rotate(0.1f);
            }
        }
        float f4 = -f3;
        canvas.clipRect(f4, f4, f3, f3);
        int i2 = circularProgressIndicatorSpec.f32786a;
        this.f32795f = i2 * f2;
        this.g = Math.min(i2 / 2, circularProgressIndicatorSpec.a()) * f2;
        this.f32796h = circularProgressIndicatorSpec.l * f2;
        int i3 = circularProgressIndicatorSpec.p;
        int i4 = circularProgressIndicatorSpec.f32786a;
        float f5 = (i3 - i4) / 2.0f;
        this.f32797i = f5;
        if (z || z2) {
            float f6 = ((1.0f - f2) * i4) / 2.0f;
            if ((z && circularProgressIndicatorSpec.g == 2) || (z2 && circularProgressIndicatorSpec.f32791h == 1)) {
                this.f32797i = f5 + f6;
            } else if ((z && circularProgressIndicatorSpec.g == 1) || (z2 && circularProgressIndicatorSpec.f32791h == 2)) {
                this.f32797i = f5 - f6;
            }
        }
        if (z2 && circularProgressIndicatorSpec.f32791h == 3) {
            this.o = f2;
        } else {
            this.o = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void b(int i2, int i3, Canvas canvas, Paint paint) {
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void c(Canvas canvas, Paint paint, DrawingDelegate.ActiveIndicator activeIndicator, int i2) {
        int iA = MaterialColors.a(activeIndicator.f32834c, i2);
        canvas.save();
        canvas.rotate(activeIndicator.g);
        this.n = activeIndicator.f32837h;
        float f2 = activeIndicator.f32832a;
        float f3 = activeIndicator.f32833b;
        int i3 = activeIndicator.d;
        i(canvas, paint, f2, f3, iA, i3, i3, activeIndicator.f32835e, activeIndicator.f32836f, true);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void d(Canvas canvas, Paint paint, float f2, float f3, int i2, int i3, int i4) {
        int iA = MaterialColors.a(i2, i3);
        this.n = false;
        i(canvas, paint, f2, f3, iA, i4, i4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, false);
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final int e() {
        return k();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final int f() {
        return k();
    }

    @Override // com.google.android.material.progressindicator.DrawingDelegate
    public final void g() {
        Path path = this.f32829b;
        path.rewind();
        path.moveTo(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        for (int i2 = 0; i2 < 2; i2++) {
            path.cubicTo(1.0f, 0.5522848f, 0.5522848f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            path.cubicTo(-0.5522848f, 1.0f, -1.0f, 0.5522848f, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            path.cubicTo(-1.0f, -0.5522848f, -0.5522848f, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f);
            path.cubicTo(0.5522848f, -1.0f, 1.0f, -0.5522848f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        Matrix matrix = this.f32831e;
        matrix.reset();
        float f2 = this.f32797i;
        matrix.setScale(f2, f2);
        path.transform(matrix);
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f32828a;
        boolean zB = circularProgressIndicatorSpec.b(this.n);
        PathMeasure pathMeasure = this.d;
        if (zB) {
            pathMeasure.setPath(path, false);
            float f3 = this.f32799k;
            path.rewind();
            float length = pathMeasure.getLength();
            int iMax = Math.max(3, (int) ((length / (this.n ? circularProgressIndicatorSpec.f32793j : circularProgressIndicatorSpec.f32794k)) / 2.0f)) * 2;
            this.f32798j = length / iMax;
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < iMax; i3++) {
                DrawingDelegate.PathPoint pathPoint = new DrawingDelegate.PathPoint(this);
                float f4 = i3;
                pathMeasure.getPosTan(this.f32798j * f4, pathPoint.f32838a, pathPoint.f32839b);
                DrawingDelegate.PathPoint pathPoint2 = new DrawingDelegate.PathPoint(this);
                float f5 = this.f32798j;
                pathMeasure.getPosTan((f5 / 2.0f) + (f4 * f5), pathPoint2.f32838a, pathPoint2.f32839b);
                arrayList.add(pathPoint);
                pathPoint2.a(f3 * 2.0f);
                arrayList.add(pathPoint2);
            }
            arrayList.add((DrawingDelegate.PathPoint) arrayList.get(0));
            DrawingDelegate.PathPoint pathPoint3 = (DrawingDelegate.PathPoint) arrayList.get(0);
            float[] fArr = pathPoint3.f32838a;
            path.moveTo(fArr[0], fArr[1]);
            int i4 = 1;
            while (i4 < arrayList.size()) {
                DrawingDelegate.PathPoint pathPoint4 = (DrawingDelegate.PathPoint) arrayList.get(i4);
                float f6 = (this.f32798j / 2.0f) * 0.48f;
                DrawingDelegate.PathPoint pathPoint5 = new DrawingDelegate.PathPoint(this, pathPoint3);
                DrawingDelegate.PathPoint pathPoint6 = new DrawingDelegate.PathPoint(this, pathPoint4);
                pathPoint5.b(f6);
                pathPoint6.b(-f6);
                float[] fArr2 = pathPoint5.f32838a;
                float f7 = fArr2[0];
                float f8 = fArr2[1];
                float[] fArr3 = pathPoint6.f32838a;
                float f9 = fArr3[0];
                float f10 = fArr3[1];
                float[] fArr4 = pathPoint4.f32838a;
                path.cubicTo(f7, f8, f9, f10, fArr4[0], fArr4[1]);
                i4++;
                pathPoint3 = pathPoint4;
            }
        }
        pathMeasure.setPath(path, false);
    }

    public final void i(Canvas canvas, Paint paint, float f2, float f3, int i2, int i3, int i4, float f4, float f5, boolean z) {
        float f6;
        Canvas canvas2;
        float f7 = f3 >= f2 ? f3 - f2 : (f3 + 1.0f) - f2;
        float f8 = f2 % 1.0f;
        if (f8 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f8 += 1.0f;
        }
        if (this.o < 1.0f) {
            float f9 = f8 + f7;
            if (f9 > 1.0f) {
                i(canvas, paint, f8, 1.0f, i2, i3, 0, f4, f5, z);
                i(canvas, paint, 1.0f, f9, i2, 0, i4, f4, f5, z);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.g / this.f32797i);
        float f10 = f7 - 0.99f;
        if (f10 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f11 = ((f10 * degrees) / 180.0f) / 0.01f;
            f7 += f11;
            if (!z) {
                f8 -= f11 / 2.0f;
            }
        }
        float fC = MathUtils.c(1.0f - this.o, 1.0f, f8);
        float fC2 = MathUtils.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.o, f7);
        float degrees2 = (float) Math.toDegrees(i3 / this.f32797i);
        float degrees3 = ((fC2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i4 / this.f32797i));
        float f12 = (fC * 360.0f) + degrees2;
        if (degrees3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f32828a;
        boolean z2 = circularProgressIndicatorSpec.b(this.n) && z && f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        paint.setAntiAlias(true);
        paint.setColor(i2);
        paint.setStrokeWidth(this.f32795f);
        float f13 = this.g * 2.0f;
        float f14 = degrees * 2.0f;
        PathMeasure pathMeasure = this.d;
        if (degrees3 < f14) {
            float f15 = degrees3 / f14;
            float f16 = (degrees * f15) + f12;
            DrawingDelegate.PathPoint pathPoint = new DrawingDelegate.PathPoint(this);
            if (z2) {
                float length = (pathMeasure.getLength() * (f16 / 360.0f)) / 2.0f;
                float f17 = this.f32796h * f4;
                float f18 = this.f32797i;
                if (f18 != this.m || f17 != this.f32799k) {
                    this.f32799k = f17;
                    this.m = f18;
                    g();
                }
                pathMeasure.getPosTan(length, pathPoint.f32838a, pathPoint.f32839b);
            } else {
                pathPoint.d(f16 + 90.0f);
                pathPoint.a(-this.f32797i);
            }
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, pathPoint, f13, this.f32795f, f15);
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(circularProgressIndicatorSpec.c() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f19 = f12 + degrees;
        float f20 = degrees3 - f14;
        Pair pair = this.q;
        ((DrawingDelegate.PathPoint) pair.first).c();
        ((DrawingDelegate.PathPoint) pair.second).c();
        if (z2) {
            float f21 = f19 / 360.0f;
            float f22 = f20 / 360.0f;
            float f23 = this.f32796h * f4;
            int i5 = this.n ? circularProgressIndicatorSpec.f32793j : circularProgressIndicatorSpec.f32794k;
            float f24 = this.f32797i;
            if (f24 != this.m || f23 != this.f32799k || i5 != this.l) {
                this.f32799k = f23;
                this.l = i5;
                this.m = f24;
                g();
            }
            Path path = this.f32830c;
            path.rewind();
            float fA = androidx.core.math.MathUtils.a(f22, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            if (circularProgressIndicatorSpec.b(this.n)) {
                float f25 = f5 / ((float) ((((double) this.f32797i) * 6.283185307179586d) / ((double) this.f32798j)));
                f21 += f25;
                f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM - (f25 * 360.0f);
            } else {
                f6 = 0.0f;
            }
            float f26 = f21 % 1.0f;
            float length2 = (pathMeasure.getLength() * f26) / 2.0f;
            float length3 = (pathMeasure.getLength() * (f26 + fA)) / 2.0f;
            pathMeasure.getSegment(length2, length3, path, true);
            DrawingDelegate.PathPoint pathPoint2 = (DrawingDelegate.PathPoint) pair.first;
            pathPoint2.c();
            pathMeasure.getPosTan(length2, pathPoint2.f32838a, pathPoint2.f32839b);
            DrawingDelegate.PathPoint pathPoint3 = (DrawingDelegate.PathPoint) pair.second;
            pathPoint3.c();
            pathMeasure.getPosTan(length3, pathPoint3.f32838a, pathPoint3.f32839b);
            Matrix matrix = this.f32831e;
            matrix.reset();
            matrix.setRotate(f6);
            pathPoint2.d(f6);
            pathPoint3.d(f6);
            path.transform(matrix);
            canvas2 = canvas;
            canvas2.drawPath(path, paint);
        } else {
            ((DrawingDelegate.PathPoint) pair.first).d(f19 + 90.0f);
            ((DrawingDelegate.PathPoint) pair.first).a(-this.f32797i);
            ((DrawingDelegate.PathPoint) pair.second).d(f19 + f20 + 90.0f);
            ((DrawingDelegate.PathPoint) pair.second).a(-this.f32797i);
            float f27 = this.f32797i;
            float f28 = -f27;
            RectF rectF = this.p;
            rectF.set(f28, f28, f27, f27);
            canvas.drawArc(rectF, f19, f20, false, paint);
            canvas2 = canvas;
        }
        if (circularProgressIndicatorSpec.c() || this.g <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        j(canvas2, paint, (DrawingDelegate.PathPoint) pair.first, f13, this.f32795f, 1.0f);
        j(canvas, paint, (DrawingDelegate.PathPoint) pair.second, f13, this.f32795f, 1.0f);
    }

    public final void j(Canvas canvas, Paint paint, DrawingDelegate.PathPoint pathPoint, float f2, float f3, float f4) {
        float fMin = Math.min(f3, this.f32795f);
        float f5 = f2 / 2.0f;
        float fMin2 = Math.min(f5, (this.g * fMin) / this.f32795f);
        RectF rectF = new RectF((-f2) / 2.0f, (-fMin) / 2.0f, f5, fMin / 2.0f);
        canvas.save();
        float[] fArr = pathPoint.f32838a;
        canvas.translate(fArr[0], fArr[1]);
        canvas.rotate(DrawingDelegate.h(pathPoint.f32839b));
        canvas.scale(f4, f4);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    public final int k() {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f32828a;
        return (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).q * 2) + ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).p;
    }
}

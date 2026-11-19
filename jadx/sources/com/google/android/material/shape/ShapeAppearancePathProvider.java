package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ShapeAppearancePathProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShapePath[] f32977a = new ShapePath[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Matrix[] f32978b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix[] f32979c = new Matrix[4];
    public final PointF d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Path f32980e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Path f32981f = new Path();
    public final ShapePath g = new ShapePath();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f32982h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f32983i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f32984j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Path f32985k = new Path();
    public final boolean l = true;

    public static class Lazy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ShapeAppearancePathProvider f32986a = new ShapeAppearancePathProvider();
    }

    public interface PathListener {
        void a(ShapePath shapePath, Matrix matrix, int i2);

        void b(ShapePath shapePath, Matrix matrix, int i2);
    }

    public ShapeAppearancePathProvider() {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f32977a[i2] = new ShapePath();
            this.f32978b[i2] = new Matrix();
            this.f32979c[i2] = new Matrix();
        }
    }

    public static ShapeAppearancePathProvider b() {
        return Lazy.f32986a;
    }

    public final void a(ShapeAppearanceModel shapeAppearanceModel, float[] fArr, float f2, RectF rectF, PathListener pathListener, Path path) {
        Matrix[] matrixArr;
        float[] fArr2;
        int i2;
        ShapePath[] shapePathArr;
        Matrix[] matrixArr2;
        EdgeTreatment edgeTreatment;
        CornerSize clampedCornerSize;
        CornerTreatment cornerTreatment;
        path.rewind();
        Path path2 = this.f32980e;
        path2.rewind();
        Path path3 = this.f32981f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = this.f32979c;
            fArr2 = this.f32982h;
            shapePathArr = this.f32977a;
            matrixArr2 = this.f32978b;
            if (i3 >= 4) {
                break;
            }
            if (fArr != null) {
                clampedCornerSize = new ClampedCornerSize(fArr[i3]);
            } else if (i3 == 1) {
                clampedCornerSize = shapeAppearanceModel.g;
            } else if (i3 != 2) {
                clampedCornerSize = i3 != 3 ? shapeAppearanceModel.f32963f : shapeAppearanceModel.f32962e;
            } else {
                clampedCornerSize = shapeAppearanceModel.f32964h;
            }
            if (i3 == 1) {
                cornerTreatment = shapeAppearanceModel.f32961c;
            } else if (i3 != 2) {
                cornerTreatment = i3 != 3 ? shapeAppearanceModel.f32960b : shapeAppearanceModel.f32959a;
            } else {
                cornerTreatment = shapeAppearanceModel.d;
            }
            ShapePath shapePath = shapePathArr[i3];
            cornerTreatment.getClass();
            cornerTreatment.a(shapePath, f2, clampedCornerSize.a(rectF));
            int i4 = i3 + 1;
            float f3 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = this.d;
            if (i3 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i3 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i3 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i3].setTranslate(pointF.x, pointF.y);
            matrixArr2[i3].preRotate(f3);
            ShapePath shapePath2 = shapePathArr[i3];
            fArr2[0] = shapePath2.f32989c;
            fArr2[1] = shapePath2.d;
            matrixArr2[i3].mapPoints(fArr2);
            matrixArr[i3].reset();
            matrixArr[i3].setTranslate(fArr2[0], fArr2[1]);
            matrixArr[i3].preRotate(f3);
            i3 = i4;
        }
        char c2 = 1;
        int i5 = 0;
        for (i2 = 4; i5 < i2; i2 = 4) {
            ShapePath shapePath3 = shapePathArr[i5];
            fArr2[0] = shapePath3.f32987a;
            fArr2[c2] = shapePath3.f32988b;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 0) {
                path.moveTo(fArr2[0], fArr2[c2]);
            } else {
                path.lineTo(fArr2[0], fArr2[c2]);
            }
            shapePathArr[i5].c(matrixArr2[i5], path);
            if (pathListener != null) {
                pathListener.a(shapePathArr[i5], matrixArr2[i5], i5);
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            ShapePath shapePath4 = shapePathArr[i5];
            fArr2[0] = shapePath4.f32989c;
            fArr2[1] = shapePath4.d;
            matrixArr2[i5].mapPoints(fArr2);
            ShapePath shapePath5 = shapePathArr[i7];
            float f4 = shapePath5.f32987a;
            float[] fArr3 = this.f32983i;
            fArr3[0] = f4;
            fArr3[1] = shapePath5.f32988b;
            matrixArr2[i7].mapPoints(fArr3);
            Matrix[] matrixArr3 = matrixArr;
            double d = fArr2[0] - fArr3[0];
            float f5 = fArr2[1] - fArr3[1];
            ShapePath[] shapePathArr2 = shapePathArr;
            float fMax = Math.max(((float) Math.hypot(d, f5)) - 0.001f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            ShapePath shapePath6 = shapePathArr2[i5];
            fArr2[0] = shapePath6.f32989c;
            fArr2[1] = shapePath6.d;
            matrixArr2[i5].mapPoints(fArr2);
            float fAbs = (i5 == 1 || i5 == 3) ? Math.abs(rectF.centerX() - fArr2[0]) : Math.abs(rectF.centerY() - fArr2[1]);
            ShapePath shapePath7 = this.g;
            shapePath7.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 270.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            if (i5 == 1) {
                edgeTreatment = shapeAppearanceModel.f32967k;
            } else if (i5 != 2) {
                edgeTreatment = i5 != 3 ? shapeAppearanceModel.f32966j : shapeAppearanceModel.f32965i;
            } else {
                edgeTreatment = shapeAppearanceModel.l;
            }
            edgeTreatment.b(fMax, fAbs, f2, shapePath7);
            Path path4 = this.f32984j;
            path4.reset();
            shapePath7.c(matrixArr3[i5], path4);
            if (this.l && (edgeTreatment.a() || c(path4, i5) || c(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = shapePath7.f32987a;
                c2 = 1;
                fArr2[1] = shapePath7.f32988b;
                matrixArr3[i5].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                shapePath7.c(matrixArr3[i5], path2);
            } else {
                c2 = 1;
                shapePath7.c(matrixArr3[i5], path);
            }
            if (pathListener != null) {
                pathListener.b(shapePath7, matrixArr3[i5], i5);
            }
            i5 = i6;
            shapePathArr = shapePathArr2;
            matrixArr = matrixArr3;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean c(Path path, int i2) {
        Path path2 = this.f32985k;
        path2.reset();
        this.f32977a[i2].c(this.f32978b[i2], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}

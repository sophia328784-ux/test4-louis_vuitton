package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ShapePath {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f32987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f32988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f32989c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f32990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f32991f;
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f32992h = new ArrayList();

    /* JADX INFO: renamed from: com.google.android.material.shape.ShapePath$1, reason: invalid class name */
    class AnonymousClass1 extends ShadowCompatOperation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ArrayList f32993c;
        public final /* synthetic */ Matrix d;

        public AnonymousClass1(ArrayList arrayList, Matrix matrix) {
            this.f32993c = arrayList;
            this.d = matrix;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i2, Canvas canvas) {
            Iterator it = this.f32993c.iterator();
            while (it.hasNext()) {
                ((ShadowCompatOperation) it.next()).a(this.d, shadowRenderer, i2, canvas);
            }
        }
    }

    public static class ArcShadowOperation extends ShadowCompatOperation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PathArcOperation f32994c;

        public ArcShadowOperation(PathArcOperation pathArcOperation) {
            this.f32994c = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i2, Canvas canvas) {
            PathArcOperation pathArcOperation = this.f32994c;
            float f2 = pathArcOperation.f33001f;
            float f3 = pathArcOperation.g;
            RectF rectF = new RectF(pathArcOperation.f32998b, pathArcOperation.f32999c, pathArcOperation.d, pathArcOperation.f33000e);
            Paint paint = shadowRenderer.f32924b;
            boolean z = f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
            Path path = shadowRenderer.g;
            int[] iArr = ShadowRenderer.f32922k;
            if (z) {
                iArr[0] = 0;
                iArr[1] = shadowRenderer.f32927f;
                iArr[2] = shadowRenderer.f32926e;
                iArr[3] = shadowRenderer.d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f2, f3);
                path.close();
                float f4 = -i2;
                rectF.inset(f4, f4);
                iArr[0] = 0;
                iArr[1] = shadowRenderer.d;
                iArr[2] = shadowRenderer.f32926e;
                iArr[3] = shadowRenderer.f32927f;
            }
            float fWidth = rectF.width() / 2.0f;
            if (fWidth <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            float f5 = 1.0f - (i2 / fWidth);
            float[] fArr = ShadowRenderer.l;
            fArr[1] = f5;
            fArr[2] = ((1.0f - f5) / 2.0f) + f5;
            paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, shadowRenderer.f32928h);
            }
            canvas.drawArc(rectF, f2, f3, true, paint);
            canvas.restore();
        }
    }

    public static class LineShadowOperation extends ShadowCompatOperation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PathLineOperation f32995c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f32996e;

        public LineShadowOperation(PathLineOperation pathLineOperation, float f2, float f3) {
            this.f32995c = pathLineOperation;
            this.d = f2;
            this.f32996e = f3;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i2, Canvas canvas) {
            PathLineOperation pathLineOperation = this.f32995c;
            float f2 = pathLineOperation.f33003c;
            float f3 = this.f32996e;
            float f4 = pathLineOperation.f33002b;
            float f5 = this.d;
            RectF rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (float) Math.hypot(f2 - f3, f4 - f5), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Matrix matrix2 = this.f33006a;
            matrix2.set(matrix);
            matrix2.preTranslate(f5, f3);
            matrix2.preRotate(b());
            shadowRenderer.getClass();
            rectF.bottom += i2;
            rectF.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, -i2);
            int i3 = shadowRenderer.f32927f;
            int[] iArr = ShadowRenderer.f32920i;
            iArr[0] = i3;
            iArr[1] = shadowRenderer.f32926e;
            iArr[2] = shadowRenderer.d;
            Paint paint = shadowRenderer.f32925c;
            float f6 = rectF.left;
            paint.setShader(new LinearGradient(f6, rectF.top, f6, rectF.bottom, iArr, ShadowRenderer.f32921j, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, paint);
            canvas.restore();
        }

        public final float b() {
            PathLineOperation pathLineOperation = this.f32995c;
            return (float) Math.toDegrees(Math.atan((pathLineOperation.f33003c - this.f32996e) / (pathLineOperation.f33002b - this.d)));
        }
    }

    public static class PathArcOperation extends PathOperation {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final RectF f32997h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f32998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f32999c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f33000e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f33001f;
        public float g;

        public PathArcOperation(float f2, float f3, float f4, float f5) {
            this.f32998b = f2;
            this.f32999c = f3;
            this.d = f4;
            this.f33000e = f5;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f33004a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            float f2 = this.d;
            float f3 = this.f33000e;
            RectF rectF = f32997h;
            rectF.set(this.f32998b, this.f32999c, f2, f3);
            path.arcTo(rectF, this.f33001f, this.g, false);
            path.transform(matrix);
        }
    }

    public static class PathLineOperation extends PathOperation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f33002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f33003c;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f33004a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f33002b, this.f33003c);
            path.transform(matrix);
        }
    }

    public static abstract class PathOperation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Matrix f33004a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    public static abstract class ShadowCompatOperation {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Matrix f33005b = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Matrix f33006a = new Matrix();

        public abstract void a(Matrix matrix, ShadowRenderer shadowRenderer, int i2, Canvas canvas);
    }

    public ShapePath() {
        e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 270.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void a(float f2, float f3, float f4, float f5, float f6, float f7) {
        PathArcOperation pathArcOperation = new PathArcOperation(f2, f3, f4, f5);
        pathArcOperation.f33001f = f6;
        pathArcOperation.g = f7;
        this.g.add(pathArcOperation);
        ArcShadowOperation arcShadowOperation = new ArcShadowOperation(pathArcOperation);
        float f8 = f6 + f7;
        boolean z = f7 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (z) {
            f6 = (f6 + 180.0f) % 360.0f;
        }
        float f9 = z ? (180.0f + f8) % 360.0f : f8;
        b(f6);
        this.f32992h.add(arcShadowOperation);
        this.f32990e = f9;
        double d = f8;
        this.f32989c = (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((f2 + f4) * 0.5f);
        this.d = (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((f3 + f5) * 0.5f);
    }

    public final void b(float f2) {
        float f3 = this.f32990e;
        if (f3 == f2) {
            return;
        }
        float f4 = ((f2 - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.f32989c;
        float f6 = this.d;
        PathArcOperation pathArcOperation = new PathArcOperation(f5, f6, f5, f6);
        pathArcOperation.f33001f = this.f32990e;
        pathArcOperation.g = f4;
        this.f32992h.add(new ArcShadowOperation(pathArcOperation));
        this.f32990e = f2;
    }

    public final void c(Matrix matrix, Path path) {
        ArrayList arrayList = this.g;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((PathOperation) arrayList.get(i2)).a(matrix, path);
        }
    }

    public final void d(float f2, float f3) {
        PathLineOperation pathLineOperation = new PathLineOperation();
        pathLineOperation.f33002b = f2;
        pathLineOperation.f33003c = f3;
        this.g.add(pathLineOperation);
        LineShadowOperation lineShadowOperation = new LineShadowOperation(pathLineOperation, this.f32989c, this.d);
        float fB = lineShadowOperation.b() + 270.0f;
        float fB2 = lineShadowOperation.b() + 270.0f;
        b(fB);
        this.f32992h.add(lineShadowOperation);
        this.f32990e = fB2;
        this.f32989c = f2;
        this.d = f3;
    }

    public final void e(float f2, float f3, float f4, float f5) {
        this.f32987a = f2;
        this.f32988b = f3;
        this.f32989c = f2;
        this.d = f3;
        this.f32990e = f4;
        this.f32991f = (f4 + f5) % 360.0f;
        this.g.clear();
        this.f32992h.clear();
    }

    public ShapePath(float f2, float f3) {
        e(f2, f3, 270.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}

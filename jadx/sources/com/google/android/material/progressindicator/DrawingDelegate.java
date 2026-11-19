package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class DrawingDelegate<S extends BaseProgressIndicatorSpec> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f32828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f32829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f32830c;
    public final PathMeasure d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Matrix f32831e;

    public static class ActiveIndicator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f32832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f32833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f32834c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f32835e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f32836f;
        public float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f32837h;
    }

    public DrawingDelegate(S s) {
        Path path = new Path();
        this.f32829b = path;
        this.f32830c = new Path();
        this.d = new PathMeasure(path, false);
        this.f32828a = s;
        this.f32831e = new Matrix();
    }

    public static float h(float[] fArr) {
        return (float) Math.toDegrees(Math.atan2(fArr[1], fArr[0]));
    }

    public abstract void a(Canvas canvas, Rect rect, float f2, boolean z, boolean z2);

    public abstract void b(int i2, int i3, Canvas canvas, Paint paint);

    public abstract void c(Canvas canvas, Paint paint, ActiveIndicator activeIndicator, int i2);

    public abstract void d(Canvas canvas, Paint paint, float f2, float f3, int i2, int i3, int i4);

    public abstract int e();

    public abstract int f();

    public abstract void g();

    public class PathPoint {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float[] f32838a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float[] f32839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Matrix f32840c;

        public PathPoint(DrawingDelegate drawingDelegate, float[] fArr, float[] fArr2) {
            float[] fArr3 = new float[2];
            this.f32838a = fArr3;
            float[] fArr4 = new float[2];
            this.f32839b = fArr4;
            System.arraycopy(fArr, 0, fArr3, 0, 2);
            System.arraycopy(fArr2, 0, fArr4, 0, 2);
            this.f32840c = new Matrix();
        }

        public final void a(float f2) {
            float[] fArr = this.f32839b;
            float fAtan2 = (float) (Math.atan2(fArr[1], fArr[0]) + 1.5707963267948966d);
            float[] fArr2 = this.f32838a;
            double d = f2;
            double d2 = fAtan2;
            fArr2[0] = (float) ((Math.cos(d2) * d) + ((double) fArr2[0]));
            fArr2[1] = (float) ((Math.sin(d2) * d) + ((double) fArr2[1]));
        }

        public final void b(float f2) {
            float[] fArr = this.f32839b;
            float fAtan2 = (float) Math.atan2(fArr[1], fArr[0]);
            float[] fArr2 = this.f32838a;
            double d = f2;
            double d2 = fAtan2;
            fArr2[0] = (float) ((Math.cos(d2) * d) + ((double) fArr2[0]));
            fArr2[1] = (float) ((Math.sin(d2) * d) + ((double) fArr2[1]));
        }

        public final void c() {
            Arrays.fill(this.f32838a, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float[] fArr = this.f32839b;
            Arrays.fill(fArr, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            fArr[0] = 1.0f;
            this.f32840c.reset();
        }

        public final void d(float f2) {
            Matrix matrix = this.f32840c;
            matrix.reset();
            matrix.setRotate(f2);
            matrix.mapPoints(this.f32838a);
            matrix.mapPoints(this.f32839b);
        }

        public final void e(float f2) {
            float[] fArr = this.f32838a;
            fArr[0] = fArr[0] * 1.0f;
            fArr[1] = fArr[1] * f2;
            float[] fArr2 = this.f32839b;
            fArr2[0] = fArr2[0] * 1.0f;
            fArr2[1] = fArr2[1] * f2;
        }

        public final void f(float f2) {
            float[] fArr = this.f32838a;
            fArr[0] = fArr[0] + f2;
            fArr[1] = fArr[1] + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        public PathPoint(DrawingDelegate drawingDelegate, DrawingDelegate<S>.PathPoint pathPoint) {
            this(drawingDelegate, pathPoint.f32838a, pathPoint.f32839b);
        }

        public PathPoint(DrawingDelegate drawingDelegate) {
            this.f32838a = new float[2];
            this.f32839b = new float[]{1.0f, 0.0f};
            this.f32840c = new Matrix();
        }
    }
}

package androidx.camera.view;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.core.util.Preconditions;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class PreviewTransformation {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final PreviewView.ScaleType f3137i = PreviewView.ScaleType.FILL_CENTER;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Size f3138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f3139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3140c;
    public Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3142f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PreviewView.ScaleType f3143h;

    /* JADX INFO: renamed from: androidx.camera.view.PreviewTransformation$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3144a;

        static {
            int[] iArr = new int[PreviewView.ScaleType.values().length];
            f3144a = iArr;
            try {
                iArr[PreviewView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3144a[PreviewView.ScaleType.FILL_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3144a[PreviewView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3144a[PreviewView.ScaleType.FILL_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3144a[PreviewView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3144a[PreviewView.ScaleType.FILL_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public final void a(Size size, int i2, Rect rect) {
        Matrix matrix;
        if (f()) {
            Matrix matrix2 = new Matrix();
            if (f()) {
                Matrix matrix3 = new Matrix(this.d);
                matrix3.postConcat(c(size, i2));
                matrix = matrix3;
            } else {
                matrix = null;
            }
            matrix.invert(matrix2);
            Matrix matrix4 = new Matrix();
            matrix4.setRectToRect(new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, rect.width(), rect.height()), new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f), Matrix.ScaleToFit.FILL);
            matrix2.postConcat(matrix4);
        }
    }

    public final Size b() {
        return TransformUtils.d(this.f3140c) ? new Size(this.f3139b.height(), this.f3139b.width()) : new Size(this.f3139b.width(), this.f3139b.height());
    }

    public final Matrix c(Size size, int i2) {
        Matrix.ScaleToFit scaleToFit;
        RectF rectF;
        Preconditions.f(null, f());
        if (TransformUtils.e(size, true, b())) {
            rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size.getWidth(), size.getHeight());
        } else {
            RectF rectF2 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size.getWidth(), size.getHeight());
            Size sizeB = b();
            RectF rectF3 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, sizeB.getWidth(), sizeB.getHeight());
            Matrix matrix = new Matrix();
            PreviewView.ScaleType scaleType = this.f3143h;
            switch (AnonymousClass1.f3144a[scaleType.ordinal()]) {
                case 1:
                case 2:
                    scaleToFit = Matrix.ScaleToFit.CENTER;
                    break;
                case 3:
                case 4:
                    scaleToFit = Matrix.ScaleToFit.END;
                    break;
                case 5:
                case 6:
                    scaleToFit = Matrix.ScaleToFit.START;
                    break;
                default:
                    scaleType.toString();
                    Logger.a("PreviewTransform");
                    scaleToFit = Matrix.ScaleToFit.FILL;
                    break;
            }
            if (scaleType == PreviewView.ScaleType.FIT_CENTER || scaleType == PreviewView.ScaleType.FIT_START || scaleType == PreviewView.ScaleType.FIT_END) {
                matrix.setRectToRect(rectF3, rectF2, scaleToFit);
            } else {
                matrix.setRectToRect(rectF2, rectF3, scaleToFit);
                matrix.invert(matrix);
            }
            matrix.mapRect(rectF3);
            if (i2 == 1) {
                float width = size.getWidth() / 2.0f;
                float f2 = width + width;
                rectF = new RectF(f2 - rectF3.right, rectF3.top, f2 - rectF3.left, rectF3.bottom);
            } else {
                rectF = rectF3;
            }
        }
        Matrix matrixA = TransformUtils.a(new RectF(this.f3139b), rectF, this.f3140c, false);
        if (this.f3142f && this.g) {
            boolean zD = TransformUtils.d(this.f3140c);
            Rect rect = this.f3139b;
            if (zD) {
                matrixA.preScale(1.0f, -1.0f, rect.centerX(), this.f3139b.centerY());
                return matrixA;
            }
            matrixA.preScale(-1.0f, 1.0f, rect.centerX(), this.f3139b.centerY());
        }
        return matrixA;
    }

    public final Matrix d() {
        Preconditions.f(null, f());
        RectF rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f3138a.getWidth(), this.f3138a.getHeight());
        return TransformUtils.a(rectF, rectF, !this.g ? this.f3140c : -CameraOrientationUtil.b(this.f3141e), false);
    }

    public final RectF e(Size size, int i2) {
        Preconditions.f(null, f());
        Matrix matrixC = c(size, i2);
        RectF rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f3138a.getWidth(), this.f3138a.getHeight());
        matrixC.mapRect(rectF);
        return rectF;
    }

    public final boolean f() {
        return (this.f3139b == null || this.f3138a == null || !(!this.g || this.f3141e != -1)) ? false : true;
    }
}

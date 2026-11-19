package androidx.camera.core.impl.utils;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.pq0;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class TransformUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RectF f2431a = new RectF(-1.0f, -1.0f, 1.0f, 1.0f);

    public static Matrix a(RectF rectF, RectF rectF2, int i2, boolean z) {
        Matrix matrix = new Matrix();
        Matrix.ScaleToFit scaleToFit = Matrix.ScaleToFit.FILL;
        RectF rectF3 = f2431a;
        matrix.setRectToRect(rectF, rectF3, scaleToFit);
        matrix.postRotate(i2);
        if (z) {
            matrix.postScale(-1.0f, 1.0f);
        }
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(rectF3, rectF2, scaleToFit);
        matrix.postConcat(matrix2);
        return matrix;
    }

    public static int b(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return k((int) Math.round(Math.atan2(fArr[3], fArr[0]) * 57.29577951308232d));
    }

    public static boolean c(Rect rect, Size size) {
        return (rect.left == 0 && rect.top == 0 && rect.width() == size.getWidth() && rect.height() == size.getHeight()) ? false : true;
    }

    public static boolean d(int i2) {
        if (i2 == 90 || i2 == 270) {
            return true;
        }
        if (i2 == 0 || i2 == 180) {
            return false;
        }
        md.n(pq0.k(i2, "Invalid rotation degrees: "));
        return false;
    }

    public static boolean e(Size size, boolean z, Size size2) {
        float width;
        float width2;
        if (z) {
            width = size.getWidth() / size.getHeight();
            width2 = width;
        } else {
            width = (size.getWidth() + 1.0f) / (size.getHeight() - 1.0f);
            width2 = (size.getWidth() - 1.0f) / (size.getHeight() + 1.0f);
        }
        return width >= (((float) size2.getWidth()) - 1.0f) / (((float) size2.getHeight()) + 1.0f) && (((float) size2.getWidth()) + 1.0f) / (((float) size2.getHeight()) - 1.0f) >= width2;
    }

    public static boolean f(Matrix matrix) {
        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        matrix.mapVectors(fArr);
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float f5 = fArr[3];
        float f6 = (f3 * f5) + (f2 * f4);
        float f7 = (f2 * f5) - (f3 * f4);
        double dSqrt = Math.sqrt((f3 * f3) + (f2 * f2)) * Math.sqrt((f5 * f5) + (f4 * f4));
        return ((float) Math.toDegrees(Math.atan2(((double) f7) / dSqrt, ((double) f6) / dSqrt))) > Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static Size g(Rect rect) {
        return new Size(rect.width(), rect.height());
    }

    public static String h(Rect rect) {
        Locale locale = Locale.US;
        return rect + "(" + rect.width() + "x" + rect.height() + ")";
    }

    public static Size i(Size size, int i2) {
        Preconditions.b(i2 % 90 == 0, "Invalid rotation degrees: " + i2);
        return d(k(i2)) ? new Size(size.getHeight(), size.getWidth()) : size;
    }

    public static RectF j(Size size) {
        return new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size.getWidth(), size.getHeight());
    }

    public static int k(int i2) {
        return ((i2 % 360) + 360) % 360;
    }
}

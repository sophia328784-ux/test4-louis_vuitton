package com.airbnb.lottie.utils;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import java.io.Closeable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Matrix f22311a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f22312b = new AnonymousClass1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadLocal f22313c = new AnonymousClass2();
    public static final ThreadLocal d = new AnonymousClass3();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f22314e = new AnonymousClass4();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float f22315f = (float) (Math.sqrt(2.0d) / 2.0d);

    /* JADX INFO: renamed from: com.airbnb.lottie.utils.Utils$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<PathMeasure> {
        @Override // java.lang.ThreadLocal
        public final PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.utils.Utils$2, reason: invalid class name */
    public class AnonymousClass2 extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        public final Path initialValue() {
            return new Path();
        }
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.utils.Utils$3, reason: invalid class name */
    public class AnonymousClass3 extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        public final Path initialValue() {
            return new Path();
        }
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.utils.Utils$4, reason: invalid class name */
    public class AnonymousClass4 extends ThreadLocal<float[]> {
        @Override // java.lang.ThreadLocal
        public final float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f2, float f3, float f4) {
        AsyncUpdates asyncUpdates = L.f21740a;
        PathMeasure pathMeasure = (PathMeasure) f22312b.get();
        Path path2 = (Path) f22313c.get();
        Path path3 = (Path) d.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (!(f2 == 1.0f && f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) && length >= 1.0f && Math.abs((f3 - f2) - 1.0f) >= 0.01d) {
            float f5 = f2 * length;
            float f6 = f3 * length;
            float f7 = f4 * length;
            float fMin = Math.min(f5, f6) + f7;
            float fMax = Math.max(f5, f6) + f7;
            if (fMin >= length && fMax >= length) {
                fMin = MiscUtils.d(fMin, length);
                fMax = MiscUtils.d(fMax, length);
            }
            if (fMin < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fMin = MiscUtils.d(fMin, length);
            }
            if (fMax < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fMax = MiscUtils.d(fMax, length);
            }
            if (fMin == fMax) {
                path.reset();
                return;
            }
            if (fMin >= fMax) {
                fMin -= length;
            }
            path2.reset();
            pathMeasure.getSegment(fMin, fMax, path2, true);
            if (fMax > length) {
                path3.reset();
                pathMeasure.getSegment(Call.Parameters.DEFAULT_CAMERA_ZOOM, fMax % length, path3, true);
                path2.addPath(path3);
            } else if (fMin < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                path3.reset();
                pathMeasure.getSegment(fMin + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
        }
    }

    public static void b(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static float c() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static Bitmap d(Bitmap bitmap, int i2, int i3) {
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i3) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static void e(Canvas canvas, RectF rectF, Paint paint) {
        AsyncUpdates asyncUpdates = L.f21740a;
        canvas.saveLayer(rectF, paint);
    }
}

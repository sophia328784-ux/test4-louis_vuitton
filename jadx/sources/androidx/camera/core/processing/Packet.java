package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class Packet<T> {
    public static Packet i(Bitmap bitmap, Exif exif, Rect rect, int i2, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        return new AutoValue_Packet(bitmap, exif, 42, new Size(bitmap.getWidth(), bitmap.getHeight()), rect, i2, matrix, cameraCaptureResult);
    }

    public static Packet j(ImageProxy imageProxy, Exif exif, Size size, Rect rect, int i2, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        if (ImageUtil.c(imageProxy.getFormat())) {
            Preconditions.e(exif, "JPEG image must have Exif.");
        }
        return new AutoValue_Packet(imageProxy, exif, imageProxy.getFormat(), size, rect, i2, matrix, cameraCaptureResult);
    }

    public static Packet k(byte[] bArr, Exif exif, int i2, Size size, Rect rect, int i3, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        return new AutoValue_Packet(bArr, exif, i2, size, rect, i3, matrix, cameraCaptureResult);
    }

    public abstract CameraCaptureResult a();

    public abstract Rect b();

    public abstract Object c();

    public abstract Exif d();

    public abstract int e();

    public abstract int f();

    public abstract Matrix g();

    public abstract Size h();
}

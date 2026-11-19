package com.sightcall.pratik.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.Size;
import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b\u001a\u0016\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0001\u001a\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001\u001a\n\u0010\u0012\u001a\u00020\u000f*\u00020\u000f\u001a\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u000f*\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f\u001a\n\u0010\u0015\u001a\u00020\u0016*\u00020\u0016\u001a\n\u0010\u0017\u001a\u00020\u0016*\u00020\u0016\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"thumbnailMaxSize", "", "compressQuality", "getSizeFromOrientation", "Landroid/util/Size;", "width", "height", "orientation", "calculateScaledSize", "size", "scaleFactor", "", "calculateScaleFactor", "maxSize", "resizeBitmap", "Landroid/graphics/Bitmap;", "originalBitmap", "quality", "resizeThumbnail", "merge", "bmp2", "createPreviewMedia64", "", "removeFileUriPrefix", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class BitmapUtilsKt {
    private static final int compressQuality = 75;
    private static final int thumbnailMaxSize = 1000;

    public static final float calculateScaleFactor(Size size, int i2) {
        size.getClass();
        return Math.min(i2 / Math.max(size.getWidth(), size.getHeight()), 1.0f);
    }

    public static final Size calculateScaledSize(Size size, float f2) {
        size.getClass();
        return new Size((int) (size.getWidth() * f2), (int) (size.getHeight() * f2));
    }

    public static final String createPreviewMedia64(String str) {
        str.getClass();
        return "data:image/jpeg;base64," + str;
    }

    public static final Size getSizeFromOrientation(int i2, int i3, int i4) {
        return (i4 == 6 || i4 == 8 || i4 == 90 || i4 == 270) ? new Size(i3, i2) : new Size(i2, i3);
    }

    public static final Bitmap merge(Bitmap bitmap, Bitmap bitmap2) {
        bitmap.getClass();
        bitmap2.getClass();
        Bitmap.Config config = bitmap.getConfig();
        Bitmap bitmapCreateBitmap = config != null ? Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), config) : null;
        Canvas canvas = bitmapCreateBitmap != null ? new Canvas(bitmapCreateBitmap) : null;
        if (canvas != null) {
            canvas.drawBitmap(bitmap, new Matrix(), null);
        }
        if (canvas != null) {
            canvas.drawBitmap(bitmap2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Paint) null);
        }
        return bitmapCreateBitmap;
    }

    public static final String removeFileUriPrefix(String str) {
        str.getClass();
        return StringsKt.P(str, "file://", false) ? str.substring(7) : str;
    }

    public static final Bitmap resizeBitmap(Bitmap bitmap, int i2) {
        bitmap.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
        bitmap.recycle();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
        bitmapDecodeByteArray.getClass();
        return bitmapDecodeByteArray;
    }

    public static final Bitmap resizeThumbnail(Bitmap bitmap) {
        bitmap.getClass();
        Size size = new Size(bitmap.getWidth(), bitmap.getHeight());
        float fCalculateScaleFactor = calculateScaleFactor(size, 1000);
        if (fCalculateScaleFactor != 1.0f) {
            Size sizeCalculateScaledSize = calculateScaledSize(size, fCalculateScaleFactor);
            bitmap = Bitmap.createScaledBitmap(bitmap, sizeCalculateScaledSize.getWidth(), sizeCalculateScaledSize.getHeight(), true);
        }
        return resizeBitmap(bitmap, 75);
    }
}

package androidx.camera.core;

import android.graphics.Bitmap;
import android.util.Log;
import android.view.Surface;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageProcessingUtil;
import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.mt;
import java.nio.ByteBuffer;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageProcessingUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1934a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Result {
        private static final /* synthetic */ Result[] $VALUES;
        public static final Result ERROR_CONVERSION;
        public static final Result SUCCESS;
        public static final Result UNKNOWN;

        static {
            Result result = new Result("UNKNOWN", 0);
            UNKNOWN = result;
            Result result2 = new Result("SUCCESS", 1);
            SUCCESS = result2;
            Result result3 = new Result("ERROR_CONVERSION", 2);
            ERROR_CONVERSION = result3;
            $VALUES = new Result[]{result, result2, result3};
        }

        public static Result valueOf(String str) {
            return (Result) Enum.valueOf(Result.class, str);
        }

        public static Result[] values() {
            return (Result[]) $VALUES.clone();
        }
    }

    static {
        System.loadLibrary("image_processing_util_jni");
    }

    public static ImageProxy a(SafeCloseImageReaderProxy safeCloseImageReaderProxy, byte[] bArr) {
        Preconditions.a(safeCloseImageReaderProxy.b() == 256);
        bArr.getClass();
        Surface surface = safeCloseImageReaderProxy.getSurface();
        surface.getClass();
        if (nativeWriteJpegToSurface(bArr, surface) != 0) {
            Logger.a("ImageProcessingUtil");
            return null;
        }
        ImageProxy imageProxyA = safeCloseImageReaderProxy.a();
        if (imageProxyA == null) {
            Logger.a("ImageProcessingUtil");
        }
        return imageProxyA;
    }

    public static Bitmap b(ImageProxy imageProxy) {
        if (imageProxy.getFormat() != 35) {
            md.n("Input image format must be YUV_420_888");
            return null;
        }
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        int iM = imageProxy.L0()[0].M();
        int iM2 = imageProxy.L0()[1].M();
        int iM3 = imageProxy.L0()[2].M();
        int iN = imageProxy.L0()[0].N();
        int iN2 = imageProxy.L0()[1].N();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(imageProxy.getWidth(), imageProxy.getHeight(), Bitmap.Config.ARGB_8888);
        if (nativeConvertAndroid420ToBitmap(imageProxy.L0()[0].L(), iM, imageProxy.L0()[1].L(), iM2, imageProxy.L0()[2].L(), iM3, iN, iN2, bitmapCreateBitmap, bitmapCreateBitmap.getRowBytes(), width, height) == 0) {
            return bitmapCreateBitmap;
        }
        mt.i("YUV to RGB conversion failed");
        return null;
    }

    public static ImageProxy c(final ImageProxy imageProxy, SafeCloseImageReaderProxy safeCloseImageReaderProxy, ByteBuffer byteBuffer, int i2) {
        String str;
        if (imageProxy.getFormat() != 35 || imageProxy.L0().length != 3) {
            Logger.a("ImageProcessingUtil");
            return null;
        }
        System.currentTimeMillis();
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            Logger.a("ImageProcessingUtil");
            return null;
        }
        if ((nativeConvertAndroid420ToABGR(imageProxy.L0()[0].L(), imageProxy.L0()[0].M(), imageProxy.L0()[1].L(), imageProxy.L0()[1].M(), imageProxy.L0()[2].L(), imageProxy.L0()[2].M(), imageProxy.L0()[0].N(), imageProxy.L0()[1].N(), safeCloseImageReaderProxy.getSurface(), byteBuffer, imageProxy.getWidth(), imageProxy.getHeight(), 0, 0, 0, i2) != 0 ? Result.ERROR_CONVERSION : Result.SUCCESS) == Result.ERROR_CONVERSION) {
            Logger.a("ImageProcessingUtil");
            return null;
        }
        if (Log.isLoggable("MH", 3)) {
            Locale locale = Locale.US;
            System.currentTimeMillis();
            str = "ImageProcessingUtil";
            Logger.c(3, str);
            f1934a++;
        } else {
            str = "ImageProcessingUtil";
        }
        final ImageProxy imageProxyA = safeCloseImageReaderProxy.a();
        if (imageProxyA == null) {
            Logger.a(str);
            return null;
        }
        SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxyA);
        singleCloseImageProxy.c(new ForwardingImageProxy.OnImageCloseListener() { // from class: n20
            @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
            public final void f(ForwardingImageProxy forwardingImageProxy) throws Exception {
                int i3 = ImageProcessingUtil.f1934a;
                imageProxy.close();
            }
        });
        return singleCloseImageProxy;
    }

    public static void d(Bitmap bitmap, ByteBuffer byteBuffer, int i2) {
        nativeCopyBetweenByteBufferAndBitmap(bitmap, byteBuffer, bitmap.getRowBytes(), i2, bitmap.getWidth(), bitmap.getHeight(), false);
    }

    public static void e(Bitmap bitmap, ByteBuffer byteBuffer, int i2) {
        nativeCopyBetweenByteBufferAndBitmap(bitmap, byteBuffer, i2, bitmap.getRowBytes(), bitmap.getWidth(), bitmap.getHeight(), true);
    }

    public static void f(byte[] bArr, Surface surface) {
        surface.getClass();
        if (nativeWriteJpegToSurface(bArr, surface) != 0) {
            Logger.a("ImageProcessingUtil");
        }
    }

    private static native int nativeConvertAndroid420ToABGR(ByteBuffer byteBuffer, int i2, ByteBuffer byteBuffer2, int i3, ByteBuffer byteBuffer3, int i4, int i5, int i6, Surface surface, ByteBuffer byteBuffer4, int i7, int i8, int i9, int i10, int i11, int i12);

    private static native int nativeConvertAndroid420ToBitmap(ByteBuffer byteBuffer, int i2, ByteBuffer byteBuffer2, int i3, ByteBuffer byteBuffer3, int i4, int i5, int i6, Bitmap bitmap, int i7, int i8, int i9);

    private static native int nativeCopyBetweenByteBufferAndBitmap(Bitmap bitmap, ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, boolean z);

    private static native int nativeWriteJpegToSurface(byte[] bArr, Surface surface);
}

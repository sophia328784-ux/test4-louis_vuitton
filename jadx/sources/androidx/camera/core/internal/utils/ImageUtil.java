package androidx.camera.core.internal.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.util.Rational;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.utils.ExifData;
import androidx.camera.core.impl.utils.ExifOutputStream;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageUtil {

    public static final class CodecFailedException extends Exception {
    }

    public static Bitmap a(ImageProxy imageProxy) {
        int format = imageProxy.getFormat();
        if (format == 1) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(imageProxy.getWidth(), imageProxy.getHeight(), Bitmap.Config.ARGB_8888);
            imageProxy.L0()[0].L().rewind();
            ImageProcessingUtil.e(bitmapCreateBitmap, imageProxy.L0()[0].L(), imageProxy.L0()[0].M());
            return bitmapCreateBitmap;
        }
        if (format == 35) {
            return ImageProcessingUtil.b(imageProxy);
        }
        if (format != 256 && format != 4101) {
            b21.r("Incorrect image format of the input image proxy: ", imageProxy.getFormat(), ", only ImageFormat.YUV_420_888 and PixelFormat.RGBA_8888 are supported");
            return null;
        }
        if (!c(imageProxy.getFormat())) {
            md.g(imageProxy.getFormat(), "Incorrect image format of the input image proxy: ");
            return null;
        }
        ByteBuffer byteBufferL = imageProxy.L0()[0].L();
        int iCapacity = byteBufferL.capacity();
        byte[] bArr = new byte[iCapacity];
        byteBufferL.rewind();
        byteBufferL.get(bArr);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, iCapacity, null);
        if (bitmapDecodeByteArray != null) {
            return bitmapDecodeByteArray;
        }
        mt.i("Decode jpeg byte array failed");
        return null;
    }

    public static Rational b(Rational rational, int i2) {
        if (i2 == 90 || i2 == 270) {
            return rational == null ? rational : new Rational(rational.getDenominator(), rational.getNumerator());
        }
        return new Rational(rational.getNumerator(), rational.getDenominator());
    }

    public static boolean c(int i2) {
        return i2 == 256 || i2 == 4101;
    }

    public static byte[] d(ImageProxy imageProxy, Rect rect, int i2, int i3) throws CodecFailedException {
        if (imageProxy.getFormat() != 35) {
            md.g(imageProxy.getFormat(), "Incorrect image format of the input image proxy: ");
            return null;
        }
        ImageProxy.PlaneProxy planeProxy = imageProxy.L0()[0];
        ImageProxy.PlaneProxy planeProxy2 = imageProxy.L0()[1];
        ImageProxy.PlaneProxy planeProxy3 = imageProxy.L0()[2];
        ByteBuffer byteBufferL = planeProxy.L();
        ByteBuffer byteBufferL2 = planeProxy2.L();
        ByteBuffer byteBufferL3 = planeProxy3.L();
        byteBufferL.rewind();
        byteBufferL2.rewind();
        byteBufferL3.rewind();
        int iRemaining = byteBufferL.remaining();
        byte[] bArr = new byte[((imageProxy.getHeight() * imageProxy.getWidth()) / 2) + iRemaining];
        int width = 0;
        for (int i4 = 0; i4 < imageProxy.getHeight(); i4++) {
            byteBufferL.get(bArr, width, imageProxy.getWidth());
            width += imageProxy.getWidth();
            byteBufferL.position(Math.min(iRemaining, planeProxy.M() + (byteBufferL.position() - imageProxy.getWidth())));
        }
        int height = imageProxy.getHeight() / 2;
        int width2 = imageProxy.getWidth() / 2;
        int iM = planeProxy3.M();
        int iM2 = planeProxy2.M();
        int iN = planeProxy3.N();
        int iN2 = planeProxy2.N();
        byte[] bArr2 = new byte[iM];
        byte[] bArr3 = new byte[iM2];
        for (int i5 = 0; i5 < height; i5++) {
            byteBufferL3.get(bArr2, 0, Math.min(iM, byteBufferL3.remaining()));
            byteBufferL2.get(bArr3, 0, Math.min(iM2, byteBufferL2.remaining()));
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < width2; i8++) {
                int i9 = width + 1;
                bArr[width] = bArr2[i6];
                width += 2;
                bArr[i9] = bArr3[i7];
                i6 += iN;
                i7 += iN2;
            }
        }
        YuvImage yuvImage = new YuvImage(bArr, 17, imageProxy.getWidth(), imageProxy.getHeight(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (yuvImage.compressToJpeg(rect == null ? new Rect(0, 0, imageProxy.getWidth(), imageProxy.getHeight()) : rect, i2, new ExifOutputStream(byteArrayOutputStream, ExifData.a(imageProxy, i3)))) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new CodecFailedException("YuvImage failed to encode jpeg.");
    }
}

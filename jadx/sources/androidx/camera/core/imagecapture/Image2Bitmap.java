package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class Image2Bitmap implements Operation<Packet<ImageProxy>, Bitmap> {
    public final Object a(Object obj) throws Throwable {
        Throwable th;
        Bitmap bitmapCreateBitmap;
        Packet packet = (Packet) obj;
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = null;
        try {
            try {
                int iE = packet.e();
                if (iE == 35) {
                    ImageProxy imageProxy = (ImageProxy) packet.c();
                    boolean z = packet.f() % Sink.ORIENTATION_180 != 0;
                    SafeCloseImageReaderProxy safeCloseImageReaderProxy2 = new SafeCloseImageReaderProxy(ImageReaderProxys.a(z ? imageProxy.getHeight() : imageProxy.getWidth(), z ? imageProxy.getWidth() : imageProxy.getHeight(), 1, 2));
                    try {
                        ImageProxy imageProxyC = ImageProcessingUtil.c(imageProxy, safeCloseImageReaderProxy2, ByteBuffer.allocateDirect(imageProxy.getWidth() * imageProxy.getHeight() * 4), packet.f());
                        imageProxy.close();
                        if (imageProxyC == null) {
                            throw new ImageCaptureException(0, "Can't covert YUV to RGB", null);
                        }
                        bitmapCreateBitmap = ImageUtil.a(imageProxyC);
                        imageProxyC.close();
                        safeCloseImageReaderProxy = safeCloseImageReaderProxy2;
                    } catch (UnsupportedOperationException e2) {
                        e = e2;
                        throw new ImageCaptureException(0, "Can't convert " + (packet.e() == 35 ? "YUV" : "JPEG") + " to bitmap", e);
                    } catch (Throwable th2) {
                        th = th2;
                        safeCloseImageReaderProxy = safeCloseImageReaderProxy2;
                        if (safeCloseImageReaderProxy == null) {
                            throw th;
                        }
                        safeCloseImageReaderProxy.close();
                        throw th;
                    }
                } else {
                    if (iE != 256 && iE != 4101) {
                        throw new IllegalArgumentException("Invalid postview image format : " + packet.e());
                    }
                    ImageProxy imageProxy2 = (ImageProxy) packet.c();
                    Bitmap bitmapA = ImageUtil.a(imageProxy2);
                    imageProxy2.close();
                    int iF = packet.f();
                    Matrix matrix = new Matrix();
                    matrix.postRotate(iF);
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapA, 0, 0, bitmapA.getWidth(), bitmapA.getHeight(), matrix, true);
                }
                if (safeCloseImageReaderProxy != null) {
                    safeCloseImageReaderProxy.close();
                }
                return bitmapCreateBitmap;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (UnsupportedOperationException e3) {
            e = e3;
        }
    }
}

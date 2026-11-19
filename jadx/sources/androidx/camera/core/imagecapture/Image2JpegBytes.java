package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.compat.workaround.JpegMetadataCorrector;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class Image2JpegBytes implements Operation<In, Packet<byte[]>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JpegMetadataCorrector f2088a;

    public static abstract class In {
    }

    public Image2JpegBytes(Quirks quirks) {
        this.f2088a = new JpegMetadataCorrector(quirks);
    }

    public static Packet c(AutoValue_Image2JpegBytes_In autoValue_Image2JpegBytes_In) throws ImageCaptureException {
        Packet packet = autoValue_Image2JpegBytes_In.f2053a;
        ImageProxy imageProxy = (ImageProxy) packet.c();
        Rect rectB = packet.b();
        try {
            byte[] bArrD = ImageUtil.d(imageProxy, rectB, autoValue_Image2JpegBytes_In.f2054b, packet.f());
            try {
                Exif exif = new Exif(new ExifInterface(new ByteArrayInputStream(bArrD)));
                Size size = new Size(rectB.width(), rectB.height());
                Rect rect = new Rect(0, 0, rectB.width(), rectB.height());
                int iF = packet.f();
                Matrix matrixG = packet.g();
                RectF rectF = TransformUtils.f2431a;
                Matrix matrix = new Matrix(matrixG);
                matrix.postTranslate(-rectB.left, -rectB.top);
                return Packet.k(bArrD, exif, 256, size, rect, iF, matrix, packet.a());
            } catch (IOException e2) {
                throw new ImageCaptureException(0, "Failed to extract Exif from YUV-generated JPEG", e2);
            }
        } catch (ImageUtil.CodecFailedException e3) {
            throw new ImageCaptureException(1, "Failed to encode the image to JPEG.", e3);
        }
    }

    public final Object a(Object obj) throws Exception {
        Packet packetC;
        In in = (In) obj;
        try {
            int iE = ((AutoValue_Image2JpegBytes_In) in).f2053a.e();
            if (iE != 35) {
                if (iE != 256 && iE != 4101) {
                    throw new IllegalArgumentException("Unexpected format: " + iE);
                }
                packetC = b((AutoValue_Image2JpegBytes_In) in, iE);
            } else {
                packetC = c((AutoValue_Image2JpegBytes_In) in);
            }
            ((ImageProxy) ((AutoValue_Image2JpegBytes_In) in).f2053a.c()).close();
            return packetC;
        } catch (Throwable th) {
            ((ImageProxy) ((AutoValue_Image2JpegBytes_In) in).f2053a.c()).close();
            throw th;
        }
    }

    public final Packet b(AutoValue_Image2JpegBytes_In autoValue_Image2JpegBytes_In, int i2) {
        byte[] bArr;
        byte[] bArrCopyOfRange;
        byte b2;
        Packet packet = autoValue_Image2JpegBytes_In.f2053a;
        ImageProxy imageProxy = (ImageProxy) packet.c();
        int i3 = 0;
        if (this.f2088a.f2508a == null) {
            ByteBuffer byteBufferL = imageProxy.L0()[0].L();
            bArrCopyOfRange = new byte[byteBufferL.capacity()];
            byteBufferL.rewind();
            byteBufferL.get(bArrCopyOfRange);
        } else {
            ByteBuffer byteBufferL2 = imageProxy.L0()[0].L();
            int iCapacity = byteBufferL2.capacity();
            byte[] bArr2 = new byte[iCapacity];
            byteBufferL2.rewind();
            byteBufferL2.get(bArr2);
            int i4 = 2;
            int i5 = 2;
            while (true) {
                if (i5 + 4 <= iCapacity && (b2 = bArr2[i5]) == -1) {
                    if (b2 == -1 && bArr2[i5 + 1] == -38) {
                        break;
                    }
                    i5 += (((bArr2[i5 + 2] & 255) << 8) | (bArr2[i5 + 3] & 255)) + 2;
                } else {
                    while (true) {
                        int i6 = i4 + 1;
                        if (i6 <= iCapacity) {
                            if (bArr2[i4] == -1 && bArr2[i6] == -40) {
                                i3 = i4;
                                break;
                            }
                            i2 = i2;
                            i4 = i6;
                        } else {
                            i3 = -1;
                            break;
                        }
                    }
                    if (i3 != -1) {
                        break;
                    }
                    bArr = bArr2;
                    Exif exifD = packet.d();
                    Objects.requireNonNull(exifD);
                    return Packet.k(bArr, exifD, i2, packet.h(), packet.b(), packet.f(), packet.g(), packet.a());
                }
            }
            bArrCopyOfRange = Arrays.copyOfRange(bArr2, i3, byteBufferL2.limit());
        }
        bArr = bArrCopyOfRange;
        Exif exifD2 = packet.d();
        Objects.requireNonNull(exifD2);
        return Packet.k(bArr, exifD2, i2, packet.h(), packet.b(), packet.f(), packet.g(), packet.a());
    }
}

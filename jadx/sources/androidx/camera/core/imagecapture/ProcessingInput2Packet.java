package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.ImageCaptureRotationOptionQuirk;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import androidx.core.util.Preconditions;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ProcessingInput2Packet implements Operation<ProcessingNode.InputPacket, Packet<ImageProxy>> {
    public final Object a(Object obj) throws ImageCaptureException {
        Exif exif;
        ProcessingNode.InputPacket inputPacket = (ProcessingNode.InputPacket) obj;
        ImageProxy imageProxy = ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2063b;
        ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a;
        if (ImageUtil.c(imageProxy.getFormat())) {
            try {
                ThreadLocal threadLocal = Exif.f2390b;
                ByteBuffer byteBufferL = imageProxy.L0()[0].L();
                byteBufferL.rewind();
                byte[] bArr = new byte[byteBufferL.capacity()];
                byteBufferL.get(bArr);
                exif = new Exif(new ExifInterface(new ByteArrayInputStream(bArr)));
                imageProxy.L0()[0].L().rewind();
            } catch (IOException e2) {
                throw new ImageCaptureException(1, "Failed to extract EXIF data.", e2);
            }
        } else {
            exif = null;
        }
        ImagePipeline.g.getClass();
        if (((ImageCaptureRotationOptionQuirk) DeviceQuirks.f2499a.b(ImageCaptureRotationOptionQuirk.class)) != null) {
            Config.Option option = CaptureConfig.f2265i;
        } else if (ImageUtil.c(imageProxy.getFormat())) {
            Preconditions.e(exif, "JPEG image must have exif.");
            Size size = new Size(imageProxy.getWidth(), imageProxy.getHeight());
            int iB = processingRequest.f2109f - exif.b();
            Size size2 = TransformUtils.d(TransformUtils.k(iB)) ? new Size(size.getHeight(), size.getWidth()) : size;
            Matrix matrixA = TransformUtils.a(new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size.getWidth(), size.getHeight()), new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size2.getWidth(), size2.getHeight()), iB, false);
            RectF rectF = new RectF(processingRequest.f2108e);
            matrixA.mapRect(rectF);
            rectF.sort();
            Rect rect = new Rect();
            rectF.round(rect);
            Exif exif2 = exif;
            Size size3 = size2;
            int iB2 = exif2.b();
            Matrix matrix = new Matrix(processingRequest.f2110h);
            matrix.postConcat(matrixA);
            return Packet.j(imageProxy, exif2, size3, rect, iB2, matrix, imageProxy.p1() instanceof CameraCaptureResultImageInfo ? ((CameraCaptureResultImageInfo) imageProxy.p1()).f2471a : new CameraCaptureResult.EmptyCameraCaptureResult());
        }
        return Packet.j(imageProxy, exif, new Size(imageProxy.getWidth(), imageProxy.getHeight()), processingRequest.f2108e, processingRequest.f2109f, processingRequest.f2110h, imageProxy.p1() instanceof CameraCaptureResultImageInfo ? ((CameraCaptureResultImageInfo) imageProxy.p1()).f2471a : new CameraCaptureResult.EmptyCameraCaptureResult());
    }
}

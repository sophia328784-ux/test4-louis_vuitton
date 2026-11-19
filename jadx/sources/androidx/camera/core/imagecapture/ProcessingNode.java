package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.DngCreator;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.ImmutableImageInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;
import androidx.camera.core.internal.compat.quirk.LowMemoryQuirk;
import androidx.camera.core.internal.compat.workaround.InvalidJpegDataParser;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Node;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import androidx.core.util.Preconditions;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ProcessingNode implements Node<In, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCharacteristics f2097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DngImage2Disk f2098c;
    public AutoValue_ProcessingNode_In d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Operation f2099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Operation f2100f;
    public Bitmap2JpegBytes g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public JpegBytes2Disk f2101h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Operation f2102i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public JpegImage2Result f2103j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public JpegBytes2Image f2104k;
    public Image2Bitmap l;
    public final Quirks m;
    public final boolean n;

    public static abstract class In {
    }

    public static abstract class InputPacket {
    }

    public ProcessingNode(Executor executor, CameraCharacteristics cameraCharacteristics) {
        Quirks quirks = DeviceQuirks.f2499a;
        if (DeviceQuirks.f2499a.b(LowMemoryQuirk.class) != null) {
            this.f2096a = CameraXExecutors.e(executor);
        } else {
            this.f2096a = executor;
        }
        this.f2097b = cameraCharacteristics;
        this.m = quirks;
        this.n = quirks.a(IncorrectJpegMetadataQuirk.class);
    }

    public final ImageProxy a(InputPacket inputPacket) {
        ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a;
        Packet packetJ = (Packet) ((ProcessingInput2Packet) this.f2099e).a(inputPacket);
        List list = this.d.d;
        Preconditions.a(!list.isEmpty());
        int iIntValue = ((Integer) list.get(0)).intValue();
        if ((packetJ.e() == 35 || this.n) && iIntValue == 256) {
            Packet packet = (Packet) ((Image2JpegBytes) this.f2100f).a(new AutoValue_Image2JpegBytes_In(packetJ, processingRequest.g));
            this.f2104k.getClass();
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(ImageReaderProxys.a(packet.h().getWidth(), packet.h().getHeight(), 256, 2));
            ImageProxy imageProxyA = ImageProcessingUtil.a(safeCloseImageReaderProxy, (byte[]) packet.c());
            safeCloseImageReaderProxy.f();
            Objects.requireNonNull(imageProxyA);
            Exif exifD = packet.d();
            Objects.requireNonNull(exifD);
            Rect rectB = packet.b();
            int iF = packet.f();
            Matrix matrixG = packet.g();
            CameraCaptureResult cameraCaptureResultA = packet.a();
            ForwardingImageProxy forwardingImageProxy = (ForwardingImageProxy) imageProxyA;
            packetJ = Packet.j(imageProxyA, exifD, new Size(forwardingImageProxy.getWidth(), forwardingImageProxy.getHeight()), rectB, iF, matrixG, cameraCaptureResultA);
        }
        this.f2103j.getClass();
        ImageProxy imageProxy = (ImageProxy) packetJ.c();
        SettableImageProxy settableImageProxy = new SettableImageProxy(imageProxy, packetJ.h(), ImmutableImageInfo.e(imageProxy.p1().c(), imageProxy.p1().d(), packetJ.f(), packetJ.g(), imageProxy.p1().a()));
        Rect rectB2 = packetJ.b();
        if (rectB2 != null) {
            Rect rect = new Rect(rectB2);
            if (!rect.intersect(0, 0, settableImageProxy.g, settableImageProxy.f1971h)) {
                rect.setEmpty();
            }
        }
        synchronized (settableImageProxy.f1969e) {
        }
        if (list.size() > 1) {
            processingRequest.f2106b.n(settableImageProxy.getFormat());
        }
        return settableImageProxy;
    }

    public final ImageCapture.OutputFileResults b(InputPacket inputPacket) throws Exception {
        List list = this.d.d;
        Preconditions.a(!list.isEmpty());
        Integer num = (Integer) list.get(0);
        int iIntValue = num.intValue();
        Preconditions.b(ImageUtil.c(iIntValue) || iIntValue == 32, "On-disk capture only support JPEG and JPEG/R and RAW output formats. Output format: " + num);
        ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a;
        ImageCapture.OutputFileOptions outputFileOptions = processingRequest.f2107c;
        TakePictureRequest takePictureRequest = processingRequest.f2106b;
        int i2 = processingRequest.g;
        ImageCapture.OutputFileOptions outputFileOptions2 = processingRequest.d;
        Preconditions.b(outputFileOptions != null, "OutputFileOptions cannot be empty");
        Packet packet = (Packet) ((ProcessingInput2Packet) this.f2099e).a(inputPacket);
        if (list.size() <= 1) {
            if (iIntValue != 32) {
                Objects.requireNonNull(outputFileOptions);
                return c(packet, outputFileOptions, i2);
            }
            Objects.requireNonNull(outputFileOptions);
            return d(packet, outputFileOptions);
        }
        Preconditions.b((outputFileOptions == null || outputFileOptions2 == null) ? false : true, "The number of OutputFileOptions for simultaneous capture should be at least two");
        if (packet.e() != 32) {
            Objects.requireNonNull(outputFileOptions2);
            ImageCapture.OutputFileResults outputFileResultsC = c(packet, outputFileOptions2, i2);
            takePictureRequest.n(256);
            return outputFileResultsC;
        }
        Objects.requireNonNull(outputFileOptions);
        ImageCapture.OutputFileResults outputFileResultsD = d(packet, outputFileOptions);
        takePictureRequest.n(32);
        return outputFileResultsD;
    }

    public final ImageCapture.OutputFileResults c(Packet packet, ImageCapture.OutputFileOptions outputFileOptions, int i2) throws ImageCaptureException {
        Packet packetK = (Packet) ((Image2JpegBytes) this.f2100f).a(new AutoValue_Image2JpegBytes_In(packet, i2));
        if (TransformUtils.c(packetK.b(), packetK.h())) {
            Preconditions.f(null, ImageUtil.c(packetK.e()));
            ((JpegBytes2CroppedBitmap) this.f2102i).getClass();
            Rect rectB = packetK.b();
            byte[] bArr = (byte[]) packetK.c();
            try {
                Bitmap bitmapDecodeRegion = BitmapRegionDecoder.newInstance(bArr, 0, bArr.length, false).decodeRegion(rectB, new BitmapFactory.Options());
                Exif exifD = packetK.d();
                Objects.requireNonNull(exifD);
                Rect rect = new Rect(0, 0, bitmapDecodeRegion.getWidth(), bitmapDecodeRegion.getHeight());
                int iF = packetK.f();
                Matrix matrixG = packetK.g();
                RectF rectF = TransformUtils.f2431a;
                Matrix matrix = new Matrix(matrixG);
                matrix.postTranslate(-rectB.left, -rectB.top);
                Packet packetI = Packet.i(bitmapDecodeRegion, exifD, rect, iF, matrix, packetK.a());
                Bitmap2JpegBytes bitmap2JpegBytes = this.g;
                AutoValue_Bitmap2JpegBytes_In autoValue_Bitmap2JpegBytes_In = new AutoValue_Bitmap2JpegBytes_In(packetI, i2);
                bitmap2JpegBytes.getClass();
                Packet packetB = autoValue_Bitmap2JpegBytes_In.b();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ((Bitmap) packetB.c()).compress(Bitmap.CompressFormat.JPEG, autoValue_Bitmap2JpegBytes_In.a(), byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Exif exifD2 = packetB.d();
                Objects.requireNonNull(exifD2);
                packetK = Packet.k(byteArray, exifD2, (Build.VERSION.SDK_INT < 34 || !Bitmap2JpegBytes.Api34Impl.a((Bitmap) packetB.c())) ? 256 : 4101, packetB.h(), packetB.b(), packetB.f(), packetB.g(), packetB.a());
            } catch (IOException e2) {
                throw new ImageCaptureException(1, "Failed to decode JPEG.", e2);
            }
        }
        JpegBytes2Disk jpegBytes2Disk = this.f2101h;
        Objects.requireNonNull(outputFileOptions);
        AutoValue_JpegBytes2Disk_In autoValue_JpegBytes2Disk_In = new AutoValue_JpegBytes2Disk_In(packetK, outputFileOptions);
        jpegBytes2Disk.getClass();
        Packet packetB2 = autoValue_JpegBytes2Disk_In.b();
        ImageCapture.OutputFileOptions outputFileOptionsA = autoValue_JpegBytes2Disk_In.a();
        File fileE = FileUtil.e(outputFileOptionsA);
        byte[] bArr2 = (byte[]) packetB2.c();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileE);
            try {
                fileOutputStream.write(bArr2, 0, new InvalidJpegDataParser().a(bArr2));
                fileOutputStream.close();
                Exif exifD3 = packetB2.d();
                Objects.requireNonNull(exifD3);
                int iF2 = packetB2.f();
                try {
                    ThreadLocal threadLocal = Exif.f2390b;
                    ExifInterface exifInterface = new ExifInterface(fileE.toString());
                    Exif exif = new Exif(exifInterface);
                    exifD3.a(exif);
                    if (exif.b() == 0 && iF2 != 0) {
                        if (iF2 % 90 != 0) {
                            Locale locale = Locale.US;
                            Logger.c(5, "Exif");
                            exifInterface.I("Orientation", String.valueOf(0));
                        } else {
                            int i3 = iF2 % 360;
                            int iE = exifInterface.e(0, "Orientation");
                            while (i3 < 0) {
                                i3 += 90;
                                switch (iE) {
                                    case 2:
                                        iE = 5;
                                        break;
                                    case 3:
                                    case 8:
                                        iE = 6;
                                        break;
                                    case 4:
                                        iE = 7;
                                        break;
                                    case 5:
                                        iE = 4;
                                        break;
                                    case 6:
                                        iE = 1;
                                        break;
                                    case 7:
                                        iE = 2;
                                        break;
                                    default:
                                        iE = 8;
                                        break;
                                }
                            }
                            while (i3 > 0) {
                                i3 -= 90;
                                switch (iE) {
                                    case 2:
                                        iE = 7;
                                        break;
                                    case 3:
                                        iE = 8;
                                        break;
                                    case 4:
                                        iE = 5;
                                        break;
                                    case 5:
                                        iE = 2;
                                        break;
                                    case 6:
                                        iE = 3;
                                        break;
                                    case 7:
                                        iE = 4;
                                        break;
                                    case 8:
                                        iE = 1;
                                        break;
                                    default:
                                        iE = 6;
                                        break;
                                }
                            }
                            exifInterface.I("Orientation", String.valueOf(iE));
                        }
                    }
                    outputFileOptionsA.f1929f.getClass();
                    exif.c();
                    return new ImageCapture.OutputFileResults(FileUtil.f(fileE, outputFileOptionsA), 256);
                } catch (IOException e3) {
                    throw new ImageCaptureException(1, "Failed to update Exif data", e3);
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (IOException e4) {
            throw new ImageCaptureException(1, "Failed to write to temp file", e4);
        }
    }

    public final ImageCapture.OutputFileResults d(Packet packet, ImageCapture.OutputFileOptions outputFileOptions) throws Exception {
        int i2 = 0;
        if (this.f2098c == null) {
            CameraCharacteristics cameraCharacteristics = this.f2097b;
            if (cameraCharacteristics == null) {
                throw new ImageCaptureException(0, "CameraCharacteristics is null, DngCreator cannot be created", null);
            }
            if (packet.a().e() == null) {
                throw new ImageCaptureException(0, "CameraCaptureResult is null, DngCreator cannot be created", null);
            }
            CaptureResult captureResultE = packet.a().e();
            Objects.requireNonNull(captureResultE);
            this.f2098c = new DngImage2Disk(cameraCharacteristics, captureResultE);
        }
        DngImage2Disk dngImage2Disk = this.f2098c;
        ImageProxy imageProxy = (ImageProxy) packet.c();
        int iF = packet.f();
        Objects.requireNonNull(outputFileOptions);
        new AutoValue_DngImage2Disk_In(imageProxy, iF, outputFileOptions);
        dngImage2Disk.getClass();
        File fileE = FileUtil.e(outputFileOptions);
        DngCreator dngCreator = dngImage2Disk.f2087a;
        try {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileE);
                if (iF == 0) {
                    i2 = 1;
                } else if (iF == 90) {
                    i2 = 6;
                } else if (iF == 180) {
                    i2 = 3;
                } else if (iF == 270) {
                    i2 = 8;
                }
                try {
                    dngCreator.setOrientation(i2);
                    dngCreator.writeImage(fileOutputStream, imageProxy.O());
                    fileOutputStream.close();
                    imageProxy.close();
                    return new ImageCapture.OutputFileResults(FileUtil.f(fileE, outputFileOptions), 32);
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e2) {
                throw new ImageCaptureException(1, "Failed to write to temp file", e2);
            } catch (IllegalArgumentException e3) {
                throw new ImageCaptureException(1, "Image with an unsupported format was used", e3);
            } catch (IllegalStateException e4) {
                throw new ImageCaptureException(1, "Not enough metadata information has been set to write a well-formatted DNG file", e4);
            }
        } catch (Throwable th3) {
            imageProxy.close();
            throw th3;
        }
    }
}

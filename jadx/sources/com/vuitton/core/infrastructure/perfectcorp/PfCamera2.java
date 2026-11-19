package com.vuitton.core.infrastructure.perfectcorp;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Size;
import android.view.Surface;
import android.widget.Toast;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.Uninterruptibles;
import defpackage.md;
import defpackage.s3;
import defpackage.uh;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class PfCamera2 extends PfCamera {
    public static List p;
    public static final ImmutableMap q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f66181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraManager f66182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66183c;
    public final CameraCharacteristics d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f66184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HandlerThread f66185f;
    public final Handler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CameraDevice f66186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageReader f66187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CaptureRequest.Builder f66188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CameraCaptureSession f66189k;
    public PfCamera.Size l;
    public String m;
    public PfCamera.PreviewCallback n;
    public final ImageReader.OnImageAvailableListener o;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f66196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CameraManager f66197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f66198c;
        public PfCamera.Size d;

        public Builder(Context context) {
            this.f66196a = context;
        }
    }

    public static final class Camera2Parameters implements PfCamera.Parameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AbstractList f66199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableList f66200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public PfCamera.Size f66201c;
        public String d;

        public Camera2Parameters(PfCamera2 pfCamera2) {
            CameraCharacteristics cameraCharacteristics = pfCamera2.d;
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            Objects.requireNonNull(streamConfigurationMap);
            this.f66199a = Lists.d(new uh(13), Lists.b(streamConfigurationMap.getOutputSizes(35)));
            this.f66200b = f(cameraCharacteristics);
            PfCamera.Size size = pfCamera2.l;
            this.f66201c = new PfCamera.Size(size.f66175a, size.f66176b);
            this.d = pfCamera2.m;
        }

        public static ImmutableList f(CameraCharacteristics cameraCharacteristics) {
            int i2 = ImmutableSet.d;
            ImmutableSet.Builder builder = new ImmutableSet.Builder();
            int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
            if (iArr != null) {
                for (int i3 : iArr) {
                    if (i3 == 0) {
                        builder.a("infinity");
                    } else if (i3 == 1) {
                        builder.a("auto");
                    } else if (i3 == 2) {
                        builder.a("macro");
                    } else if (i3 == 3) {
                        builder.a("continuous-video");
                    } else if (i3 == 4) {
                        builder.a("continuous-picture");
                    } else if (i3 == 5) {
                        builder.a("edof");
                    }
                }
            }
            return ImmutableList.t(builder.k());
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final String a() {
            return this.d;
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final List b() {
            return this.f66199a;
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final void c(int i2, int i3) {
            this.f66201c = new PfCamera.Size(i2, i3);
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final void d(String str) {
            this.d = str;
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final List e() {
            return this.f66200b;
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final PfCamera.Size getPreviewSize() {
            return this.f66201c;
        }
    }

    public static class CompareSizesByArea implements Comparator<Size> {
        @Override // java.util.Comparator
        public final int compare(Size size, Size size2) {
            Size size3 = size;
            Size size4 = size2;
            return Long.signum((((long) size3.getWidth()) * ((long) size3.getHeight())) - (((long) size4.getWidth()) * ((long) size4.getHeight())));
        }
    }

    static {
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        builder.d(0, CameraFacing.FRONT);
        builder.d(1, CameraFacing.BACK);
        q = builder.a(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PfCamera2(Builder builder) throws CameraAccessException {
        Object obj = new Object();
        this.f66184e = obj;
        this.o = new ImageReader.OnImageAvailableListener() { // from class: com.vuitton.core.infrastructure.perfectcorp.PfCamera2.2
            @Override // android.media.ImageReader.OnImageAvailableListener
            public final void onImageAvailable(ImageReader imageReader) {
                synchronized (PfCamera2.this.f66184e) {
                    try {
                        PfCamera2 pfCamera2 = PfCamera2.this;
                        if (pfCamera2.n != null && pfCamera2.f66187i != null) {
                            Image imageAcquireNextImage = imageReader.acquireNextImage();
                            byte[] bArrA = Camera2ImageUtil.a(imageAcquireNextImage);
                            List list = PfCamera2.p;
                            PfCamera2.this.n.h(bArrA);
                            imageAcquireNextImage.close();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.f66181a = builder.f66196a;
        CameraManager cameraManager = builder.f66197b;
        Objects.requireNonNull(cameraManager);
        this.f66182b = cameraManager;
        String str = builder.f66198c;
        Objects.requireNonNull(str);
        this.f66183c = str;
        synchronized (obj) {
            PfCamera.Size size = builder.d;
            Objects.requireNonNull(size);
            this.l = size;
        }
        HandlerThread handlerThread = new HandlerThread("Camera2Background");
        this.f66185f = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.g = handler;
        CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
        this.d = cameraCharacteristics;
        ImmutableList immutableListF = Camera2Parameters.f(cameraCharacteristics);
        if (immutableListF != null && !immutableListF.isEmpty()) {
            synchronized (obj) {
                try {
                    this.m = immutableListF.contains("auto") ? "auto" : (String) immutableListF.get(0);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        cameraManager.openCamera(str, new CameraDevice.StateCallback() { // from class: com.vuitton.core.infrastructure.perfectcorp.PfCamera2.1
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public final void onDisconnected(CameraDevice cameraDevice) {
                List list = PfCamera2.p;
                PfCamera2.this.m();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public final void onError(CameraDevice cameraDevice, int i2) {
                List list = PfCamera2.p;
                PfCamera2.this.m();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public final void onOpened(CameraDevice cameraDevice) {
                synchronized (PfCamera2.this.f66184e) {
                    PfCamera2.this.f66186h = cameraDevice;
                }
            }
        }, handler);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void a(final md mdVar) {
        synchronized (this.f66184e) {
            this.f66188j.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            this.f66188j.set(CaptureRequest.CONTROL_AF_MODE, 0);
            try {
                this.f66189k.capture(this.f66188j.build(), null, this.g);
            } catch (CameraAccessException unused) {
                mdVar.o(false);
            }
            this.f66188j.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            this.f66188j.set(CaptureRequest.CONTROL_MODE, 1);
            this.f66188j.set(CaptureRequest.CONTROL_AF_MODE, 1);
            try {
                this.f66189k.capture(this.f66188j.build(), new CameraCaptureSession.CaptureCallback() { // from class: com.vuitton.core.infrastructure.perfectcorp.PfCamera2.4
                    public final void a() {
                        PfCamera2 pfCamera2 = PfCamera2.this;
                        Context context = pfCamera2.f66181a;
                        pfCamera2.f66188j.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
                        try {
                            pfCamera2.f66189k.setRepeatingRequest(pfCamera2.f66188j.build(), null, pfCamera2.g);
                        } catch (CameraAccessException e2) {
                            e2.getMessage();
                            Toast.makeText(context, "disable auto focus failed", 1).show();
                        } catch (Throwable th) {
                            th.getMessage();
                            Toast.makeText(context, "configure camera failed with reason: ", 1).show();
                        }
                    }

                    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                    public final void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                        synchronized (PfCamera2.this.f66184e) {
                            mdVar.o(true);
                            a();
                        }
                    }

                    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
                    public final void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
                        synchronized (PfCamera2.this.f66184e) {
                            captureFailure.getReason();
                            mdVar.o(false);
                            a();
                        }
                    }
                }, this.g);
            } catch (CameraAccessException unused2) {
                mdVar.o(false);
            }
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final PfCamera.CameraInfo b() throws CameraAccessException {
        CameraFacing cameraFacing;
        CameraCharacteristics cameraCharacteristics = this.f66182b.getCameraCharacteristics(this.f66183c);
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
        Objects.requireNonNull(num);
        Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        Objects.requireNonNull(num2);
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            cameraFacing = CameraFacing.FRONT;
        } else {
            if (iIntValue != 1) {
                md.n("Only supports front and back camera.");
                return null;
            }
            cameraFacing = CameraFacing.BACK;
        }
        return new PfCamera.CameraInfo(cameraFacing, num2.intValue());
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final PfCamera.Parameters c() {
        Camera2Parameters camera2Parameters;
        synchronized (this.f66184e) {
            camera2Parameters = new Camera2Parameters(this);
        }
        return camera2Parameters;
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void e() {
        m();
        HandlerThread handlerThread = this.f66185f;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            boolean z = false;
            while (true) {
                try {
                    handlerThread.join();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void f(PfCamera.Parameters parameters) {
        synchronized (this.f66184e) {
            try {
                this.l = parameters.getPreviewSize();
                String strA = parameters.a();
                if (!TextUtils.equals(strA, this.m)) {
                    this.m = strA;
                    n(strA, this.f66188j);
                    CaptureRequest.Builder builder = this.f66188j;
                    if (builder != null) {
                        this.f66189k.setRepeatingRequest(builder.build(), null, this.g);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void g(s3 s3Var) {
        synchronized (this.f66184e) {
            this.n = s3Var;
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void h() {
        synchronized (this.f66184e) {
            k();
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void i(SurfaceTexture surfaceTexture) {
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void j() {
        final SettableFuture settableFuture = new SettableFuture();
        synchronized (this.f66184e) {
            PfCamera.Size size = this.l;
            ImageReader imageReaderNewInstance = ImageReader.newInstance(size.f66175a, size.f66176b, 35, 1);
            this.f66187i = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(this.o, this.g);
            CaptureRequest.Builder builderCreateCaptureRequest = this.f66186h.createCaptureRequest(1);
            this.f66188j = builderCreateCaptureRequest;
            builderCreateCaptureRequest.addTarget(this.f66187i.getSurface());
            List<Surface> listSingletonList = Collections.singletonList(this.f66187i.getSurface());
            p = listSingletonList;
            this.f66186h.createCaptureSession(listSingletonList, new CameraCaptureSession.StateCallback() { // from class: com.vuitton.core.infrastructure.perfectcorp.PfCamera2.3
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    settableFuture.setException(new IllegalStateException("configure camera failed"));
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    synchronized (PfCamera2.this.f66184e) {
                        try {
                            try {
                                PfCamera2 pfCamera2 = PfCamera2.this;
                                pfCamera2.f66189k = cameraCaptureSession;
                                pfCamera2.n(pfCamera2.m, pfCamera2.f66188j);
                                cameraCaptureSession.setRepeatingRequest(PfCamera2.this.f66188j.build(), null, PfCamera2.this.g);
                            } catch (CameraAccessException e2) {
                                e2.getMessage();
                                Toast.makeText(PfCamera2.this.f66181a, "configure camera failed", 1).show();
                            } catch (Throwable th) {
                                th.getMessage();
                                Toast.makeText(PfCamera2.this.f66181a, "configure camera failed with reason: ", 1).show();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    settableFuture.set(null);
                }
            }, this.g);
        }
        Uninterruptibles.a(settableFuture);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void k() {
        synchronized (this.f66184e) {
            try {
                CameraCaptureSession cameraCaptureSession = this.f66189k;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                    this.f66189k = null;
                }
                ImageReader imageReader = this.f66187i;
                if (imageReader != null) {
                    imageReader.close();
                    this.f66187i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        synchronized (this.f66184e) {
            try {
                this.n = null;
                ImageReader imageReader = this.f66187i;
                if (imageReader != null) {
                    imageReader.close();
                    this.f66187i = null;
                }
                CameraDevice cameraDevice = this.f66186h;
                if (cameraDevice != null) {
                    cameraDevice.close();
                    this.f66186h = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(String str, CaptureRequest.Builder builder) {
        if (builder != null) {
            str.getClass();
            switch (str) {
                case "continuous-video":
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
                    break;
                case "auto":
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                    break;
                case "edof":
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 5);
                    break;
                case "fixed":
                case "infinity":
                    Integer num = (Integer) this.d.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
                    if (num != null) {
                        if (num.intValue() == 2) {
                            if (2 != num.intValue()) {
                            }
                        } else if (2 > num.intValue()) {
                        }
                        builder.set(CaptureRequest.CONTROL_AF_MODE, 0);
                        builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                        break;
                    }
                    break;
                case "macro":
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 2);
                    break;
                case "continuous-picture":
                    builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
                    break;
            }
        }
    }
}

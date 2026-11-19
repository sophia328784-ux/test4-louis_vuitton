package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.hardware.camera2.CameraCharacteristics;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.Logger;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.imagecapture.CaptureNode.AnonymousClass1;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureCallbacks;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import androidx.camera.core.processing.Edge;
import androidx.camera.core.processing.Packet;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import defpackage.ct0;
import defpackage.w21;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class ImagePipeline {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f2089f;
    public static final ExifRotationAvailability g = new ExifRotationAvailability();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageCaptureConfig f2090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CaptureConfig f2091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CaptureNode f2092c;
    public final ProcessingNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AutoValue_CaptureNode_In f2093e;

    public ImagePipeline(ImageCaptureConfig imageCaptureConfig, Size size, CameraCharacteristics cameraCharacteristics, CameraEffect cameraEffect, boolean z, PostviewSettings postviewSettings) {
        int iIntValue;
        Consumer consumer;
        CameraCaptureCallback cameraCaptureCallbackA;
        MetadataImageReader metadataImageReader;
        ImageReaderProxy imageReaderProxy;
        CameraCaptureCallback cameraCaptureCallback;
        int i2;
        MetadataImageReader metadataImageReader2;
        CameraCaptureCallback cameraCaptureCallbackA2;
        Threads.a();
        this.f2090a = imageCaptureConfig;
        CaptureConfig.OptionUnpacker optionUnpacker = (CaptureConfig.OptionUnpacker) imageCaptureConfig.f(UseCaseConfig.x, null);
        if (optionUnpacker == null) {
            ct0.o(imageCaptureConfig.r(imageCaptureConfig.toString()), "Implementation is missing option unpacker for ");
            throw null;
        }
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        optionUnpacker.a(imageCaptureConfig, builder);
        this.f2091b = builder.e();
        final CaptureNode captureNode = new CaptureNode();
        captureNode.f2075a = null;
        captureNode.g = null;
        this.f2092c = captureNode;
        Executor executor = (Executor) imageCaptureConfig.f(IoConfig.J, CameraXExecutors.b());
        Objects.requireNonNull(executor);
        final ProcessingNode processingNode = new ProcessingNode(executor, cameraCharacteristics);
        this.d = processingNode;
        ArrayList arrayList = new ArrayList();
        if (imageCaptureConfig.V() != 0) {
            arrayList.add(32);
            arrayList.add(256);
        } else {
            Integer num = (Integer) imageCaptureConfig.f(ImageCaptureConfig.Q, null);
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                Integer num2 = (Integer) imageCaptureConfig.f(ImageInputConfig.f2303h, null);
                iIntValue = (num2 == null || num2.intValue() != 4101) ? (num2 == null || num2.intValue() != 32) ? 256 : 32 : 4101;
            }
            arrayList.add(Integer.valueOf(iIntValue));
        }
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = new AutoValue_CaptureNode_In(size, imageCaptureConfig.m(), arrayList, z, (ImageReaderProxyProvider) imageCaptureConfig.f(ImageCaptureConfig.S, null), postviewSettings, new Edge(), new Edge());
        this.f2093e = autoValue_CaptureNode_In;
        final int i3 = 1;
        Preconditions.f("CaptureNode does not support recreation yet.", captureNode.f2079f == null && captureNode.f2076b == null);
        captureNode.f2079f = autoValue_CaptureNode_In;
        CaptureNode.AnonymousClass1 anonymousClass1 = captureNode.new AnonymousClass1();
        ArrayList arrayList2 = autoValue_CaptureNode_In.f2046h;
        boolean z2 = arrayList2.size() > 1;
        final int i4 = 2;
        Size size2 = autoValue_CaptureNode_In.f2045f;
        ImageReaderProxyProvider imageReaderProxyProvider = autoValue_CaptureNode_In.f2048j;
        int i5 = autoValue_CaptureNode_In.g;
        if (autoValue_CaptureNode_In.f2047i || imageReaderProxyProvider != null) {
            NoMetadataImageReader noMetadataImageReader = new NoMetadataImageReader(imageReaderProxyProvider != null ? imageReaderProxyProvider.b() : ImageReaderProxys.a(size2.getWidth(), size2.getHeight(), i5, 4));
            captureNode.g = noMetadataImageReader;
            consumer = new Consumer() { // from class: androidx.camera.core.imagecapture.a
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    int i6 = i3;
                    CaptureNode captureNode2 = captureNode;
                    switch (i6) {
                        case 0:
                            captureNode2.c((ProcessingRequest) obj);
                            break;
                        case 1:
                            ProcessingRequest processingRequest = (ProcessingRequest) obj;
                            captureNode2.c(processingRequest);
                            NoMetadataImageReader noMetadataImageReader2 = captureNode2.g;
                            Preconditions.f("Pending request should be null", noMetadataImageReader2.f2095b == null);
                            noMetadataImageReader2.f2095b = processingRequest;
                            break;
                        default:
                            captureNode2.d((TakePictureManager.CaptureError) obj);
                            break;
                    }
                }
            };
            cameraCaptureCallbackA = anonymousClass1;
            metadataImageReader = null;
            imageReaderProxy = noMetadataImageReader;
            cameraCaptureCallback = null;
        } else {
            if (z2) {
                i2 = 0;
                metadataImageReader2 = new MetadataImageReader(size2.getWidth(), size2.getHeight(), 256, 4);
                CameraCaptureCallback cameraCaptureCallbackA3 = CameraCaptureCallbacks.a(anonymousClass1, metadataImageReader2.f1938b);
                metadataImageReader = new MetadataImageReader(size2.getWidth(), size2.getHeight(), 32, 4);
                cameraCaptureCallbackA2 = CameraCaptureCallbacks.a(anonymousClass1, metadataImageReader.f1938b);
                cameraCaptureCallbackA = cameraCaptureCallbackA3;
            } else {
                i2 = 0;
                metadataImageReader2 = new MetadataImageReader(size2.getWidth(), size2.getHeight(), i5, 4);
                cameraCaptureCallbackA = CameraCaptureCallbacks.a(anonymousClass1, metadataImageReader2.f1938b);
                cameraCaptureCallbackA2 = null;
                metadataImageReader = null;
            }
            final int i6 = i2;
            consumer = new Consumer() { // from class: androidx.camera.core.imagecapture.a
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    int i7 = i6;
                    CaptureNode captureNode2 = captureNode;
                    switch (i7) {
                        case 0:
                            captureNode2.c((ProcessingRequest) obj);
                            break;
                        case 1:
                            ProcessingRequest processingRequest = (ProcessingRequest) obj;
                            captureNode2.c(processingRequest);
                            NoMetadataImageReader noMetadataImageReader2 = captureNode2.g;
                            Preconditions.f("Pending request should be null", noMetadataImageReader2.f2095b == null);
                            noMetadataImageReader2.f2095b = processingRequest;
                            break;
                        default:
                            captureNode2.d((TakePictureManager.CaptureError) obj);
                            break;
                    }
                }
            };
            MetadataImageReader metadataImageReader3 = metadataImageReader2;
            cameraCaptureCallback = cameraCaptureCallbackA2;
            imageReaderProxy = metadataImageReader3;
        }
        autoValue_CaptureNode_In.f2083a = cameraCaptureCallbackA;
        if (z2 && cameraCaptureCallback != null) {
            autoValue_CaptureNode_In.f2084b = cameraCaptureCallback;
        }
        Surface surface = imageReaderProxy.getSurface();
        Objects.requireNonNull(surface);
        Preconditions.f("The surface is already set.", autoValue_CaptureNode_In.f2085c == null);
        autoValue_CaptureNode_In.f2085c = new ImmediateSurface(surface, size2, i5);
        captureNode.f2076b = new SafeCloseImageReaderProxy(imageReaderProxy);
        final int i7 = 1;
        imageReaderProxy.e(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.imagecapture.b
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void d(ImageReaderProxy imageReaderProxy2) throws Exception {
                int i8 = i7;
                CaptureNode captureNode2 = captureNode;
                switch (i8) {
                    case 0:
                        try {
                            ImageProxy imageProxyA = imageReaderProxy2.a();
                            if (imageProxyA != null) {
                                if (captureNode2.f2075a == null) {
                                    Logger.c(5, "CaptureNode");
                                    imageProxyA.close();
                                } else {
                                    AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = captureNode2.f2078e;
                                    Objects.requireNonNull(autoValue_ProcessingNode_In);
                                    autoValue_ProcessingNode_In.f2060b.accept(new AutoValue_ProcessingNode_InputPacket(captureNode2.f2075a, imageProxyA));
                                }
                            }
                        } catch (IllegalStateException unused) {
                            Logger.b("CaptureNode");
                            return;
                        }
                        break;
                    default:
                        try {
                            ImageProxy imageProxyA2 = imageReaderProxy2.a();
                            if (imageProxyA2 != null) {
                                captureNode2.b(imageProxyA2);
                            } else {
                                ProcessingRequest processingRequest = captureNode2.f2075a;
                                if (processingRequest != null) {
                                    captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", null)));
                                }
                            }
                        } catch (IllegalStateException e2) {
                            ProcessingRequest processingRequest2 = captureNode2.f2075a;
                            if (processingRequest2 != null) {
                                captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest2.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", e2)));
                                return;
                            }
                            return;
                        }
                        break;
                }
            }
        }, CameraXExecutors.c());
        PostviewSettings postviewSettings2 = autoValue_CaptureNode_In.f2049k;
        if (postviewSettings2 != null) {
            ImageReaderProxy imageReaderProxyB = imageReaderProxyProvider != null ? imageReaderProxyProvider.b() : ImageReaderProxys.a(postviewSettings2.c().getWidth(), postviewSettings2.c().getHeight(), postviewSettings2.b(), 4);
            final int i8 = 0;
            imageReaderProxyB.e(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.imagecapture.b
                @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
                public final void d(ImageReaderProxy imageReaderProxy2) throws Exception {
                    int i9 = i8;
                    CaptureNode captureNode2 = captureNode;
                    switch (i9) {
                        case 0:
                            try {
                                ImageProxy imageProxyA = imageReaderProxy2.a();
                                if (imageProxyA != null) {
                                    if (captureNode2.f2075a == null) {
                                        Logger.c(5, "CaptureNode");
                                        imageProxyA.close();
                                    } else {
                                        AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = captureNode2.f2078e;
                                        Objects.requireNonNull(autoValue_ProcessingNode_In);
                                        autoValue_ProcessingNode_In.f2060b.accept(new AutoValue_ProcessingNode_InputPacket(captureNode2.f2075a, imageProxyA));
                                    }
                                }
                            } catch (IllegalStateException unused) {
                                Logger.b("CaptureNode");
                                return;
                            }
                            break;
                        default:
                            try {
                                ImageProxy imageProxyA2 = imageReaderProxy2.a();
                                if (imageProxyA2 != null) {
                                    captureNode2.b(imageProxyA2);
                                } else {
                                    ProcessingRequest processingRequest = captureNode2.f2075a;
                                    if (processingRequest != null) {
                                        captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", null)));
                                    }
                                }
                            } catch (IllegalStateException e2) {
                                ProcessingRequest processingRequest2 = captureNode2.f2075a;
                                if (processingRequest2 != null) {
                                    captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest2.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", e2)));
                                    return;
                                }
                                return;
                            }
                            break;
                    }
                }
            }, CameraXExecutors.c());
            captureNode.d = new SafeCloseImageReaderProxy(imageReaderProxyB);
            autoValue_CaptureNode_In.f2086e = new ImmediateSurface(imageReaderProxyB.getSurface(), postviewSettings2.c(), postviewSettings2.b());
        }
        if (z2 && metadataImageReader != null) {
            Surface surface2 = metadataImageReader.getSurface();
            Preconditions.f("The secondary surface is already set.", autoValue_CaptureNode_In.d == null);
            autoValue_CaptureNode_In.d = new ImmediateSurface(surface2, size2, i5);
            captureNode.f2077c = new SafeCloseImageReaderProxy(metadataImageReader);
            final int i9 = 1;
            metadataImageReader.e(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.imagecapture.b
                @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
                public final void d(ImageReaderProxy imageReaderProxy2) throws Exception {
                    int i10 = i9;
                    CaptureNode captureNode2 = captureNode;
                    switch (i10) {
                        case 0:
                            try {
                                ImageProxy imageProxyA = imageReaderProxy2.a();
                                if (imageProxyA != null) {
                                    if (captureNode2.f2075a == null) {
                                        Logger.c(5, "CaptureNode");
                                        imageProxyA.close();
                                    } else {
                                        AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = captureNode2.f2078e;
                                        Objects.requireNonNull(autoValue_ProcessingNode_In);
                                        autoValue_ProcessingNode_In.f2060b.accept(new AutoValue_ProcessingNode_InputPacket(captureNode2.f2075a, imageProxyA));
                                    }
                                }
                            } catch (IllegalStateException unused) {
                                Logger.b("CaptureNode");
                                return;
                            }
                            break;
                        default:
                            try {
                                ImageProxy imageProxyA2 = imageReaderProxy2.a();
                                if (imageProxyA2 != null) {
                                    captureNode2.b(imageProxyA2);
                                } else {
                                    ProcessingRequest processingRequest = captureNode2.f2075a;
                                    if (processingRequest != null) {
                                        captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", null)));
                                    }
                                }
                            } catch (IllegalStateException e2) {
                                ProcessingRequest processingRequest2 = captureNode2.f2075a;
                                if (processingRequest2 != null) {
                                    captureNode2.d(new AutoValue_TakePictureManager_CaptureError(processingRequest2.f2105a, new ImageCaptureException(2, "Failed to acquire latest image", e2)));
                                    return;
                                }
                                return;
                            }
                            break;
                    }
                }
            }, CameraXExecutors.c());
        }
        autoValue_CaptureNode_In.l.f2539a = consumer;
        autoValue_CaptureNode_In.m.f2539a = new Consumer() { // from class: androidx.camera.core.imagecapture.a
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i10 = i4;
                CaptureNode captureNode2 = captureNode;
                switch (i10) {
                    case 0:
                        captureNode2.c((ProcessingRequest) obj);
                        break;
                    case 1:
                        ProcessingRequest processingRequest = (ProcessingRequest) obj;
                        captureNode2.c(processingRequest);
                        NoMetadataImageReader noMetadataImageReader2 = captureNode2.g;
                        Preconditions.f("Pending request should be null", noMetadataImageReader2.f2095b == null);
                        noMetadataImageReader2.f2095b = processingRequest;
                        break;
                    default:
                        captureNode2.d((TakePictureManager.CaptureError) obj);
                        break;
                }
            }
        };
        Edge edge = new Edge();
        Edge edge2 = new Edge();
        AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = new AutoValue_ProcessingNode_In(edge, edge2, i5, arrayList2);
        captureNode.f2078e = autoValue_ProcessingNode_In;
        processingNode.d = autoValue_ProcessingNode_In;
        final int i10 = 0;
        edge.f2539a = new Consumer() { // from class: androidx.camera.core.imagecapture.d
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) throws Exception {
                int i11 = i10;
                final ProcessingNode processingNode2 = processingNode;
                final ProcessingNode.InputPacket inputPacket = (ProcessingNode.InputPacket) obj;
                switch (i11) {
                    case 0:
                        if (!((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a.f2111i.g) {
                            final int i12 = 1;
                            processingNode2.f2096a.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.e
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.lang.Runnable
                                public final void run() throws Exception {
                                    int i13 = i12;
                                    ProcessingNode.InputPacket inputPacket2 = inputPacket;
                                    ProcessingNode processingNode3 = processingNode2;
                                    Object[] objArr = 0;
                                    final int i14 = 1;
                                    switch (i13) {
                                        case 0:
                                            final ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            try {
                                                Packet packet = (Packet) ((ProcessingInput2Packet) processingNode3.f2099e).a(inputPacket2);
                                                int iE = packet.e();
                                                Preconditions.b(iE == 35 || iE == 256 || iE == 4101, "Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: " + iE);
                                                final Bitmap bitmap = (Bitmap) processingNode3.l.a(packet);
                                                final int i15 = 2;
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i16 = i15;
                                                        Object obj2 = bitmap;
                                                        ProcessingRequest processingRequest2 = processingRequest;
                                                        switch (i16) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest2.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest2.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest2.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest2.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                            } catch (Exception unused) {
                                                ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2063b.close();
                                                Logger.b("ProcessingNode");
                                                return;
                                            }
                                            break;
                                        default:
                                            final ProcessingRequest processingRequest2 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            final int i16 = 3;
                                            try {
                                                Object[] objArr2 = processingNode3.d.d.size() > 1;
                                                ProcessingRequest processingRequest3 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                                if (processingRequest3.f2107c == null && processingRequest3.d == null) {
                                                    final ImageProxy imageProxyA = processingNode3.a(inputPacket2);
                                                    ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                                                    final Object[] objArr3 = objArr == true ? 1 : 0;
                                                    scheduledExecutorServiceC.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                        @Override // java.lang.Runnable
                                                        public final void run() throws Exception {
                                                            int i17 = objArr3;
                                                            Object obj2 = imageProxyA;
                                                            ProcessingRequest processingRequest4 = processingRequest2;
                                                            switch (i17) {
                                                                case 0:
                                                                    ImageProxy imageProxy = (ImageProxy) obj2;
                                                                    RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                    requestWithCallback.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                        requestWithCallback.a();
                                                                        TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                        takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                    } else {
                                                                        imageProxy.close();
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                    RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                    requestWithCallback2.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback2.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                        requestWithCallback2.a();
                                                                        TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                        takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    Bitmap bitmap2 = (Bitmap) obj2;
                                                                    RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                    requestWithCallback3.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback3.g) {
                                                                        TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                        takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    ImageCaptureException imageCaptureException = (ImageCaptureException) obj2;
                                                                    RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                    requestWithCallback4.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback4.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                        requestWithCallback4.a();
                                                                        Threads.a();
                                                                        TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                        takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException, 1));
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                } else {
                                                    final ImageCapture.OutputFileResults outputFileResultsB = processingNode3.b(inputPacket2);
                                                    if (objArr2 == false || processingRequest2.f2106b.l()) {
                                                        CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                            @Override // java.lang.Runnable
                                                            public final void run() throws Exception {
                                                                int i17 = i14;
                                                                Object obj2 = outputFileResultsB;
                                                                ProcessingRequest processingRequest4 = processingRequest2;
                                                                switch (i17) {
                                                                    case 0:
                                                                        ImageProxy imageProxy = (ImageProxy) obj2;
                                                                        RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                        requestWithCallback.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                            requestWithCallback.a();
                                                                            TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                            takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                        } else {
                                                                            imageProxy.close();
                                                                        }
                                                                        break;
                                                                    case 1:
                                                                        ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                        RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                        requestWithCallback2.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback2.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                            requestWithCallback2.a();
                                                                            TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                            takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 2:
                                                                        Bitmap bitmap2 = (Bitmap) obj2;
                                                                        RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                        requestWithCallback3.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback3.g) {
                                                                            TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                            takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        ImageCaptureException imageCaptureException = (ImageCaptureException) obj2;
                                                                        RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                        requestWithCallback4.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback4.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                            requestWithCallback4.a();
                                                                            Threads.a();
                                                                            TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                            takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException, 1));
                                                                            break;
                                                                        }
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            } catch (ImageCaptureException e2) {
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i17 = i16;
                                                        Object obj2 = e2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i17) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (OutOfMemoryError e3) {
                                                final ImageCaptureException imageCaptureException = new ImageCaptureException(0, "Processing failed due to low memory.", e3);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i17 = i16;
                                                        Object obj2 = imageCaptureException;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i17) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException2 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException2, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (RuntimeException e4) {
                                                final ImageCaptureException imageCaptureException2 = new ImageCaptureException(0, "Processing failed.", e4);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i17 = i16;
                                                        Object obj2 = imageCaptureException2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i17) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            break;
                                    }
                                }
                            });
                        } else {
                            ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2063b.close();
                        }
                        break;
                    default:
                        if (!((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a.f2111i.g) {
                            final int i13 = 0;
                            processingNode2.f2096a.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.e
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.lang.Runnable
                                public final void run() throws Exception {
                                    int i14 = i13;
                                    ProcessingNode.InputPacket inputPacket2 = inputPacket;
                                    ProcessingNode processingNode3 = processingNode2;
                                    Object[] objArr = 0;
                                    final int i15 = 1;
                                    switch (i14) {
                                        case 0:
                                            final ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            try {
                                                Packet packet = (Packet) ((ProcessingInput2Packet) processingNode3.f2099e).a(inputPacket2);
                                                int iE = packet.e();
                                                Preconditions.b(iE == 35 || iE == 256 || iE == 4101, "Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: " + iE);
                                                final Object bitmap = (Bitmap) processingNode3.l.a(packet);
                                                final int i16 = 2;
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i17 = i16;
                                                        Object obj2 = bitmap;
                                                        ProcessingRequest processingRequest4 = processingRequest;
                                                        switch (i17) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                            } catch (Exception unused) {
                                                ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2063b.close();
                                                Logger.b("ProcessingNode");
                                                return;
                                            }
                                            break;
                                        default:
                                            final ProcessingRequest processingRequest2 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            final int i17 = 3;
                                            try {
                                                Object[] objArr2 = processingNode3.d.d.size() > 1;
                                                ProcessingRequest processingRequest3 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                                if (processingRequest3.f2107c == null && processingRequest3.d == null) {
                                                    final Object imageProxyA = processingNode3.a(inputPacket2);
                                                    ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                                                    final int objArr3 = objArr == true ? 1 : 0;
                                                    scheduledExecutorServiceC.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                        @Override // java.lang.Runnable
                                                        public final void run() throws Exception {
                                                            int i18 = objArr3;
                                                            Object obj2 = imageProxyA;
                                                            ProcessingRequest processingRequest4 = processingRequest2;
                                                            switch (i18) {
                                                                case 0:
                                                                    ImageProxy imageProxy = (ImageProxy) obj2;
                                                                    RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                    requestWithCallback.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                        requestWithCallback.a();
                                                                        TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                        takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                    } else {
                                                                        imageProxy.close();
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                    RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                    requestWithCallback2.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback2.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                        requestWithCallback2.a();
                                                                        TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                        takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    Bitmap bitmap2 = (Bitmap) obj2;
                                                                    RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                    requestWithCallback3.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback3.g) {
                                                                        TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                        takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                    RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                    requestWithCallback4.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback4.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                        requestWithCallback4.a();
                                                                        Threads.a();
                                                                        TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                        takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                } else {
                                                    final Object outputFileResultsB = processingNode3.b(inputPacket2);
                                                    if (objArr2 == false || processingRequest2.f2106b.l()) {
                                                        CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                            @Override // java.lang.Runnable
                                                            public final void run() throws Exception {
                                                                int i18 = i15;
                                                                Object obj2 = outputFileResultsB;
                                                                ProcessingRequest processingRequest4 = processingRequest2;
                                                                switch (i18) {
                                                                    case 0:
                                                                        ImageProxy imageProxy = (ImageProxy) obj2;
                                                                        RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                        requestWithCallback.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                            requestWithCallback.a();
                                                                            TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                            takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                        } else {
                                                                            imageProxy.close();
                                                                        }
                                                                        break;
                                                                    case 1:
                                                                        ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                        RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                        requestWithCallback2.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback2.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                            requestWithCallback2.a();
                                                                            TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                            takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 2:
                                                                        Bitmap bitmap2 = (Bitmap) obj2;
                                                                        RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                        requestWithCallback3.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback3.g) {
                                                                            TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                            takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                        RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                        requestWithCallback4.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback4.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                            requestWithCallback4.a();
                                                                            Threads.a();
                                                                            TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                            takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                            break;
                                                                        }
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            } catch (ImageCaptureException e2) {
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = e2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (OutOfMemoryError e3) {
                                                final Object imageCaptureException = new ImageCaptureException(0, "Processing failed due to low memory.", e3);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = imageCaptureException;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (RuntimeException e4) {
                                                final Object imageCaptureException2 = new ImageCaptureException(0, "Processing failed.", e4);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = imageCaptureException2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            break;
                                    }
                                }
                            });
                        } else {
                            Logger.c(5, "ProcessingNode");
                            ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2063b.close();
                        }
                        break;
                }
            }
        };
        final int i11 = 1;
        edge2.f2539a = new Consumer() { // from class: androidx.camera.core.imagecapture.d
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) throws Exception {
                int i12 = i11;
                final ProcessingNode processingNode2 = processingNode;
                final ProcessingNode.InputPacket inputPacket = (ProcessingNode.InputPacket) obj;
                switch (i12) {
                    case 0:
                        if (!((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a.f2111i.g) {
                            final int i13 = 1;
                            processingNode2.f2096a.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.e
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.lang.Runnable
                                public final void run() throws Exception {
                                    int i14 = i13;
                                    ProcessingNode.InputPacket inputPacket2 = inputPacket;
                                    ProcessingNode processingNode3 = processingNode2;
                                    Object[] objArr = 0;
                                    final int i15 = 1;
                                    switch (i14) {
                                        case 0:
                                            final ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            try {
                                                Packet packet = (Packet) ((ProcessingInput2Packet) processingNode3.f2099e).a(inputPacket2);
                                                int iE = packet.e();
                                                Preconditions.b(iE == 35 || iE == 256 || iE == 4101, "Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: " + iE);
                                                final Object bitmap = (Bitmap) processingNode3.l.a(packet);
                                                final int i16 = 2;
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i16;
                                                        Object obj2 = bitmap;
                                                        ProcessingRequest processingRequest4 = processingRequest;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                            } catch (Exception unused) {
                                                ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2063b.close();
                                                Logger.b("ProcessingNode");
                                                return;
                                            }
                                            break;
                                        default:
                                            final ProcessingRequest processingRequest2 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            final int i17 = 3;
                                            try {
                                                Object[] objArr2 = processingNode3.d.d.size() > 1;
                                                ProcessingRequest processingRequest3 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                                if (processingRequest3.f2107c == null && processingRequest3.d == null) {
                                                    final Object imageProxyA = processingNode3.a(inputPacket2);
                                                    ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                                                    final int objArr3 = objArr == true ? 1 : 0;
                                                    scheduledExecutorServiceC.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                        @Override // java.lang.Runnable
                                                        public final void run() throws Exception {
                                                            int i18 = objArr3;
                                                            Object obj2 = imageProxyA;
                                                            ProcessingRequest processingRequest4 = processingRequest2;
                                                            switch (i18) {
                                                                case 0:
                                                                    ImageProxy imageProxy = (ImageProxy) obj2;
                                                                    RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                    requestWithCallback.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                        requestWithCallback.a();
                                                                        TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                        takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                    } else {
                                                                        imageProxy.close();
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                    RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                    requestWithCallback2.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback2.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                        requestWithCallback2.a();
                                                                        TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                        takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    Bitmap bitmap2 = (Bitmap) obj2;
                                                                    RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                    requestWithCallback3.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback3.g) {
                                                                        TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                        takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                    RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                    requestWithCallback4.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback4.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                        requestWithCallback4.a();
                                                                        Threads.a();
                                                                        TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                        takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                } else {
                                                    final Object outputFileResultsB = processingNode3.b(inputPacket2);
                                                    if (objArr2 == false || processingRequest2.f2106b.l()) {
                                                        CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                            @Override // java.lang.Runnable
                                                            public final void run() throws Exception {
                                                                int i18 = i15;
                                                                Object obj2 = outputFileResultsB;
                                                                ProcessingRequest processingRequest4 = processingRequest2;
                                                                switch (i18) {
                                                                    case 0:
                                                                        ImageProxy imageProxy = (ImageProxy) obj2;
                                                                        RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                        requestWithCallback.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                            requestWithCallback.a();
                                                                            TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                            takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                        } else {
                                                                            imageProxy.close();
                                                                        }
                                                                        break;
                                                                    case 1:
                                                                        ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                        RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                        requestWithCallback2.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback2.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                            requestWithCallback2.a();
                                                                            TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                            takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 2:
                                                                        Bitmap bitmap2 = (Bitmap) obj2;
                                                                        RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                        requestWithCallback3.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback3.g) {
                                                                            TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                            takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                        RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                        requestWithCallback4.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback4.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                            requestWithCallback4.a();
                                                                            Threads.a();
                                                                            TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                            takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                            break;
                                                                        }
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            } catch (ImageCaptureException e2) {
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = e2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (OutOfMemoryError e3) {
                                                final Object imageCaptureException = new ImageCaptureException(0, "Processing failed due to low memory.", e3);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = imageCaptureException;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (RuntimeException e4) {
                                                final Object imageCaptureException2 = new ImageCaptureException(0, "Processing failed.", e4);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = imageCaptureException2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            break;
                                    }
                                }
                            });
                        } else {
                            ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2063b.close();
                        }
                        break;
                    default:
                        if (!((AutoValue_ProcessingNode_InputPacket) inputPacket).f2062a.f2111i.g) {
                            final int i14 = 0;
                            processingNode2.f2096a.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.e
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.lang.Runnable
                                public final void run() throws Exception {
                                    int i15 = i14;
                                    ProcessingNode.InputPacket inputPacket2 = inputPacket;
                                    ProcessingNode processingNode3 = processingNode2;
                                    Object[] objArr = 0;
                                    final int i16 = 1;
                                    switch (i15) {
                                        case 0:
                                            final ProcessingRequest processingRequest = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            try {
                                                Packet packet = (Packet) ((ProcessingInput2Packet) processingNode3.f2099e).a(inputPacket2);
                                                int iE = packet.e();
                                                Preconditions.b(iE == 35 || iE == 256 || iE == 4101, "Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: " + iE);
                                                final Object bitmap = (Bitmap) processingNode3.l.a(packet);
                                                final int i17 = 2;
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i18 = i17;
                                                        Object obj2 = bitmap;
                                                        ProcessingRequest processingRequest4 = processingRequest;
                                                        switch (i18) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                            } catch (Exception unused) {
                                                ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2063b.close();
                                                Logger.b("ProcessingNode");
                                                return;
                                            }
                                            break;
                                        default:
                                            final ProcessingRequest processingRequest2 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                            final int i18 = 3;
                                            try {
                                                Object[] objArr2 = processingNode3.d.d.size() > 1;
                                                ProcessingRequest processingRequest3 = ((AutoValue_ProcessingNode_InputPacket) inputPacket2).f2062a;
                                                if (processingRequest3.f2107c == null && processingRequest3.d == null) {
                                                    final Object imageProxyA = processingNode3.a(inputPacket2);
                                                    ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                                                    final int objArr3 = objArr == true ? 1 : 0;
                                                    scheduledExecutorServiceC.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                        @Override // java.lang.Runnable
                                                        public final void run() throws Exception {
                                                            int i19 = objArr3;
                                                            Object obj2 = imageProxyA;
                                                            ProcessingRequest processingRequest4 = processingRequest2;
                                                            switch (i19) {
                                                                case 0:
                                                                    ImageProxy imageProxy = (ImageProxy) obj2;
                                                                    RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                    requestWithCallback.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                        requestWithCallback.a();
                                                                        TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                        takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                    } else {
                                                                        imageProxy.close();
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                    RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                    requestWithCallback2.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback2.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                        requestWithCallback2.a();
                                                                        TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                        takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                        break;
                                                                    }
                                                                    break;
                                                                case 2:
                                                                    Bitmap bitmap2 = (Bitmap) obj2;
                                                                    RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                    requestWithCallback3.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback3.g) {
                                                                        TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                        takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                        break;
                                                                    }
                                                                    break;
                                                                default:
                                                                    ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                    RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                    requestWithCallback4.getClass();
                                                                    Threads.a();
                                                                    if (!requestWithCallback4.g) {
                                                                        Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                        requestWithCallback4.a();
                                                                        Threads.a();
                                                                        TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                        takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                        }
                                                    });
                                                } else {
                                                    final Object outputFileResultsB = processingNode3.b(inputPacket2);
                                                    if (objArr2 == false || processingRequest2.f2106b.l()) {
                                                        CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                            @Override // java.lang.Runnable
                                                            public final void run() throws Exception {
                                                                int i19 = i16;
                                                                Object obj2 = outputFileResultsB;
                                                                ProcessingRequest processingRequest4 = processingRequest2;
                                                                switch (i19) {
                                                                    case 0:
                                                                        ImageProxy imageProxy = (ImageProxy) obj2;
                                                                        RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                        requestWithCallback.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                            requestWithCallback.a();
                                                                            TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                            takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                        } else {
                                                                            imageProxy.close();
                                                                        }
                                                                        break;
                                                                    case 1:
                                                                        ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                        RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                        requestWithCallback2.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback2.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                            requestWithCallback2.a();
                                                                            TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                            takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 2:
                                                                        Bitmap bitmap2 = (Bitmap) obj2;
                                                                        RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                        requestWithCallback3.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback3.g) {
                                                                            TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                            takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                        RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                        requestWithCallback4.getClass();
                                                                        Threads.a();
                                                                        if (!requestWithCallback4.g) {
                                                                            Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                            requestWithCallback4.a();
                                                                            Threads.a();
                                                                            TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                            takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                            break;
                                                                        }
                                                                        break;
                                                                }
                                                            }
                                                        });
                                                    }
                                                }
                                            } catch (ImageCaptureException e2) {
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i19 = i18;
                                                        Object obj2 = e2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i19) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (OutOfMemoryError e3) {
                                                final Object imageCaptureException = new ImageCaptureException(0, "Processing failed due to low memory.", e3);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i19 = i18;
                                                        Object obj2 = imageCaptureException;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i19) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            } catch (RuntimeException e4) {
                                                final Object imageCaptureException2 = new ImageCaptureException(0, "Processing failed.", e4);
                                                CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.f
                                                    @Override // java.lang.Runnable
                                                    public final void run() throws Exception {
                                                        int i19 = i18;
                                                        Object obj2 = imageCaptureException2;
                                                        ProcessingRequest processingRequest4 = processingRequest2;
                                                        switch (i19) {
                                                            case 0:
                                                                ImageProxy imageProxy = (ImageProxy) obj2;
                                                                RequestWithCallback requestWithCallback = processingRequest4.f2111i;
                                                                requestWithCallback.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback.f2116c.isDone());
                                                                    requestWithCallback.a();
                                                                    TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                                                                    takePictureRequest.a().execute(new w21(takePictureRequest, imageProxy, 2));
                                                                } else {
                                                                    imageProxy.close();
                                                                }
                                                                break;
                                                            case 1:
                                                                ImageCapture.OutputFileResults outputFileResults = (ImageCapture.OutputFileResults) obj2;
                                                                RequestWithCallback requestWithCallback2 = processingRequest4.f2111i;
                                                                requestWithCallback2.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback2.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback2.f2116c.isDone());
                                                                    requestWithCallback2.a();
                                                                    TakePictureRequest takePictureRequest2 = requestWithCallback2.f2114a;
                                                                    takePictureRequest2.a().execute(new w21(takePictureRequest2, outputFileResults, 4));
                                                                    break;
                                                                }
                                                                break;
                                                            case 2:
                                                                Bitmap bitmap2 = (Bitmap) obj2;
                                                                RequestWithCallback requestWithCallback3 = processingRequest4.f2111i;
                                                                requestWithCallback3.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback3.g) {
                                                                    TakePictureRequest takePictureRequest3 = requestWithCallback3.f2114a;
                                                                    takePictureRequest3.a().execute(new w21(takePictureRequest3, bitmap2, 3));
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                ImageCaptureException imageCaptureException3 = (ImageCaptureException) obj2;
                                                                RequestWithCallback requestWithCallback4 = processingRequest4.f2111i;
                                                                requestWithCallback4.getClass();
                                                                Threads.a();
                                                                if (!requestWithCallback4.g) {
                                                                    Preconditions.f("onImageCaptured() must be called before onFinalResult()", requestWithCallback4.f2116c.isDone());
                                                                    requestWithCallback4.a();
                                                                    Threads.a();
                                                                    TakePictureRequest takePictureRequest4 = requestWithCallback4.f2114a;
                                                                    takePictureRequest4.a().execute(new w21(takePictureRequest4, imageCaptureException3, 1));
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            break;
                                    }
                                }
                            });
                        } else {
                            Logger.c(5, "ProcessingNode");
                            ((AutoValue_ProcessingNode_InputPacket) inputPacket).f2063b.close();
                        }
                        break;
                }
            }
        };
        processingNode.f2099e = new ProcessingInput2Packet();
        processingNode.f2100f = new Image2JpegBytes(processingNode.m);
        processingNode.f2102i = new JpegBytes2CroppedBitmap();
        processingNode.g = new Bitmap2JpegBytes();
        processingNode.f2101h = new JpegBytes2Disk();
        processingNode.f2103j = new JpegImage2Result();
        processingNode.l = new Image2Bitmap();
        if (i5 == 35 || processingNode.n) {
            processingNode.f2104k = new JpegBytes2Image();
        }
    }

    public final void a() {
        ImmediateSurface immediateSurface;
        Threads.a();
        CaptureNode captureNode = this.f2092c;
        captureNode.getClass();
        Threads.a();
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = captureNode.f2079f;
        Objects.requireNonNull(autoValue_CaptureNode_In);
        final SafeCloseImageReaderProxy safeCloseImageReaderProxy = captureNode.f2076b;
        Objects.requireNonNull(safeCloseImageReaderProxy);
        final SafeCloseImageReaderProxy safeCloseImageReaderProxy2 = captureNode.f2077c;
        final SafeCloseImageReaderProxy safeCloseImageReaderProxy3 = captureNode.d;
        ImmediateSurface immediateSurface2 = autoValue_CaptureNode_In.f2085c;
        Objects.requireNonNull(immediateSurface2);
        immediateSurface2.a();
        ImmediateSurface immediateSurface3 = autoValue_CaptureNode_In.f2085c;
        Objects.requireNonNull(immediateSurface3);
        final int i2 = 0;
        Futures.h(immediateSurface3.f2290e).addListener(new Runnable() { // from class: dj
            @Override // java.lang.Runnable
            public final void run() {
                int i3 = i2;
                SafeCloseImageReaderProxy safeCloseImageReaderProxy4 = safeCloseImageReaderProxy;
                switch (i3) {
                    case 0:
                        safeCloseImageReaderProxy4.f();
                        break;
                    case 1:
                        if (safeCloseImageReaderProxy4 != null) {
                            safeCloseImageReaderProxy4.f();
                        }
                        break;
                    default:
                        if (safeCloseImageReaderProxy4 != null) {
                            safeCloseImageReaderProxy4.f();
                        }
                        break;
                }
            }
        }, CameraXExecutors.c());
        ImmediateSurface immediateSurface4 = autoValue_CaptureNode_In.f2086e;
        final int i3 = 1;
        if (immediateSurface4 != null) {
            immediateSurface4.a();
            Futures.h(autoValue_CaptureNode_In.f2086e.f2290e).addListener(new Runnable() { // from class: dj
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i3;
                    SafeCloseImageReaderProxy safeCloseImageReaderProxy4 = safeCloseImageReaderProxy3;
                    switch (i4) {
                        case 0:
                            safeCloseImageReaderProxy4.f();
                            break;
                        case 1:
                            if (safeCloseImageReaderProxy4 != null) {
                                safeCloseImageReaderProxy4.f();
                            }
                            break;
                        default:
                            if (safeCloseImageReaderProxy4 != null) {
                                safeCloseImageReaderProxy4.f();
                            }
                            break;
                    }
                }
            }, CameraXExecutors.c());
        }
        if (autoValue_CaptureNode_In.f2046h.size() > 1 && (immediateSurface = autoValue_CaptureNode_In.d) != null) {
            immediateSurface.a();
            final int i4 = 2;
            Futures.h(autoValue_CaptureNode_In.d.f2290e).addListener(new Runnable() { // from class: dj
                @Override // java.lang.Runnable
                public final void run() {
                    int i5 = i4;
                    SafeCloseImageReaderProxy safeCloseImageReaderProxy4 = safeCloseImageReaderProxy2;
                    switch (i5) {
                        case 0:
                            safeCloseImageReaderProxy4.f();
                            break;
                        case 1:
                            if (safeCloseImageReaderProxy4 != null) {
                                safeCloseImageReaderProxy4.f();
                            }
                            break;
                        default:
                            if (safeCloseImageReaderProxy4 != null) {
                                safeCloseImageReaderProxy4.f();
                            }
                            break;
                    }
                }
            }, CameraXExecutors.c());
        }
        this.d.getClass();
    }

    public final SessionConfig.Builder b(Size size) {
        ImmediateSurface immediateSurface;
        SessionConfig.Builder builderM = SessionConfig.Builder.m(this.f2090a, size);
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = this.f2093e;
        ImmediateSurface immediateSurface2 = autoValue_CaptureNode_In.f2085c;
        Objects.requireNonNull(immediateSurface2);
        DynamicRange dynamicRange = DynamicRange.d;
        builderM.f(immediateSurface2, dynamicRange);
        if (autoValue_CaptureNode_In.f2046h.size() > 1 && (immediateSurface = autoValue_CaptureNode_In.d) != null) {
            builderM.f(immediateSurface, dynamicRange);
        }
        ImmediateSurface immediateSurface3 = autoValue_CaptureNode_In.f2086e;
        if (immediateSurface3 != null) {
            builderM.t(immediateSurface3);
        }
        return builderM;
    }

    public ImagePipeline(ImageCaptureConfig imageCaptureConfig, Size size, CameraCharacteristics cameraCharacteristics, CameraEffect cameraEffect, boolean z) {
        this(imageCaptureConfig, size, cameraCharacteristics, cameraEffect, z, null);
    }

    public ImagePipeline(ImageCaptureConfig imageCaptureConfig, Size size, CameraCharacteristics cameraCharacteristics) {
        this(imageCaptureConfig, size, cameraCharacteristics, null, false, null);
    }
}

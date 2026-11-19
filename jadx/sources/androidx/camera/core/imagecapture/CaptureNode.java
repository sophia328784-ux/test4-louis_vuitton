package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.Node;
import androidx.core.util.Preconditions;
import defpackage.hn0;
import defpackage.w21;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class CaptureNode implements Node<In, ProcessingNode.In> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ProcessingRequest f2075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SafeCloseImageReaderProxy f2076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SafeCloseImageReaderProxy f2077c;
    public SafeCloseImageReaderProxy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AutoValue_ProcessingNode_In f2078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AutoValue_CaptureNode_In f2079f;
    public NoMetadataImageReader g;

    /* JADX INFO: renamed from: androidx.camera.core.imagecapture.CaptureNode$1, reason: invalid class name */
    class AnonymousClass1 extends CameraCaptureCallback {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void d(int i2) {
            CameraXExecutors.c().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.c
                @Override // java.lang.Runnable
                public final void run() {
                    ProcessingRequest processingRequest = CaptureNode.this.f2075a;
                    if (processingRequest != null) {
                        processingRequest.f2111i.b();
                    }
                }
            });
        }
    }

    public static abstract class In {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CameraCaptureCallback f2083a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CameraCaptureCallback f2084b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImmediateSurface f2085c;
        public ImmediateSurface d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImmediateSurface f2086e;

        /* JADX INFO: renamed from: androidx.camera.core.imagecapture.CaptureNode$In$1, reason: invalid class name */
        public class AnonymousClass1 extends CameraCaptureCallback {
        }
    }

    public final int a() {
        int iD;
        Threads.a();
        Preconditions.f("The ImageReader is not initialized.", this.f2076b != null);
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.f2076b;
        synchronized (safeCloseImageReaderProxy.f1957a) {
            iD = safeCloseImageReaderProxy.d.d() - safeCloseImageReaderProxy.f1958b;
        }
        return iD;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0055  */
    public final void b(ImageProxy imageProxy) throws Exception {
        boolean z;
        ProcessingRequest processingRequest;
        ProcessingRequest processingRequest2;
        Threads.a();
        if (this.f2075a == null) {
            Objects.toString(imageProxy);
            Logger.c(5, "CaptureNode");
            imageProxy.close();
            return;
        }
        if (((Integer) imageProxy.p1().c().f2362a.get(this.f2075a.f2112j)) == null) {
            Logger.c(5, "CaptureNode");
            imageProxy.close();
            return;
        }
        Threads.a();
        AutoValue_ProcessingNode_In autoValue_ProcessingNode_In = this.f2078e;
        Objects.requireNonNull(autoValue_ProcessingNode_In);
        autoValue_ProcessingNode_In.f2059a.accept(new AutoValue_ProcessingNode_InputPacket(this.f2075a, imageProxy));
        ProcessingRequest processingRequest3 = this.f2075a;
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = this.f2079f;
        if (autoValue_CaptureNode_In != null) {
            z = autoValue_CaptureNode_In.f2046h.size() > 1;
        }
        if (z && (processingRequest2 = this.f2075a) != null) {
            processingRequest2.f2106b.n(imageProxy.getFormat());
        }
        if (!z || ((processingRequest = this.f2075a) != null && processingRequest.f2106b.l())) {
            this.f2075a = null;
        }
        RequestWithCallback requestWithCallback = processingRequest3.f2111i;
        int i2 = processingRequest3.m;
        if (i2 != -1 && i2 != 100) {
            processingRequest3.m = 100;
            requestWithCallback.getClass();
            Threads.a();
            if (!requestWithCallback.g) {
                TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
                takePictureRequest.a().execute(new hn0(takePictureRequest, 28));
            }
        }
        requestWithCallback.getClass();
        Threads.a();
        if (requestWithCallback.g) {
            return;
        }
        if (!requestWithCallback.f2119h) {
            requestWithCallback.b();
        }
        requestWithCallback.f2117e.b(null);
    }

    public final void c(final ProcessingRequest processingRequest) {
        Threads.a();
        Preconditions.f("only one capture stage is supported.", processingRequest.f2113k.size() == 1);
        Preconditions.f("Too many acquire images. Close image to be able to process next.", a() > 0);
        this.f2075a = processingRequest;
        Futures.a(processingRequest.l, new FutureCallback<Void>() { // from class: androidx.camera.core.imagecapture.CaptureNode.2
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                Threads.a();
                CaptureNode captureNode = CaptureNode.this;
                ProcessingRequest processingRequest2 = captureNode.f2075a;
                if (processingRequest == processingRequest2) {
                    int i2 = processingRequest2.f2105a;
                    Logger.c(5, "CaptureNode");
                    NoMetadataImageReader noMetadataImageReader = captureNode.g;
                    if (noMetadataImageReader != null) {
                        noMetadataImageReader.f2095b = null;
                    }
                    captureNode.f2075a = null;
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
            }
        }, CameraXExecutors.a());
    }

    public final void d(TakePictureManager.CaptureError captureError) {
        boolean z;
        Threads.a();
        ProcessingRequest processingRequest = this.f2075a;
        if (processingRequest == null || processingRequest.f2105a != captureError.b()) {
            return;
        }
        ProcessingRequest processingRequest2 = this.f2075a;
        ImageCaptureException imageCaptureExceptionA = captureError.a();
        RequestWithCallback requestWithCallback = processingRequest2.f2111i;
        TakePictureRequest takePictureRequest = requestWithCallback.f2114a;
        Threads.a();
        if (requestWithCallback.g) {
            return;
        }
        Threads.a();
        int i2 = takePictureRequest.f2136a;
        if (i2 > 0) {
            takePictureRequest.f2136a = i2 - 1;
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Threads.a();
            takePictureRequest.a().execute(new w21(takePictureRequest, imageCaptureExceptionA, 1));
        }
        requestWithCallback.a();
        requestWithCallback.f2117e.d(imageCaptureExceptionA);
        if (z) {
            requestWithCallback.f2115b.e(takePictureRequest);
        }
    }
}

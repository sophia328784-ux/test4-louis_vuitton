package androidx.camera.camera2.internal;

import androidx.arch.core.util.Function;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessorSurface;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.r00;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements CallbackToFutureAdapter.Resolver, AsyncFunction, Function, ImageReaderProxy.OnImageAvailableListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1826c;

    public /* synthetic */ n(Camera2CapturePipeline.Pipeline pipeline, CaptureConfig.Builder builder) {
        this.f1825b = 2;
        this.f1826c = builder;
    }

    @Override // androidx.arch.core.util.Function
    /* JADX INFO: renamed from: apply, reason: collision with other method in class */
    public Object mo0apply(Object obj) {
        ProcessingCaptureSession processingCaptureSession = (ProcessingCaptureSession) this.f1826c;
        CaptureSession captureSession = processingCaptureSession.d;
        if (processingCaptureSession.f1611i == ProcessingCaptureSession.ProcessorState.SESSION_INITIALIZED) {
            List<DeferrableSurface> listB = processingCaptureSession.f1610h.b();
            ArrayList arrayList = new ArrayList();
            for (DeferrableSurface deferrableSurface : listB) {
                Preconditions.b(deferrableSurface instanceof SessionProcessorSurface, "Surface must be SessionProcessorSurface");
                arrayList.add((SessionProcessorSurface) deferrableSurface);
            }
            processingCaptureSession.g = new Camera2RequestProcessor(captureSession, arrayList);
            Logger.c(3, "ProcessingCaptureSession");
            processingCaptureSession.f1605a.f();
            processingCaptureSession.f1611i = ProcessingCaptureSession.ProcessorState.ON_CAPTURE_SESSION_STARTED;
            SessionConfig sessionConfig = processingCaptureSession.f1609f;
            if (sessionConfig != null) {
                processingCaptureSession.h(sessionConfig);
            }
            if (processingCaptureSession.f1612j != null) {
                processingCaptureSession.b(processingCaptureSession.f1612j);
                processingCaptureSession.f1612j = null;
            }
        }
        return null;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void d(ImageReaderProxy imageReaderProxy) {
        ZslControlImpl zslControlImpl = (ZslControlImpl) this.f1826c;
        zslControlImpl.getClass();
        try {
            ImageProxy imageProxyA = imageReaderProxy.a();
            if (imageProxyA != null) {
                zslControlImpl.f1668c.b(imageProxyA);
            }
        } catch (IllegalStateException e2) {
            e2.getMessage();
            Logger.a("ZslControlImpl");
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f1825b;
        Object obj = this.f1826c;
        switch (i2) {
            case 0:
                Camera2CapturePipeline.AePreCaptureTask aePreCaptureTask = (Camera2CapturePipeline.AePreCaptureTask) obj;
                aePreCaptureTask.f1487a.f1420h.b(completer);
                aePreCaptureTask.f1488b.f1774b = true;
                return "AePreCapture";
            case 1:
                ((Camera2CapturePipeline.CameraCapturePipelineImpl) obj).f1493b.f1501i.c();
                completer.b(null);
                return "invokePostCaptureFuture";
            case 2:
                ((CaptureConfig.Builder) obj).b(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.Camera2CapturePipeline.Pipeline.2
                    public AnonymousClass2() {
                    }

                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void a(int i3) {
                        completer.d(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                    }

                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void b(int i3, CameraCaptureResult cameraCaptureResult) {
                        completer.b(null);
                    }

                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void c(int i3, CameraCaptureFailure cameraCaptureFailure) {
                        completer.d(new ImageCaptureException(2, "Capture request failed with reason " + cameraCaptureFailure.f2223a, null));
                    }
                });
                return "submitStillCapture";
            case 3:
            default:
                FocusMeteringControl focusMeteringControl = (FocusMeteringControl) obj;
                focusMeteringControl.f1581b.execute(new d(focusMeteringControl, completer, 4));
                return "triggerAePrecapture";
            case 4:
                ((Camera2CapturePipeline.ResultListener) obj).f1504a = completer;
                return "waitFor3AResult";
        }
    }

    public /* synthetic */ n(Object obj, int i2) {
        this.f1825b = i2;
        this.f1826c = obj;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        Camera2CapturePipeline.Pipeline pipeline = (Camera2CapturePipeline.Pipeline) this.f1826c;
        if (Boolean.TRUE.equals((Boolean) obj)) {
            long j2 = pipeline.g;
            ScheduledExecutorService scheduledExecutorService = pipeline.f1497c;
            Camera2CameraControlImpl camera2CameraControlImpl = pipeline.d;
            long j3 = j2 / 1000000;
            Camera2CapturePipeline.ResultListener resultListener = new Camera2CapturePipeline.ResultListener(new q(0));
            camera2CameraControlImpl.n(resultListener);
            d dVar = new d(camera2CameraControlImpl, resultListener, 3);
            Executor executor = camera2CameraControlImpl.f1417c;
            ListenableFuture listenableFuture = resultListener.f1505b;
            listenableFuture.addListener(dVar, executor);
            return CallbackToFutureAdapter.a(new r00(listenableFuture, scheduledExecutorService, j3, 1));
        }
        return Futures.g(null);
    }
}

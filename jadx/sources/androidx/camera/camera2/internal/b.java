package androidx.camera.camera2.internal;

import androidx.camera.core.CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1684c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1685e;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, int i2) {
        this.f1683b = i2;
        this.f1684c = obj;
        this.d = obj2;
        this.f1685e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ZoomState zoomStateF;
        switch (this.f1683b) {
            case 0:
                Camera2CameraControlImpl camera2CameraControlImpl = (Camera2CameraControlImpl) this.f1684c;
                Executor executor = (Executor) this.d;
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) this.f1685e;
                Camera2CameraControlImpl.CameraCaptureCallbackSet cameraCaptureCallbackSet = camera2CameraControlImpl.A;
                cameraCaptureCallbackSet.f1424a.add(cameraCaptureCallback);
                cameraCaptureCallbackSet.f1425b.put(cameraCaptureCallback, executor);
                return;
            case 1:
                Camera2CapturePipeline.ScreenFlashTask screenFlashTask = (Camera2CapturePipeline.ScreenFlashTask) this.f1684c;
                AtomicReference atomicReference = (AtomicReference) this.d;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.f1685e;
                Logger.c(3, "Camera2CapturePipeline");
                screenFlashTask.d.a(System.currentTimeMillis() + HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD, (ImageCapture.ScreenFlashListener) atomicReference.get());
                completer.b(null);
                return;
            default:
                ZoomControl zoomControl = (ZoomControl) this.f1684c;
                CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) this.d;
                ZoomState zoomState = (ZoomState) this.f1685e;
                if (zoomControl.f1661f) {
                    zoomControl.f1660e.c(zoomState.d(), completer2);
                    zoomControl.f1657a.x();
                    return;
                }
                synchronized (zoomControl.f1659c) {
                    zoomControl.f1659c.e(1.0f);
                    zoomStateF = ImmutableZoomState.f(zoomControl.f1659c);
                    break;
                }
                zoomControl.b(zoomStateF);
                completer2.d(new CameraControl.OperationCanceledException("Camera is not active."));
                return;
        }
    }
}

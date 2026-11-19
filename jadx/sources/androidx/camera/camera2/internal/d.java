package androidx.camera.camera2.internal;

import android.hardware.camera2.TotalCaptureResult;
import android.media.ImageWriter;
import androidx.camera.core.Logger;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.fc;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1800c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(Object obj, Object obj2, int i2) {
        this.f1799b = i2;
        this.f1800c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1799b) {
            case 0:
                Camera2CameraControlImpl camera2CameraControlImpl = (Camera2CameraControlImpl) this.f1800c;
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) this.d;
                Camera2CameraControlImpl.CameraCaptureCallbackSet cameraCaptureCallbackSet = camera2CameraControlImpl.A;
                cameraCaptureCallbackSet.f1424a.remove(cameraCaptureCallback);
                cameraCaptureCallbackSet.f1425b.remove(cameraCaptureCallback);
                return;
            case 1:
                Camera2CameraControlImpl.CameraControlSessionCallback cameraControlSessionCallback = (Camera2CameraControlImpl.CameraControlSessionCallback) this.f1800c;
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) this.d;
                int i2 = Camera2CameraControlImpl.CameraControlSessionCallback.f1426c;
                HashSet hashSet = new HashSet();
                HashSet<Camera2CameraControlImpl.CaptureResultListener> hashSet2 = cameraControlSessionCallback.f1427a;
                for (Camera2CameraControlImpl.CaptureResultListener captureResultListener : hashSet2) {
                    if (captureResultListener.a(totalCaptureResult)) {
                        hashSet.add(captureResultListener);
                    }
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                hashSet2.removeAll(hashSet);
                return;
            case 2:
                Camera2CameraImpl camera2CameraImpl = (Camera2CameraImpl) this.f1800c;
                String str = (String) this.d;
                camera2CameraImpl.w(fc.h("Use case ", str, " INACTIVE"));
                LinkedHashMap linkedHashMap = camera2CameraImpl.f1438b.f2366a;
                if (linkedHashMap.containsKey(str)) {
                    UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap.get(str);
                    useCaseAttachInfo.f2371f = false;
                    if (!useCaseAttachInfo.f2370e) {
                        linkedHashMap.remove(str);
                    }
                }
                camera2CameraImpl.M();
                return;
            case 3:
                Camera2CameraControlImpl camera2CameraControlImpl2 = (Camera2CameraControlImpl) this.f1800c;
                camera2CameraControlImpl2.f1416b.f1427a.remove((Camera2CapturePipeline.ResultListener) this.d);
                return;
            case 4:
                ((FocusMeteringControl) this.f1800c).b((CallbackToFutureAdapter.Completer) this.d);
                return;
            case 5:
                ProcessingCaptureSession processingCaptureSession = (ProcessingCaptureSession) this.f1800c;
                DeferrableSurface deferrableSurface = (DeferrableSurface) this.d;
                DeferrableSurfaces.a(processingCaptureSession.f1608e);
                if (deferrableSurface != null) {
                    deferrableSurface.b();
                    return;
                }
                return;
            case 6:
                SynchronizedCaptureSessionImpl synchronizedCaptureSessionImpl = (SynchronizedCaptureSessionImpl) this.f1800c;
                SynchronizedCaptureSession synchronizedCaptureSession = (SynchronizedCaptureSession) this.d;
                CaptureSessionRepository captureSessionRepository = synchronizedCaptureSessionImpl.f1635b;
                synchronized (captureSessionRepository.f1556b) {
                    captureSessionRepository.f1557c.remove(synchronizedCaptureSessionImpl);
                    captureSessionRepository.d.remove(synchronizedCaptureSessionImpl);
                    break;
                }
                synchronizedCaptureSessionImpl.r(synchronizedCaptureSession);
                if (synchronizedCaptureSessionImpl.f1638f != null) {
                    Objects.requireNonNull(synchronizedCaptureSessionImpl.f1637e);
                    synchronizedCaptureSessionImpl.f1637e.n(synchronizedCaptureSession);
                    return;
                } else {
                    synchronizedCaptureSessionImpl.toString();
                    Logger.c(5, "SyncCaptureSessionBase");
                    return;
                }
            case 7:
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = (SynchronizedCaptureSessionBaseImpl) this.f1800c;
                SynchronizedCaptureSession synchronizedCaptureSession2 = (SynchronizedCaptureSession) this.d;
                Objects.requireNonNull(synchronizedCaptureSessionBaseImpl.f1637e);
                synchronizedCaptureSessionBaseImpl.f1637e.r(synchronizedCaptureSession2);
                return;
            default:
                SafeCloseImageReaderProxy safeCloseImageReaderProxy = (SafeCloseImageReaderProxy) this.f1800c;
                ZslControlImpl.ImageWriterHolder imageWriterHolder = (ZslControlImpl.ImageWriterHolder) this.d;
                safeCloseImageReaderProxy.f();
                imageWriterHolder.f1676b.set(false);
                ImageWriter imageWriter = imageWriterHolder.f1675a;
                if (imageWriter != null) {
                    imageWriter.close();
                    return;
                }
                return;
        }
    }
}

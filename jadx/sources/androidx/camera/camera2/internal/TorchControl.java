package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.FlashAvailabilityChecker;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.utils.Threads;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import defpackage.oi;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class TorchControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Camera2CameraControlImpl f1648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableLiveData f1649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f1650c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f1651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1652f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f1653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1654i;

    public TorchControl(Camera2CameraControlImpl camera2CameraControlImpl, CameraCharacteristicsCompat cameraCharacteristicsCompat, Executor executor) {
        this.f1648a = camera2CameraControlImpl;
        this.f1651e = executor;
        boolean zA = FlashAvailabilityChecker.a(new oi(cameraCharacteristicsCompat, 1));
        this.d = zA;
        int iB = (zA && cameraCharacteristicsCompat.e()) ? cameraCharacteristicsCompat.b() : 0;
        this.g = iB;
        this.f1649b = new MutableLiveData(0);
        this.f1650c = new MutableLiveData(Integer.valueOf(iB));
        camera2CameraControlImpl.n(new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.d0
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean a(TotalCaptureResult totalCaptureResult) {
                TorchControl torchControl = this.f1801a;
                if (torchControl.f1653h != null) {
                    Integer num = (Integer) totalCaptureResult.getRequest().get(CaptureRequest.FLASH_MODE);
                    if ((num != null && num.intValue() == 2) == torchControl.f1654i) {
                        torchControl.f1653h.b(null);
                        torchControl.f1653h = null;
                    }
                }
                return false;
            }
        });
    }

    public final void a(CallbackToFutureAdapter.Completer completer, int i2) {
        if (!this.d) {
            if (completer != null) {
                completer.d(new IllegalStateException("No flash unit"));
                return;
            }
            return;
        }
        if (!this.f1652f) {
            b(0);
            if (completer != null) {
                completer.d(new CameraControl.OperationCanceledException("Camera is not active."));
                return;
            }
            return;
        }
        this.f1654i = i2 != 0;
        this.f1648a.p(i2);
        b(i2);
        CallbackToFutureAdapter.Completer completer2 = this.f1653h;
        if (completer2 != null) {
            completer2.d(new CameraControl.OperationCanceledException("There is a new enableTorch being set"));
        }
        this.f1653h = completer;
    }

    public final void b(int i2) {
        Integer numValueOf = Integer.valueOf(i2 != 1 ? 0 : 1);
        boolean zB = Threads.b();
        MutableLiveData mutableLiveData = this.f1649b;
        if (zB) {
            mutableLiveData.setValue(numValueOf);
        } else {
            mutableLiveData.postValue(numValueOf);
        }
    }
}

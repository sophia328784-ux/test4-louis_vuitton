package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Looper;
import android.util.Range;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.Logger;
import androidx.camera.core.ZoomState;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class ZoomControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Camera2CameraControlImpl f1657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ZoomStateImpl f1659c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ZoomImpl f1660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1661f = false;
    public final Camera2CameraControlImpl.CaptureResultListener g;

    public interface ZoomImpl {
        void a(TotalCaptureResult totalCaptureResult);

        void b(Camera2ImplConfig.Builder builder);

        void c(float f2, CallbackToFutureAdapter.Completer completer);

        float d();

        void e();

        float f();
    }

    public ZoomControl(Camera2CameraControlImpl camera2CameraControlImpl, CameraCharacteristicsCompat cameraCharacteristicsCompat, Executor executor) {
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.ZoomControl.1
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean a(TotalCaptureResult totalCaptureResult) {
                ZoomControl.this.f1660e.a(totalCaptureResult);
                return false;
            }
        };
        this.f1657a = camera2CameraControlImpl;
        this.f1658b = executor;
        ZoomImpl zoomImplA = a(cameraCharacteristicsCompat);
        this.f1660e = zoomImplA;
        ZoomStateImpl zoomStateImpl = new ZoomStateImpl(zoomImplA.f(), zoomImplA.d());
        this.f1659c = zoomStateImpl;
        zoomStateImpl.e(1.0f);
        this.d = new MutableLiveData(ImmutableZoomState.f(zoomStateImpl));
        camera2CameraControlImpl.n(captureResultListener);
    }

    public static ZoomImpl a(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        Range range;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                range = (Range) cameraCharacteristicsCompat.a(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
            } catch (AssertionError unused) {
                Logger.c(5, "ZoomControl");
                range = null;
            }
            if (range != null) {
                return new AndroidRZoomImpl(cameraCharacteristicsCompat);
            }
        }
        return new CropRegionZoomImpl(cameraCharacteristicsCompat);
    }

    public final void b(ZoomState zoomState) {
        Looper looperMyLooper = Looper.myLooper();
        Looper mainLooper = Looper.getMainLooper();
        MutableLiveData mutableLiveData = this.d;
        if (looperMyLooper == mainLooper) {
            mutableLiveData.setValue(zoomState);
        } else {
            mutableLiveData.postValue(zoomState);
        }
    }
}

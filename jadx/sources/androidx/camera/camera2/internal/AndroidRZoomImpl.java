package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Range;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.params.CaptureRequestParameterCompat;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.Config;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
final class AndroidRZoomImpl implements ZoomControl.ZoomImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Range f1393a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f1395c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1396e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f1394b = 1.0f;
    public float d = 1.0f;

    public AndroidRZoomImpl(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.f1396e = false;
        this.f1393a = (Range) cameraCharacteristicsCompat.a(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
        this.f1396e = cameraCharacteristicsCompat.f();
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void a(TotalCaptureResult totalCaptureResult) {
        if (this.f1395c != null) {
            CaptureRequest request = totalCaptureResult.getRequest();
            Float f2 = request == null ? null : (Float) request.get(CaptureRequest.CONTROL_ZOOM_RATIO);
            if (f2 == null) {
                return;
            }
            if (this.d == f2.floatValue()) {
                this.f1395c.b(null);
                this.f1395c = null;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void b(Camera2ImplConfig.Builder builder) {
        CaptureRequest.Key key = CaptureRequest.CONTROL_ZOOM_RATIO;
        Float fValueOf = Float.valueOf(this.f1394b);
        Config.OptionPriority optionPriority = Config.OptionPriority.REQUIRED;
        builder.e(key, fValueOf, optionPriority);
        if (this.f1396e) {
            CaptureRequestParameterCompat.a(builder, optionPriority);
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void c(float f2, CallbackToFutureAdapter.Completer completer) {
        this.f1394b = f2;
        CallbackToFutureAdapter.Completer completer2 = this.f1395c;
        if (completer2 != null) {
            completer2.d(new CameraControl.OperationCanceledException("There is a new zoomRatio being set"));
        }
        this.d = this.f1394b;
        this.f1395c = completer;
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final float d() {
        return ((Float) this.f1393a.getLower()).floatValue();
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void e() {
        this.f1394b = 1.0f;
        CallbackToFutureAdapter.Completer completer = this.f1395c;
        if (completer != null) {
            completer.d(new CameraControl.OperationCanceledException("Camera is not active."));
            this.f1395c = null;
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final float f() {
        return ((Float) this.f1393a.getUpper()).floatValue();
    }
}

package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.Config;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
final class CropRegionZoomImpl implements ZoomControl.ZoomImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1562a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f1564c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f1563b = null;
    public Rect d = null;

    public CropRegionZoomImpl(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.f1562a = cameraCharacteristicsCompat;
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void a(TotalCaptureResult totalCaptureResult) {
        if (this.f1564c != null) {
            CaptureRequest request = totalCaptureResult.getRequest();
            Rect rect = request == null ? null : (Rect) request.get(CaptureRequest.SCALER_CROP_REGION);
            Rect rect2 = this.d;
            if (rect2 == null || !rect2.equals(rect)) {
                return;
            }
            this.f1564c.b(null);
            this.f1564c = null;
            this.d = null;
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void b(Camera2ImplConfig.Builder builder) {
        Rect rect = this.f1563b;
        if (rect != null) {
            builder.e(CaptureRequest.SCALER_CROP_REGION, rect, Config.OptionPriority.REQUIRED);
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void c(float f2, CallbackToFutureAdapter.Completer completer) {
        Rect rect = (Rect) this.f1562a.a(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        rect.getClass();
        float fWidth = rect.width() / f2;
        float fHeight = rect.height() / f2;
        float fWidth2 = (rect.width() - fWidth) / 2.0f;
        float fHeight2 = (rect.height() - fHeight) / 2.0f;
        this.f1563b = new Rect((int) fWidth2, (int) fHeight2, (int) (fWidth2 + fWidth), (int) (fHeight2 + fHeight));
        CallbackToFutureAdapter.Completer completer2 = this.f1564c;
        if (completer2 != null) {
            completer2.d(new CameraControl.OperationCanceledException("There is a new zoomRatio being set"));
        }
        this.d = this.f1563b;
        this.f1564c = completer;
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final float d() {
        return 1.0f;
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final void e() {
        this.d = null;
        this.f1563b = null;
        CallbackToFutureAdapter.Completer completer = this.f1564c;
        if (completer != null) {
            completer.d(new CameraControl.OperationCanceledException("Camera is not active."));
            this.f1564c = null;
        }
    }

    @Override // androidx.camera.camera2.internal.ZoomControl.ZoomImpl
    public final float f() {
        Float f2 = (Float) this.f1562a.a(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
        if (f2 != null && f2.floatValue() >= 1.0f) {
            return f2.floatValue();
        }
        return 1.0f;
    }
}

package androidx.camera.core.impl;

import android.util.Range;
import androidx.camera.core.impl.utils.SessionProcessorUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public class AdapterCameraControl extends ForwardingCameraControl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraControlInternal f2155c;
    public final SessionProcessor d;

    public AdapterCameraControl(CameraControlInternal cameraControlInternal, SessionProcessor sessionProcessor) {
        super(cameraControlInternal);
        this.f2155c = cameraControlInternal;
        this.d = sessionProcessor;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.CameraControl
    public final ListenableFuture b(float f2) {
        Range rangeG;
        SessionProcessor sessionProcessor = this.d;
        if (!SessionProcessorUtil.a(sessionProcessor, 0)) {
            return Futures.e(new IllegalStateException("Zoom is not supported"));
        }
        if (sessionProcessor == null || (rangeG = SessionProcessor.g()) == null || (f2 >= ((Float) rangeG.getLower()).floatValue() && f2 <= ((Float) rangeG.getUpper()).floatValue())) {
            return this.f2155c.b(f2);
        }
        return Futures.e(new IllegalArgumentException("Requested zoomRatio " + f2 + " is not within valid range [" + rangeG.getLower() + " , " + rangeG.getUpper() + "]"));
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.CameraControl
    public final ListenableFuture d(boolean z) {
        return !SessionProcessorUtil.a(this.d, 6) ? Futures.e(new IllegalStateException("Torch is not supported")) : this.f2155c.d(z);
    }
}

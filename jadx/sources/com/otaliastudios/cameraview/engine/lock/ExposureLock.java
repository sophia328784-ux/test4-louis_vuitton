package com.otaliastudios.cameraview.engine.lock;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;

/* JADX INFO: loaded from: classes3.dex */
public class ExposureLock extends BaseLock {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f38906e = CameraLogger.a("ExposureLock");

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        f38906e.b(1, "processCapture:", "aeState:", num);
        if (num != null && num.intValue() == 3) {
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final boolean n(ActionHolder actionHolder) {
        boolean z = false;
        boolean z2 = ((Integer) j(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL, -1)).intValue() != 2;
        Integer num = (Integer) actionHolder.a().get(CaptureRequest.CONTROL_AE_MODE);
        boolean z3 = num != null && (num.intValue() == 1 || num.intValue() == 3 || num.intValue() == 2 || num.intValue() == 4 || num.intValue() == 5);
        if (z2 && z3) {
            z = true;
        }
        f38906e.b(1, "checkIsSupported:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final boolean o(ActionHolder actionHolder) {
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        CameraLogger cameraLogger = f38906e;
        boolean z = false;
        if (totalCaptureResultK == null) {
            cameraLogger.b(1, "checkShouldSkip: false - lastResult is null.");
            return false;
        }
        Integer num = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AE_STATE);
        if (num != null && num.intValue() == 3) {
            z = true;
        }
        cameraLogger.b(1, "checkShouldSkip:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final void p(ActionHolder actionHolder) {
        actionHolder.a().set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
        actionHolder.a().set(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        actionHolder.e();
    }
}

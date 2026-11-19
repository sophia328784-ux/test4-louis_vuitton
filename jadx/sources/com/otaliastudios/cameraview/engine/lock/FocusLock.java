package com.otaliastudios.cameraview.engine.lock;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;

/* JADX INFO: loaded from: classes3.dex */
public class FocusLock extends BaseLock {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f38907e = CameraLogger.a("FocusLock");

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
        f38907e.b(1, "onCapture:", "afState:", num, "afMode:", num2);
        if (num == null || num2 == null || num2.intValue() != 1) {
            return;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0 || iIntValue == 2 || iIntValue == 4 || iIntValue == 5 || iIntValue == 6) {
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final boolean n(ActionHolder actionHolder) {
        for (int i2 : (int[]) j(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES, new int[0])) {
            if (i2 == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final boolean o(ActionHolder actionHolder) {
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        CameraLogger cameraLogger = f38907e;
        boolean z = false;
        if (totalCaptureResultK == null) {
            cameraLogger.b(1, "checkShouldSkip: false - lastResult is null.");
            return false;
        }
        Integer num = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AF_STATE);
        boolean z2 = num != null && (num.intValue() == 4 || num.intValue() == 5 || num.intValue() == 0 || num.intValue() == 2 || num.intValue() == 6);
        Integer num2 = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AF_MODE);
        boolean z3 = num2 != null && num2.intValue() == 1;
        if (z2 && z3) {
            z = true;
        }
        cameraLogger.b(1, "checkShouldSkip:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.lock.BaseLock
    public final void p(ActionHolder actionHolder) {
        actionHolder.a().set(CaptureRequest.CONTROL_AF_MODE, 1);
        actionHolder.a().set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        actionHolder.e();
    }
}

package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import com.otaliastudios.cameraview.CameraLogger;

/* JADX INFO: loaded from: classes3.dex */
public class LogAction extends BaseAction {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38896f = CameraLogger.a("CameraEngine");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f38897e;

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
        Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        Integer num3 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        String str = "aeMode: " + num + " aeLock: " + ((Boolean) totalCaptureResult.get(CaptureResult.CONTROL_AE_LOCK)) + " aeState: " + num2 + " aeTriggerState: " + ((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_PRECAPTURE_TRIGGER)) + " afState: " + num3 + " afTriggerState: " + ((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_TRIGGER));
        if (str.equals(this.f38897e)) {
            return;
        }
        this.f38897e = str;
        f38896f.b(1, str);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void h(ActionHolder actionHolder) {
        l(0);
        m(actionHolder);
    }
}

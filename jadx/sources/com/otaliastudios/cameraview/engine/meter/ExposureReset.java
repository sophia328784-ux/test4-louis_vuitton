package com.otaliastudios.cameraview.engine.meter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;

/* JADX INFO: loaded from: classes3.dex */
public class ExposureReset extends BaseReset {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38925f = CameraLogger.a("ExposureReset");

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        if (this.f38894b == 0) {
            actionHolder.a().set(CaptureRequest.CONTROL_AE_LOCK, Boolean.FALSE);
            actionHolder.e();
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseReset
    public final void n(ActionHolder actionHolder, MeteringRectangle meteringRectangle) {
        int iIntValue = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AE, 0)).intValue();
        if (meteringRectangle != null && iIntValue > 0) {
            actionHolder.a().set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{meteringRectangle});
        }
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        Integer num = totalCaptureResultK == null ? null : (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AE_PRECAPTURE_TRIGGER);
        CameraLogger cameraLogger = f38925f;
        cameraLogger.b(1, "onStarted:", "last precapture trigger is", num);
        if (num != null && num.intValue() == 1) {
            cameraLogger.b(1, "onStarted:", "canceling precapture.");
            actionHolder.a().set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
        }
        actionHolder.a().set(CaptureRequest.CONTROL_AE_LOCK, Boolean.TRUE);
        actionHolder.e();
        l(0);
    }
}

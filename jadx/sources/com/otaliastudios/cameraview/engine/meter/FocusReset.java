package com.otaliastudios.cameraview.engine.meter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;

/* JADX INFO: loaded from: classes3.dex */
public class FocusReset extends BaseReset {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38927f = CameraLogger.a("FocusReset");

    @Override // com.otaliastudios.cameraview.engine.meter.BaseReset
    public final void n(ActionHolder actionHolder, MeteringRectangle meteringRectangle) {
        boolean z = false;
        int iIntValue = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AF, 0)).intValue();
        boolean z2 = true;
        if (meteringRectangle != null && iIntValue > 0) {
            actionHolder.a().set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{meteringRectangle});
            z = true;
        }
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        Integer num = totalCaptureResultK == null ? null : (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AF_TRIGGER);
        f38927f.b(2, "onStarted:", "last focus trigger is", num);
        if (num == null || num.intValue() != 1) {
            z2 = z;
        } else {
            actionHolder.a().set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        }
        if (z2) {
            actionHolder.e();
        }
        l(Integer.MAX_VALUE);
    }
}

package com.otaliastudios.cameraview.engine.meter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;

/* JADX INFO: loaded from: classes3.dex */
public class WhiteBalanceReset extends BaseReset {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38935f = CameraLogger.a("WhiteBalanceReset");

    @Override // com.otaliastudios.cameraview.engine.meter.BaseReset
    public final void n(ActionHolder actionHolder, MeteringRectangle meteringRectangle) {
        f38935f.b(2, "onStarted:", "with area:", meteringRectangle);
        int iIntValue = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB, 0)).intValue();
        if (meteringRectangle != null && iIntValue > 0) {
            actionHolder.a().set(CaptureRequest.CONTROL_AWB_REGIONS, new MeteringRectangle[]{meteringRectangle});
            actionHolder.e();
        }
        l(Integer.MAX_VALUE);
    }
}

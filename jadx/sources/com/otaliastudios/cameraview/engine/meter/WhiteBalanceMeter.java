package com.otaliastudios.cameraview.engine.meter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WhiteBalanceMeter extends BaseMeter {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final CameraLogger f38934i = CameraLogger.a("WhiteBalanceMeter");

    public WhiteBalanceMeter(List<MeteringRectangle> list, boolean z) {
        super(list, z);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AWB_STATE);
        f38934i.b(1, "onCaptureCompleted:", "awbState:", num);
        if (num == null) {
            return;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 2) {
            this.f38920f = true;
            l(Integer.MAX_VALUE);
        } else {
            if (iIntValue != 3) {
                return;
            }
            this.f38920f = false;
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean n(ActionHolder actionHolder) {
        boolean z = false;
        boolean z2 = ((Integer) j(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL, -1)).intValue() != 2;
        Integer num = (Integer) actionHolder.a().get(CaptureRequest.CONTROL_AWB_MODE);
        if (z2 && num != null && num.intValue() == 1) {
            z = true;
        }
        f38934i.b(1, "checkIsSupported:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean o(ActionHolder actionHolder) {
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        CameraLogger cameraLogger = f38934i;
        boolean z = false;
        if (totalCaptureResultK == null) {
            cameraLogger.b(1, "checkShouldSkip: false - lastResult is null.");
            return false;
        }
        Integer num = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AWB_STATE);
        if (num != null && num.intValue() == 2) {
            z = true;
        }
        cameraLogger.b(1, "checkShouldSkip:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final void p(ActionHolder actionHolder, List list) {
        f38934i.b(1, "onStarted:", "with areas:", list);
        int iIntValue = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB, 0)).intValue();
        if (list.isEmpty() || iIntValue <= 0) {
            return;
        }
        actionHolder.a().set(CaptureRequest.CONTROL_AWB_REGIONS, (MeteringRectangle[]) list.subList(0, Math.min(iIntValue, list.size())).toArray(new MeteringRectangle[0]));
        actionHolder.e();
    }
}

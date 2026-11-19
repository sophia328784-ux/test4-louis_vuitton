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
public class FocusMeter extends BaseMeter {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final CameraLogger f38926i = CameraLogger.a("FocusMeter");

    public FocusMeter(List<MeteringRectangle> list, boolean z) {
        super(list, z);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        f38926i.b(1, "onCaptureCompleted:", "afState:", num);
        if (num == null) {
            return;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 4) {
            this.f38920f = true;
            l(Integer.MAX_VALUE);
        } else {
            if (iIntValue != 5) {
                return;
            }
            this.f38920f = false;
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void h(ActionHolder actionHolder) {
        actionHolder.a().set(CaptureRequest.CONTROL_AF_TRIGGER, null);
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean n(ActionHolder actionHolder) {
        Integer num = (Integer) actionHolder.a().get(CaptureRequest.CONTROL_AF_MODE);
        boolean z = num != null && (num.intValue() == 1 || num.intValue() == 4 || num.intValue() == 3 || num.intValue() == 2);
        f38926i.b(1, "checkIsSupported:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean o(ActionHolder actionHolder) {
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        CameraLogger cameraLogger = f38926i;
        boolean z = false;
        if (totalCaptureResultK == null) {
            cameraLogger.b(1, "checkShouldSkip: false - lastResult is null.");
            return false;
        }
        Integer num = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AF_STATE);
        if (num != null && (num.intValue() == 4 || num.intValue() == 2)) {
            z = true;
        }
        cameraLogger.b(1, "checkShouldSkip:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final void p(ActionHolder actionHolder, List list) {
        f38926i.b(1, "onStarted:", "with areas:", list);
        actionHolder.a().set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        int iIntValue = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AF, 0)).intValue();
        if (!list.isEmpty() && iIntValue > 0) {
            actionHolder.a().set(CaptureRequest.CONTROL_AF_REGIONS, (MeteringRectangle[]) list.subList(0, Math.min(iIntValue, list.size())).toArray(new MeteringRectangle[0]));
        }
        actionHolder.e();
    }
}

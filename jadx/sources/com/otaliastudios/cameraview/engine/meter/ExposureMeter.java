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
public class ExposureMeter extends BaseMeter {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final CameraLogger f38922k = CameraLogger.a("ExposureMeter");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f38923i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f38924j;

    public ExposureMeter(List<MeteringRectangle> list, boolean z) {
        super(list, z);
        this.f38923i = false;
        this.f38924j = false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_PRECAPTURE_TRIGGER);
        f38922k.b(1, "onCaptureCompleted:", "aeState:", num, "aeTriggerState:", num2);
        if (num == null) {
            return;
        }
        if (this.f38894b == 0) {
            int iIntValue = num.intValue();
            if (iIntValue == 2) {
                if (num2 != null && num2.intValue() == 1) {
                    this.f38920f = true;
                    l(Integer.MAX_VALUE);
                }
            } else if (iIntValue == 3) {
                this.f38920f = false;
                l(Integer.MAX_VALUE);
            } else if (iIntValue != 4) {
                if (iIntValue == 5) {
                    l(1);
                }
            } else if (num2 != null) {
                this.f38920f = true;
                l(Integer.MAX_VALUE);
            }
        }
        if (this.f38894b == 1) {
            int iIntValue2 = num.intValue();
            if (iIntValue2 != 2) {
                if (iIntValue2 == 3) {
                    this.f38920f = false;
                    l(Integer.MAX_VALUE);
                    return;
                } else if (iIntValue2 != 4) {
                    return;
                }
            }
            this.f38920f = true;
            l(Integer.MAX_VALUE);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void h(ActionHolder actionHolder) {
        actionHolder.a().set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, null);
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean n(ActionHolder actionHolder) {
        boolean z = false;
        boolean z2 = ((Integer) j(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL, -1)).intValue() == 2;
        Integer num = (Integer) actionHolder.a().get(CaptureRequest.CONTROL_AE_MODE);
        boolean z3 = num != null && (num.intValue() == 1 || num.intValue() == 3 || num.intValue() == 2 || num.intValue() == 4 || num.intValue() == 5);
        this.f38924j = !z2;
        boolean z4 = ((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AE, 0)).intValue() > 0;
        this.f38923i = z4;
        if (z3 && (this.f38924j || z4)) {
            z = true;
        }
        f38922k.b(1, "checkIsSupported:", Boolean.valueOf(z), "trigger:", Boolean.valueOf(this.f38924j), "areas:", Boolean.valueOf(this.f38923i));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final boolean o(ActionHolder actionHolder) {
        TotalCaptureResult totalCaptureResultK = actionHolder.k();
        CameraLogger cameraLogger = f38922k;
        boolean z = false;
        if (totalCaptureResultK == null) {
            cameraLogger.b(1, "checkShouldSkip: false - lastResult is null.");
            return false;
        }
        Integer num = (Integer) totalCaptureResultK.get(CaptureResult.CONTROL_AE_STATE);
        if (num != null && num.intValue() == 2) {
            z = true;
        }
        cameraLogger.b(1, "checkShouldSkip:", Boolean.valueOf(z));
        return z;
    }

    @Override // com.otaliastudios.cameraview.engine.meter.BaseMeter
    public final void p(ActionHolder actionHolder, List list) {
        f38922k.b(1, "onStarted:", "with areas:", list);
        if (this.f38923i && !list.isEmpty()) {
            actionHolder.a().set(CaptureRequest.CONTROL_AE_REGIONS, (MeteringRectangle[]) list.subList(0, Math.min(((Integer) j(CameraCharacteristics.CONTROL_MAX_REGIONS_AE, 0)).intValue(), list.size())).toArray(new MeteringRectangle[0]));
        }
        if (this.f38924j) {
            actionHolder.a().set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        }
        actionHolder.e();
        if (this.f38924j) {
            l(0);
        } else {
            l(1);
        }
    }
}

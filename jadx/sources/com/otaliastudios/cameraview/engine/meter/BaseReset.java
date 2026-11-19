package com.otaliastudios.cameraview.engine.meter;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.MeteringRectangle;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.BaseAction;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseReset extends BaseAction {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f38921e = true;

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        n(actionHolder, this.f38921e ? new MeteringRectangle((Rect) j(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE, new Rect()), 0) : null);
    }

    public abstract void n(ActionHolder actionHolder, MeteringRectangle meteringRectangle);
}

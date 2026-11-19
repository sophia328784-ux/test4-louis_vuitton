package com.otaliastudios.cameraview.engine.meter;

import com.otaliastudios.cameraview.engine.action.ActionWrapper;
import com.otaliastudios.cameraview.engine.action.Actions;
import com.otaliastudios.cameraview.engine.action.BaseAction;

/* JADX INFO: loaded from: classes3.dex */
public class MeterResetAction extends ActionWrapper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BaseAction f38933e = Actions.c(new ExposureReset(), new FocusReset(), new WhiteBalanceReset());

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper
    public final BaseAction n() {
        return this.f38933e;
    }
}

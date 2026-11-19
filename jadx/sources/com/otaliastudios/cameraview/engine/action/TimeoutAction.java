package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes3.dex */
class TimeoutAction extends ActionWrapper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f38901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f38902f;
    public ActionWrapper g;

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper, com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        super.b(actionHolder, captureRequest, totalCaptureResult);
        if (f() || System.currentTimeMillis() <= this.f38901e + this.f38902f) {
            return;
        }
        this.g.a(actionHolder);
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper, com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38901e = System.currentTimeMillis();
        super.i(actionHolder);
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper
    public final BaseAction n() {
        return this.g;
    }
}

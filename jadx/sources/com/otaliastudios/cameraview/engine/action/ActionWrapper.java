package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ActionWrapper extends BaseAction {
    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        n().b(actionHolder, captureRequest, totalCaptureResult);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void c(ActionHolder actionHolder, CaptureRequest captureRequest) {
        super.c(actionHolder, captureRequest);
        n().c(actionHolder, captureRequest);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void d(ActionHolder actionHolder, CaptureRequest captureRequest, CaptureResult captureResult) {
        n().d(actionHolder, captureRequest, captureResult);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void g(ActionHolder actionHolder) {
        n().g(actionHolder);
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        n().e(new ActionCallback() { // from class: com.otaliastudios.cameraview.engine.action.ActionWrapper.1
            @Override // com.otaliastudios.cameraview.engine.action.ActionCallback
            public final void a(BaseAction baseAction, int i2) {
                ActionWrapper.this.l(i2);
                if (i2 == Integer.MAX_VALUE) {
                    baseAction.k(this);
                }
            }
        });
        n().i(actionHolder);
    }

    public abstract BaseAction n();
}

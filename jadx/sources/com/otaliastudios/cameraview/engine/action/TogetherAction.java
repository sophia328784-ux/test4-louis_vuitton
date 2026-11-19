package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class TogetherAction extends BaseAction {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f38903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f38904f;

    public TogetherAction(List list) {
        this.f38903e = new ArrayList(list);
        this.f38904f = new ArrayList(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((BaseAction) it.next()).e(new ActionCallback() { // from class: com.otaliastudios.cameraview.engine.action.TogetherAction.1
                @Override // com.otaliastudios.cameraview.engine.action.ActionCallback
                public final void a(BaseAction baseAction, int i2) {
                    TogetherAction togetherAction = TogetherAction.this;
                    ArrayList arrayList = togetherAction.f38904f;
                    if (i2 == Integer.MAX_VALUE) {
                        arrayList.remove(baseAction);
                    }
                    if (arrayList.isEmpty()) {
                        togetherAction.l(Integer.MAX_VALUE);
                    }
                }
            });
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        for (BaseAction baseAction : this.f38903e) {
            if (!baseAction.f()) {
                baseAction.b(actionHolder, captureRequest, totalCaptureResult);
            }
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void c(ActionHolder actionHolder, CaptureRequest captureRequest) {
        super.c(actionHolder, captureRequest);
        for (BaseAction baseAction : this.f38903e) {
            if (!baseAction.f()) {
                baseAction.c(actionHolder, captureRequest);
            }
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void d(ActionHolder actionHolder, CaptureRequest captureRequest, CaptureResult captureResult) {
        for (BaseAction baseAction : this.f38903e) {
            if (!baseAction.f()) {
                baseAction.d(actionHolder, captureRequest, captureResult);
            }
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void g(ActionHolder actionHolder) {
        for (BaseAction baseAction : this.f38903e) {
            if (!baseAction.f()) {
                baseAction.g(actionHolder);
            }
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        for (BaseAction baseAction : this.f38903e) {
            if (!baseAction.f()) {
                baseAction.i(actionHolder);
            }
        }
    }
}

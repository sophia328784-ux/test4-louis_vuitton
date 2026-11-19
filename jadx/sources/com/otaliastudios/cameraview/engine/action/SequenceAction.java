package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class SequenceAction extends BaseAction {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f38898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f38899f = -1;

    public SequenceAction(List list) {
        this.f38898e = list;
        n();
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        int i2 = this.f38899f;
        if (i2 >= 0) {
            ((BaseAction) this.f38898e.get(i2)).b(actionHolder, captureRequest, totalCaptureResult);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void c(ActionHolder actionHolder, CaptureRequest captureRequest) {
        super.c(actionHolder, captureRequest);
        int i2 = this.f38899f;
        if (i2 >= 0) {
            ((BaseAction) this.f38898e.get(i2)).c(actionHolder, captureRequest);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
    public final void d(ActionHolder actionHolder, CaptureRequest captureRequest, CaptureResult captureResult) {
        int i2 = this.f38899f;
        if (i2 >= 0) {
            ((BaseAction) this.f38898e.get(i2)).d(actionHolder, captureRequest, captureResult);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void g(ActionHolder actionHolder) {
        int i2 = this.f38899f;
        if (i2 >= 0) {
            ((BaseAction) this.f38898e.get(i2)).g(actionHolder);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        int i2 = this.f38899f;
        if (i2 >= 0) {
            ((BaseAction) this.f38898e.get(i2)).i(actionHolder);
        }
    }

    public final void n() {
        int i2 = this.f38899f;
        boolean z = i2 == -1;
        List list = this.f38898e;
        if (i2 == list.size() - 1) {
            l(Integer.MAX_VALUE);
            return;
        }
        int i3 = this.f38899f + 1;
        this.f38899f = i3;
        ((BaseAction) list.get(i3)).e(new ActionCallback() { // from class: com.otaliastudios.cameraview.engine.action.SequenceAction.1
            @Override // com.otaliastudios.cameraview.engine.action.ActionCallback
            public final void a(BaseAction baseAction, int i4) {
                if (i4 == Integer.MAX_VALUE) {
                    baseAction.k(this);
                    SequenceAction.this.n();
                }
            }
        });
        if (z) {
            return;
        }
        ((BaseAction) list.get(this.f38899f)).i(this.f38895c);
    }
}

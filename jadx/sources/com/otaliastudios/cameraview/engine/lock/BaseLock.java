package com.otaliastudios.cameraview.engine.lock;

import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.BaseAction;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseLock extends BaseAction {
    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        boolean zO = o(actionHolder);
        if (!n(actionHolder) || zO) {
            l(Integer.MAX_VALUE);
        } else {
            p(actionHolder);
        }
    }

    public abstract boolean n(ActionHolder actionHolder);

    public abstract boolean o(ActionHolder actionHolder);

    public abstract void p(ActionHolder actionHolder);
}

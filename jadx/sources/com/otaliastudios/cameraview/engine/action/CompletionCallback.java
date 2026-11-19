package com.otaliastudios.cameraview.engine.action;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CompletionCallback implements ActionCallback {
    @Override // com.otaliastudios.cameraview.engine.action.ActionCallback
    public final void a(BaseAction baseAction, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            b();
        }
    }

    public abstract void b();
}

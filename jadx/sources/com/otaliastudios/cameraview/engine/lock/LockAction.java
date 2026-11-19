package com.otaliastudios.cameraview.engine.lock;

import com.otaliastudios.cameraview.engine.action.ActionWrapper;
import com.otaliastudios.cameraview.engine.action.Actions;
import com.otaliastudios.cameraview.engine.action.BaseAction;

/* JADX INFO: loaded from: classes3.dex */
public class LockAction extends ActionWrapper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BaseAction f38908e = Actions.c(new ExposureLock(), new FocusLock(), new WhiteBalanceLock());

    @Override // com.otaliastudios.cameraview.engine.action.ActionWrapper
    public final BaseAction n() {
        return this.f38908e;
    }
}

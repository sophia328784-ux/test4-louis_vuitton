package com.otaliastudios.cameraview.engine.meter;

import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.BaseAction;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseMeter extends BaseAction {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final CameraLogger f38918h = CameraLogger.a("BaseMeter");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f38919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f38920f;
    public final boolean g;

    public BaseMeter(List list, boolean z) {
        this.f38919e = list;
        this.g = z;
    }

    @Override // com.otaliastudios.cameraview.engine.action.BaseAction
    public final void i(ActionHolder actionHolder) {
        this.f38895c = actionHolder;
        boolean z = this.g && o(actionHolder);
        boolean zN = n(actionHolder);
        CameraLogger cameraLogger = f38918h;
        if (zN && !z) {
            cameraLogger.b(1, "onStart:", "supported and not skipped. Dispatching onStarted.");
            p(actionHolder, this.f38919e);
        } else {
            cameraLogger.b(1, "onStart:", "not supported or skipped. Dispatching COMPLETED state.");
            this.f38920f = true;
            l(Integer.MAX_VALUE);
        }
    }

    public abstract boolean n(ActionHolder actionHolder);

    public abstract boolean o(ActionHolder actionHolder);

    public abstract void p(ActionHolder actionHolder, List list);
}

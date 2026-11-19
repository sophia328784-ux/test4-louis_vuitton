package com.sightcall.mediacapture.presenter;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/mediacapture/presenter/CameraActionsState;", "", "mainAction", "Lcom/sightcall/mediacapture/presenter/CameraAction;", "sideAction", "isRecoding", "", "isMaxDuration", "<init>", "(Lcom/sightcall/mediacapture/presenter/CameraAction;Lcom/sightcall/mediacapture/presenter/CameraAction;ZZ)V", "getMainAction", "()Lcom/sightcall/mediacapture/presenter/CameraAction;", "getSideAction", "()Z", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CameraActionsState {
    private final boolean isMaxDuration;
    private final boolean isRecoding;
    private final CameraAction mainAction;
    private final CameraAction sideAction;

    public CameraActionsState(CameraAction cameraAction, CameraAction cameraAction2, boolean z, boolean z2) {
        cameraAction.getClass();
        this.mainAction = cameraAction;
        this.sideAction = cameraAction2;
        this.isRecoding = z;
        this.isMaxDuration = z2;
    }

    public final CameraAction getMainAction() {
        return this.mainAction;
    }

    public final CameraAction getSideAction() {
        return this.sideAction;
    }

    /* JADX INFO: renamed from: isMaxDuration, reason: from getter */
    public final boolean getIsMaxDuration() {
        return this.isMaxDuration;
    }

    /* JADX INFO: renamed from: isRecoding, reason: from getter */
    public final boolean getIsRecoding() {
        return this.isRecoding;
    }
}

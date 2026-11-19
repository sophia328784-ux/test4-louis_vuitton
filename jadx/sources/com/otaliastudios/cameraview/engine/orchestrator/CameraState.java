package com.otaliastudios.cameraview.engine.orchestrator;

/* JADX INFO: loaded from: classes3.dex */
public enum CameraState {
    OFF(0),
    ENGINE(1),
    BIND(2),
    PREVIEW(3);

    private int mState;

    CameraState(int i2) {
        this.mState = i2;
    }

    public final boolean a(CameraState cameraState) {
        return this.mState >= cameraState.mState;
    }
}

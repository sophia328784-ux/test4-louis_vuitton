package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes3.dex */
public interface ActionHolder {
    CaptureRequest.Builder a();

    void c(BaseAction baseAction);

    void d(CaptureRequest.Builder builder);

    void e();

    CameraCharacteristics i();

    TotalCaptureResult k();

    void l(BaseAction baseAction);
}

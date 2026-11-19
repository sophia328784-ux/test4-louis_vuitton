package com.otaliastudios.cameraview.engine.action;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes3.dex */
public interface Action {
    void a(ActionHolder actionHolder);

    void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);

    void c(ActionHolder actionHolder, CaptureRequest captureRequest);

    void d(ActionHolder actionHolder, CaptureRequest captureRequest, CaptureResult captureResult);
}

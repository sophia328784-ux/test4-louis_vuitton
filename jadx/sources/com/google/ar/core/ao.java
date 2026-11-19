package com.google.ar.core;

import android.hardware.camera2.CameraCaptureSession;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
final class ao extends CameraCaptureSession.StateCallback {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Handler f33404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CameraCaptureSession.StateCallback f33405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedCamera f33406c;

    public ao(SharedCamera sharedCamera, Handler handler, CameraCaptureSession.StateCallback stateCallback) {
        this.f33404a = handler;
        this.f33405b = stateCallback;
        this.f33406c = sharedCamera;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onActive(CameraCaptureSession cameraCaptureSession) {
        this.f33404a.post(new al(this.f33405b, cameraCaptureSession, 6));
        this.f33406c.g(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onClosed(CameraCaptureSession cameraCaptureSession) {
        this.f33404a.post(new al(this.f33405b, cameraCaptureSession, 7));
        this.f33406c.h(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        this.f33404a.post(new al(this.f33405b, cameraCaptureSession, 4));
        this.f33406c.i(cameraCaptureSession);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
        this.f33404a.post(new al(this.f33405b, cameraCaptureSession, 3));
        SharedCamera sharedCamera = this.f33406c;
        sharedCamera.j(cameraCaptureSession);
        if (sharedCamera.n().f33408a != null) {
            sharedCamera.c();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onReady(CameraCaptureSession cameraCaptureSession) {
        this.f33404a.post(new al(this.f33405b, cameraCaptureSession, 5));
        this.f33406c.k(cameraCaptureSession);
    }
}

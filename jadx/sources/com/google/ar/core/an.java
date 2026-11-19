package com.google.ar.core;

import android.hardware.camera2.CameraDevice;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
final class an extends CameraDevice.StateCallback {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Handler f33401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CameraDevice.StateCallback f33402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedCamera f33403c;

    public an(SharedCamera sharedCamera, Handler handler, CameraDevice.StateCallback stateCallback) {
        this.f33401a = handler;
        this.f33402b = stateCallback;
        this.f33403c = sharedCamera;
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onClosed(CameraDevice cameraDevice) {
        this.f33401a.post(new al(this.f33402b, cameraDevice, 2));
        this.f33403c.e(cameraDevice);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onDisconnected(CameraDevice cameraDevice) {
        this.f33401a.post(new al(this.f33402b, cameraDevice, 0));
        this.f33403c.f(cameraDevice);
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onError(final CameraDevice cameraDevice, final int i2) {
        final CameraDevice.StateCallback stateCallback = this.f33402b;
        this.f33401a.post(new Runnable() { // from class: com.google.ar.core.am
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                int i3 = an.d;
                stateCallback.onError(cameraDevice, i2);
            }
        });
        this.f33403c.b();
    }

    @Override // android.hardware.camera2.CameraDevice.StateCallback
    public final void onOpened(CameraDevice cameraDevice) {
        SharedCamera sharedCamera = this.f33403c;
        sharedCamera.n().f33408a = cameraDevice;
        this.f33401a.post(new al(this.f33402b, cameraDevice, 1));
        sharedCamera.d(cameraDevice);
        sharedCamera.n().f33410c = sharedCamera.l();
        sharedCamera.n().d = sharedCamera.m();
    }
}

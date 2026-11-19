package com.google.ar.core;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class al implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f33395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Object f33396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f33397c;

    public /* synthetic */ al(Object obj, Object obj2, int i2) {
        this.f33395a = i2;
        this.f33396b = obj;
        this.f33397c = obj2;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        switch (this.f33395a) {
            case 0:
                int i2 = an.d;
                ((CameraDevice.StateCallback) this.f33396b).onDisconnected((CameraDevice) this.f33397c);
                break;
            case 1:
                int i3 = an.d;
                ((CameraDevice.StateCallback) this.f33396b).onOpened((CameraDevice) this.f33397c);
                break;
            case 2:
                int i4 = an.d;
                ((CameraDevice.StateCallback) this.f33396b).onClosed((CameraDevice) this.f33397c);
                break;
            case 3:
                int i5 = ao.d;
                ((CameraCaptureSession.StateCallback) this.f33396b).onConfigured((CameraCaptureSession) this.f33397c);
                break;
            case 4:
                int i6 = ao.d;
                ((CameraCaptureSession.StateCallback) this.f33396b).onConfigureFailed((CameraCaptureSession) this.f33397c);
                break;
            case 5:
                int i7 = ao.d;
                ((CameraCaptureSession.StateCallback) this.f33396b).onReady((CameraCaptureSession) this.f33397c);
                break;
            case 6:
                int i8 = ao.d;
                ((CameraCaptureSession.StateCallback) this.f33396b).onActive((CameraCaptureSession) this.f33397c);
                break;
            default:
                int i9 = ao.d;
                ((CameraCaptureSession.StateCallback) this.f33396b).onClosed((CameraCaptureSession) this.f33397c);
                break;
        }
    }
}

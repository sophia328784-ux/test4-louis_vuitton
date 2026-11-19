package defpackage;

import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ki implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraControl f71657c;

    public /* synthetic */ ki(Camera2CameraControl camera2CameraControl, int i2) {
        this.f71656b = i2;
        this.f71657c = camera2CameraControl;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f71656b;
        final Camera2CameraControl camera2CameraControl = this.f71657c;
        switch (i2) {
            case 0:
                final int i3 = 1;
                camera2CameraControl.d.execute(new Runnable() { // from class: li
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        int i5 = 14;
                        int i6 = 12;
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        Camera2CameraControl camera2CameraControl2 = camera2CameraControl;
                        switch (i4) {
                            case 0:
                                camera2CameraControl2.f1849b = true;
                                CameraControl.OperationCanceledException operationCanceledException = new CameraControl.OperationCanceledException("Camera2CameraControl was updated with new options.");
                                CallbackToFutureAdapter.Completer completer3 = camera2CameraControl2.g;
                                if (completer3 != null) {
                                    completer3.d(operationCanceledException);
                                    camera2CameraControl2.g = null;
                                }
                                camera2CameraControl2.g = completer2;
                                if (camera2CameraControl2.f1848a) {
                                    Camera2CameraControlImpl camera2CameraControlImpl = camera2CameraControl2.f1850c;
                                    camera2CameraControlImpl.getClass();
                                    Futures.h(CallbackToFutureAdapter.a(new s3(camera2CameraControlImpl, i6))).addListener(new z1(camera2CameraControl2, i5), camera2CameraControl2.d);
                                    camera2CameraControl2.f1849b = false;
                                }
                                break;
                            default:
                                camera2CameraControl2.f1849b = true;
                                CameraControl.OperationCanceledException operationCanceledException2 = new CameraControl.OperationCanceledException("Camera2CameraControl was updated with new options.");
                                CallbackToFutureAdapter.Completer completer4 = camera2CameraControl2.g;
                                if (completer4 != null) {
                                    completer4.d(operationCanceledException2);
                                    camera2CameraControl2.g = null;
                                }
                                camera2CameraControl2.g = completer2;
                                if (camera2CameraControl2.f1848a) {
                                    Camera2CameraControlImpl camera2CameraControlImpl2 = camera2CameraControl2.f1850c;
                                    camera2CameraControlImpl2.getClass();
                                    Futures.h(CallbackToFutureAdapter.a(new s3(camera2CameraControlImpl2, i6))).addListener(new z1(camera2CameraControl2, i5), camera2CameraControl2.d);
                                    camera2CameraControl2.f1849b = false;
                                }
                                break;
                        }
                    }
                });
                return "addCaptureRequestOptions";
            default:
                final int i4 = 0;
                camera2CameraControl.d.execute(new Runnable() { // from class: li
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        int i6 = 14;
                        int i7 = 12;
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        Camera2CameraControl camera2CameraControl2 = camera2CameraControl;
                        switch (i5) {
                            case 0:
                                camera2CameraControl2.f1849b = true;
                                CameraControl.OperationCanceledException operationCanceledException = new CameraControl.OperationCanceledException("Camera2CameraControl was updated with new options.");
                                CallbackToFutureAdapter.Completer completer3 = camera2CameraControl2.g;
                                if (completer3 != null) {
                                    completer3.d(operationCanceledException);
                                    camera2CameraControl2.g = null;
                                }
                                camera2CameraControl2.g = completer2;
                                if (camera2CameraControl2.f1848a) {
                                    Camera2CameraControlImpl camera2CameraControlImpl = camera2CameraControl2.f1850c;
                                    camera2CameraControlImpl.getClass();
                                    Futures.h(CallbackToFutureAdapter.a(new s3(camera2CameraControlImpl, i7))).addListener(new z1(camera2CameraControl2, i6), camera2CameraControl2.d);
                                    camera2CameraControl2.f1849b = false;
                                }
                                break;
                            default:
                                camera2CameraControl2.f1849b = true;
                                CameraControl.OperationCanceledException operationCanceledException2 = new CameraControl.OperationCanceledException("Camera2CameraControl was updated with new options.");
                                CallbackToFutureAdapter.Completer completer4 = camera2CameraControl2.g;
                                if (completer4 != null) {
                                    completer4.d(operationCanceledException2);
                                    camera2CameraControl2.g = null;
                                }
                                camera2CameraControl2.g = completer2;
                                if (camera2CameraControl2.f1848a) {
                                    Camera2CameraControlImpl camera2CameraControlImpl2 = camera2CameraControl2.f1850c;
                                    camera2CameraControlImpl2.getClass();
                                    Futures.h(CallbackToFutureAdapter.a(new s3(camera2CameraControlImpl2, i7))).addListener(new z1(camera2CameraControl2, i6), camera2CameraControl2.d);
                                    camera2CameraControl2.f1849b = false;
                                }
                                break;
                        }
                    }
                });
                return "clearCaptureRequestOptions";
        }
    }
}

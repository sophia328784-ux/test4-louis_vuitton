package androidx.camera.camera2.internal;

import androidx.camera.core.CameraState;
import androidx.camera.core.impl.CameraInternal;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraImpl f1812c;

    public /* synthetic */ g(Camera2CameraImpl camera2CameraImpl, int i2) {
        this.f1811b = i2;
        this.f1812c = camera2CameraImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f1811b;
        Camera2CameraImpl camera2CameraImpl = this.f1812c;
        switch (i2) {
            case 0:
                camera2CameraImpl.w("Camera is removed. Updating state and cleaning up.");
                Camera2CameraImpl.InternalState internalState = camera2CameraImpl.f1441f;
                Camera2CameraImpl.InternalState internalState2 = Camera2CameraImpl.InternalState.RELEASING;
                if (internalState != internalState2 && camera2CameraImpl.f1441f != Camera2CameraImpl.InternalState.RELEASED) {
                    CameraState.StateError stateErrorA = CameraState.StateError.a(8);
                    camera2CameraImpl.f1442h.a(CameraInternal.State.CLOSED, stateErrorA);
                    camera2CameraImpl.H(internalState2, stateErrorA, true);
                    camera2CameraImpl.f1444j.a();
                    camera2CameraImpl.N.a();
                    if (camera2CameraImpl.l == null) {
                        camera2CameraImpl.x();
                    } else {
                        camera2CameraImpl.t();
                    }
                    break;
                }
                break;
            default:
                camera2CameraImpl.A = false;
                camera2CameraImpl.z = false;
                camera2CameraImpl.w("OpenCameraConfigAndClose is done, state: " + camera2CameraImpl.f1441f);
                int iOrdinal = camera2CameraImpl.f1441f.ordinal();
                if (iOrdinal == 1 || iOrdinal == 5) {
                    Preconditions.f(null, camera2CameraImpl.r.isEmpty());
                    camera2CameraImpl.x();
                } else if (iOrdinal == 7) {
                    int i3 = camera2CameraImpl.m;
                    if (i3 == 0) {
                        camera2CameraImpl.L(false);
                    } else {
                        camera2CameraImpl.w("OpenCameraConfigAndClose in error: ".concat(Camera2CameraImpl.y(i3)));
                        camera2CameraImpl.f1444j.b();
                    }
                } else {
                    camera2CameraImpl.w("OpenCameraConfigAndClose finished while in state: " + camera2CameraImpl.f1441f);
                }
                break;
        }
    }
}

package androidx.camera.core.impl;

import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public interface CameraInternal extends Camera, UseCase.StateChangeCallback {

    public enum State {
        RELEASED(false),
        RELEASING(true),
        CLOSED(false),
        PENDING_OPEN(false),
        CLOSING(true),
        OPENING(true),
        OPEN(true),
        CONFIGURED(true);

        private final boolean mHoldsCameraSlot;

        State(boolean z) {
            this.mHoldsCameraSlot = z;
        }

        public final boolean a() {
            return this.mHoldsCameraSlot;
        }
    }

    @Override // androidx.camera.core.Camera
    default CameraControl a() {
        return f();
    }

    @Override // androidx.camera.core.Camera
    default CameraInfo b() {
        return k();
    }

    Observable c();

    CameraControlInternal f();

    default CameraConfig g() {
        return CameraConfigs.f2229a;
    }

    default void h(boolean z) {
    }

    void i(Collection collection);

    void j(Collection collection);

    CameraInfoInternal k();

    default boolean l() {
        return b().g() == 0;
    }

    default void n(CameraConfig cameraConfig) {
    }

    default void o() {
    }

    default boolean p() {
        return true;
    }

    default void q(boolean z) {
    }

    ListenableFuture release();
}

package androidx.camera.core.streamsharing;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.Threads;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
class VirtualCamera implements CameraInternal {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraInternal f2652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VirtualCameraControl f2653c;
    public final VirtualCameraInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UseCase.StateChangeCallback f2654e;

    public VirtualCamera(CameraInternal cameraInternal, UseCase.StateChangeCallback stateChangeCallback, a aVar) {
        this.f2652b = cameraInternal;
        this.f2654e = stateChangeCallback;
        this.f2653c = new VirtualCameraControl(cameraInternal.f(), aVar);
        this.d = new VirtualCameraInfo(cameraInternal.k());
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final Observable c() {
        return this.f2652b.c();
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void d(UseCase useCase) {
        Threads.a();
        ((VirtualCameraAdapter) this.f2654e).d(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void e(UseCase useCase) {
        Threads.a();
        ((VirtualCameraAdapter) this.f2654e).e(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraControlInternal f() {
        return this.f2653c;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void i(Collection collection) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void j(Collection collection) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraInfoInternal k() {
        return this.d;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void m(UseCase useCase) {
        Threads.a();
        ((VirtualCameraAdapter) this.f2654e).m(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final boolean p() {
        return false;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void r(UseCase useCase) {
        Threads.a();
        ((VirtualCameraAdapter) this.f2654e).r(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final ListenableFuture release() {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }
}

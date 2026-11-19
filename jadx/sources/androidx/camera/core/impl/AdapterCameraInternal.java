package androidx.camera.core.impl;

import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class AdapterCameraInternal implements CameraInternal {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraInternal f2159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdapterCameraInfo f2160c;
    public final AdapterCameraControl d;

    public AdapterCameraInternal(CameraInternal cameraInternal, AdapterCameraInfo adapterCameraInfo) {
        this.f2159b = cameraInternal;
        this.f2160c = adapterCameraInfo;
        this.d = new AdapterCameraControl(cameraInternal.f(), adapterCameraInfo.d.x());
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public final CameraControl a() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public final CameraInfo b() {
        return this.f2160c;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final Observable c() {
        return this.f2159b.c();
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void d(UseCase useCase) {
        this.f2159b.d(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void e(UseCase useCase) {
        this.f2159b.e(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraControlInternal f() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraConfig g() {
        return this.f2159b.g();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void h(boolean z) {
        this.f2159b.h(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void i(Collection collection) {
        this.f2159b.i(collection);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void j(Collection collection) {
        this.f2159b.j(collection);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraInfoInternal k() {
        return this.f2160c;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final boolean l() {
        return this.f2159b.l();
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void m(UseCase useCase) {
        this.f2159b.m(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void n(CameraConfig cameraConfig) {
        this.f2159b.n(cameraConfig);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final boolean p() {
        return this.f2159b.p();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void q(boolean z) {
        this.f2159b.q(z);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void r(UseCase useCase) {
        this.f2159b.r(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final ListenableFuture release() {
        return this.f2159b.release();
    }
}

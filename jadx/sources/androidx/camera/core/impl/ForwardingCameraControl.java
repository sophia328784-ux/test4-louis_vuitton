package androidx.camera.core.impl;

import androidx.camera.core.ImageCapture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingCameraControl implements CameraControlInternal {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraControlInternal f2301b;

    public ForwardingCameraControl(CameraControlInternal cameraControlInternal) {
        this.f2301b = cameraControlInternal;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void a() {
        this.f2301b.a();
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture b(float f2) {
        return this.f2301b.b(f2);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void c(int i2) {
        this.f2301b.c(i2);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture d(boolean z) {
        return this.f2301b.d(z);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final Config e() {
        return this.f2301b.e();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void f() {
        this.f2301b.f();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void g(Config config) {
        this.f2301b.g(config);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void h() {
        this.f2301b.h();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void i(SessionConfig.Builder builder) {
        this.f2301b.i(builder);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public ListenableFuture j(int i2, int i3, List list) {
        return this.f2301b.j(i2, i3, list);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void k(ImageCapture.ScreenFlash screenFlash) {
        this.f2301b.k(screenFlash);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void l() {
        this.f2301b.l();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final ListenableFuture m(int i2) {
        return this.f2301b.m(i2);
    }
}

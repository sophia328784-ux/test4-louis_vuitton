package androidx.camera.core.impl;

import android.graphics.Rect;
import android.util.Range;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.lifecycle.LiveData;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingCameraInfo implements CameraInfoInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraInfoInternal f2302a;

    public ForwardingCameraInfo(CameraInfoInternal cameraInfoInternal) {
        this.f2302a = cameraInfoInternal;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set a() {
        return this.f2302a.a();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public String b() {
        return this.f2302a.b();
    }

    @Override // androidx.camera.core.CameraInfo
    public final LiveData c() {
        return this.f2302a.c();
    }

    @Override // androidx.camera.core.CameraInfo
    public int d() {
        return this.f2302a.d();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void e(Executor executor, CameraCaptureCallback cameraCaptureCallback) {
        this.f2302a.e(executor, cameraCaptureCallback);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Rect f() {
        return this.f2302a.f();
    }

    @Override // androidx.camera.core.CameraInfo
    public final int g() {
        return this.f2302a.g();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public CameraInfoInternal getImplementation() {
        return this.f2302a.getImplementation();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Object h() {
        return this.f2302a.h();
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean i() {
        return this.f2302a.i();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Quirks j() {
        return this.f2302a.j();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List k(int i2) {
        return this.f2302a.k(i2);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set l() {
        return this.f2302a.l();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void m(CameraCaptureCallback cameraCaptureCallback) {
        this.f2302a.m(cameraCaptureCallback);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean n() {
        return this.f2302a.n();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List p(Range range) {
        return this.f2302a.p(range);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final boolean q() {
        return this.f2302a.q();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Timebase r() {
        return this.f2302a.r();
    }

    @Override // androidx.camera.core.CameraInfo
    public final String s() {
        return this.f2302a.s();
    }

    @Override // androidx.camera.core.CameraInfo
    public int t(int i2) {
        return this.f2302a.t(i2);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final EncoderProfilesProvider u() {
        return this.f2302a.u();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List v() {
        return this.f2302a.v();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData w() {
        return this.f2302a.w();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void x(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider) {
        this.f2302a.x(cameraUseCaseAdapterProvider);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set y() {
        return this.f2302a.y();
    }
}

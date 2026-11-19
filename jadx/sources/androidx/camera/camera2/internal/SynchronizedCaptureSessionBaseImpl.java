package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
abstract class SynchronizedCaptureSessionBaseImpl extends SynchronizedCaptureSession.StateCallback implements SynchronizedCaptureSession, SynchronizedCaptureSession.Opener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CaptureSessionRepository f1635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f1636c;
    public final ScheduledExecutorService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SynchronizedCaptureSession.StateCallback f1637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CameraCaptureSessionCompat f1638f;
    public ListenableFuture g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f1639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FutureChain f1640i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1634a = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f1641j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1642k = false;
    public boolean l = false;
    public boolean m = false;

    public SynchronizedCaptureSessionBaseImpl(CaptureSessionRepository captureSessionRepository, Executor executor, ScheduledExecutorService scheduledExecutorService, Handler handler) {
        this.f1635b = captureSessionRepository;
        this.f1636c = executor;
        this.d = scheduledExecutorService;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final void a() throws CameraAccessException {
        Preconditions.e(this.f1638f, "Need to call openCaptureSession before using this API.");
        this.f1638f.d().stopRepeating();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public abstract void b();

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final CameraDevice d() {
        this.f1638f.getClass();
        return this.f1638f.d().getDevice();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final List f(CaptureRequest captureRequest) {
        CameraCaptureSessionCompat cameraCaptureSessionCompat = this.f1638f;
        cameraCaptureSessionCompat.getClass();
        CameraCaptureSession cameraCaptureSessionD = cameraCaptureSessionCompat.d();
        return cameraCaptureSessionD instanceof CameraConstrainedHighSpeedCaptureSession ? ((CameraConstrainedHighSpeedCaptureSession) cameraCaptureSessionD).createHighSpeedRequestList(captureRequest) : Collections.EMPTY_LIST;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final int g(List list, CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.e(this.f1638f, "Need to call openCaptureSession before using this API.");
        return this.f1638f.b(list, this.f1636c, captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final CameraCaptureSessionCompat i() {
        this.f1638f.getClass();
        return this.f1638f;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final SynchronizedCaptureSession.StateCallback j() {
        return this;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void l(SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.f1637e);
        this.f1637e.l(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void m(SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.f1637e);
        this.f1637e.m(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public abstract void n(SynchronizedCaptureSession synchronizedCaptureSession);

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void o(SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.f1637e);
        b();
        CaptureSessionRepository captureSessionRepository = this.f1635b;
        captureSessionRepository.a(this);
        synchronized (captureSessionRepository.f1556b) {
            captureSessionRepository.f1558e.remove(this);
        }
        this.f1637e.o(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public abstract void p(SynchronizedCaptureSession synchronizedCaptureSession);

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void q(SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.f1637e);
        this.f1637e.q(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void r(SynchronizedCaptureSession synchronizedCaptureSession) {
        ListenableFuture listenableFuture;
        synchronized (this.f1634a) {
            try {
                if (this.m) {
                    listenableFuture = null;
                } else {
                    this.m = true;
                    Preconditions.e(this.g, "Need to call openCaptureSession before using this API.");
                    listenableFuture = this.g;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listenableFuture != null) {
            listenableFuture.addListener(new d(this, synchronizedCaptureSession, 7), CameraXExecutors.a());
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void s(SynchronizedCaptureSession synchronizedCaptureSession, Surface surface) {
        Objects.requireNonNull(this.f1637e);
        this.f1637e.s(synchronizedCaptureSession, surface);
    }

    public final void t(CameraCaptureSession cameraCaptureSession) {
        if (this.f1638f == null) {
            this.f1638f = new CameraCaptureSessionCompat(cameraCaptureSession);
        }
    }

    public final boolean u() {
        boolean z;
        synchronized (this.f1634a) {
            z = this.g != null;
        }
        return z;
    }

    public ListenableFuture v(ArrayList arrayList) {
        synchronized (this.f1634a) {
            try {
                if (this.l) {
                    return Futures.e(new CancellationException("Opener is disabled"));
                }
                FutureChain futureChainTransformAsync = FutureChain.from(DeferrableSurfaces.c(arrayList, this.f1636c, this.d)).transformAsync(new j(this, arrayList, 3), this.f1636c);
                this.f1640i = futureChainTransformAsync;
                return Futures.h(futureChainTransformAsync);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

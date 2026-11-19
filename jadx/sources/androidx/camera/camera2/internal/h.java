package androidx.camera.camera2.internal;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.uvc.Camera;
import defpackage.fc;
import defpackage.pq0;
import defpackage.q00;
import defpackage.r6;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements CallbackToFutureAdapter.Resolver, MeteringRepeatingSession.SurfaceResetCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CameraImpl f1814c;

    public /* synthetic */ h(Camera2CameraImpl camera2CameraImpl, int i2) {
        this.f1813b = i2;
        this.f1814c = camera2CameraImpl;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f1813b;
        char c2 = 1;
        final int i3 = 0;
        final Camera2CameraImpl camera2CameraImpl = this.f1814c;
        switch (i2) {
            case 0:
                try {
                    ArrayList arrayList = new ArrayList(camera2CameraImpl.f1438b.b().b().f2327c);
                    arrayList.add(camera2CameraImpl.D.f1559f);
                    arrayList.add(new CameraDevice.StateCallback() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.2
                        @Override // android.hardware.camera2.CameraDevice.StateCallback
                        public final void onClosed(CameraDevice cameraDevice) {
                            Camera2CameraImpl.this.w("openCameraConfigAndClose camera closed");
                            completer.b(null);
                        }

                        @Override // android.hardware.camera2.CameraDevice.StateCallback
                        public final void onDisconnected(CameraDevice cameraDevice) {
                            Camera2CameraImpl.this.w("openCameraConfigAndClose camera disconnected");
                            completer.b(null);
                        }

                        @Override // android.hardware.camera2.CameraDevice.StateCallback
                        public final void onError(CameraDevice cameraDevice, int i4) {
                            Camera2CameraImpl.this.w(pq0.k(i4, "openCameraConfigAndClose camera error "));
                            completer.b(null);
                        }

                        @Override // android.hardware.camera2.CameraDevice.StateCallback
                        public final void onOpened(CameraDevice cameraDevice) {
                            Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                            camera2CameraImpl2.w("openCameraConfigAndClose camera opened");
                            CaptureSession captureSession = new CaptureSession(camera2CameraImpl2.L, new Quirks(Collections.EMPTY_LIST), false, null);
                            SurfaceTexture surfaceTexture = new SurfaceTexture(0);
                            surfaceTexture.setDefaultBufferSize(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT);
                            Surface surface = new Surface(surfaceTexture);
                            ImmediateSurface immediateSurface = new ImmediateSurface(surface);
                            Futures.h(immediateSurface.f2290e).addListener(new r6(surface, surfaceTexture, 10), CameraXExecutors.a());
                            SessionConfig.Builder builder = new SessionConfig.Builder();
                            builder.f(immediateSurface, DynamicRange.d);
                            builder.w(1);
                            camera2CameraImpl2.w("Start configAndClose.");
                            SessionConfig sessionConfigK = builder.k();
                            SynchronizedCaptureSession.OpenerBuilder openerBuilder = camera2CameraImpl2.E;
                            Quirks quirks = openerBuilder.f1632e;
                            Quirks quirks2 = openerBuilder.f1633f;
                            FutureChain futureChainFrom = FutureChain.from(CallbackToFutureAdapter.a(new q00(captureSession.a(sessionConfigK, cameraDevice, new SynchronizedCaptureSessionImpl(openerBuilder.f1631c, openerBuilder.d, quirks, quirks2, openerBuilder.f1629a, openerBuilder.f1630b)), 1)));
                            j jVar = new j(captureSession, immediateSurface, 0);
                            Executor executor = camera2CameraImpl2.d;
                            FutureChain futureChainTransformAsync = futureChainFrom.transformAsync(jVar, executor);
                            Objects.requireNonNull(cameraDevice);
                            futureChainTransformAsync.addListener(new z1(cameraDevice, 15), executor);
                        }
                    });
                    camera2CameraImpl.f1439c.c(camera2CameraImpl.f1445k.f1470a, camera2CameraImpl.d, CameraDeviceStateCallbacks.a(arrayList));
                    return "configAndCloseTask";
                } catch (CameraAccessExceptionCompat | RuntimeException e2) {
                    camera2CameraImpl.w(fc.g(e2, new StringBuilder("Unable to open camera for configAndClose: ")));
                    completer.d(e2);
                    return "configAndCloseTask";
                }
            case 1:
            default:
                camera2CameraImpl.d.execute(new Runnable() { // from class: androidx.camera.camera2.internal.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode scheduleNode;
                        boolean z = false;
                        switch (i3) {
                            case 0:
                                Camera2CameraImpl camera2CameraImpl2 = camera2CameraImpl;
                                CallbackToFutureAdapter.Completer completer2 = completer;
                                if (camera2CameraImpl2.p == null) {
                                    if (camera2CameraImpl2.f1441f != Camera2CameraImpl.InternalState.RELEASED) {
                                        camera2CameraImpl2.p = CallbackToFutureAdapter.a(new h(camera2CameraImpl2, 2));
                                    } else {
                                        camera2CameraImpl2.p = Futures.g(null);
                                    }
                                }
                                ListenableFuture listenableFuture = camera2CameraImpl2.p;
                                switch (camera2CameraImpl2.f1441f.ordinal()) {
                                    case 1:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                        if (camera2CameraImpl2.f1444j.a() || ((scheduleNode = camera2CameraImpl2.N.f1457a) != null && !scheduleNode.f1460b.get())) {
                                            z = true;
                                        }
                                        camera2CameraImpl2.N.a();
                                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                        if (z) {
                                            Preconditions.f(null, camera2CameraImpl2.r.isEmpty());
                                            camera2CameraImpl2.u();
                                        }
                                        break;
                                    case 2:
                                    case 3:
                                    case 4:
                                        Preconditions.f(null, camera2CameraImpl2.l == null);
                                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                        Preconditions.f(null, camera2CameraImpl2.r.isEmpty());
                                        camera2CameraImpl2.u();
                                        break;
                                    case 9:
                                    case 10:
                                        camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                        camera2CameraImpl2.t();
                                        break;
                                    default:
                                        camera2CameraImpl2.w("release() ignored due to being in state: " + camera2CameraImpl2.f1441f);
                                        break;
                                }
                                Futures.i(completer2, listenableFuture);
                                break;
                            default:
                                Camera2CameraImpl camera2CameraImpl3 = camera2CameraImpl;
                                CallbackToFutureAdapter.Completer completer3 = completer;
                                MeteringRepeatingSession meteringRepeatingSession = camera2CameraImpl3.C;
                                completer3.b(Boolean.valueOf(meteringRepeatingSession != null ? camera2CameraImpl3.f1438b.e(Camera2CameraImpl.z(meteringRepeatingSession)) : false));
                                break;
                        }
                    }
                });
                return "Release[request=" + camera2CameraImpl.o.getAndIncrement() + "]";
            case 2:
                Preconditions.f("Camera can only be released once, so release completer should be null on creation.", camera2CameraImpl.q == null);
                camera2CameraImpl.q = completer;
                return "Release[camera=" + camera2CameraImpl + "]";
            case 3:
                try {
                    Executor executor = camera2CameraImpl.d;
                    final char c3 = c2 == true ? 1 : 0;
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            Camera2CameraImpl.ErrorTimeoutReopenScheduler.ScheduleNode scheduleNode;
                            boolean z = false;
                            switch (c3) {
                                case 0:
                                    Camera2CameraImpl camera2CameraImpl2 = camera2CameraImpl;
                                    CallbackToFutureAdapter.Completer completer2 = completer;
                                    if (camera2CameraImpl2.p == null) {
                                        if (camera2CameraImpl2.f1441f != Camera2CameraImpl.InternalState.RELEASED) {
                                            camera2CameraImpl2.p = CallbackToFutureAdapter.a(new h(camera2CameraImpl2, 2));
                                        } else {
                                            camera2CameraImpl2.p = Futures.g(null);
                                        }
                                    }
                                    ListenableFuture listenableFuture = camera2CameraImpl2.p;
                                    switch (camera2CameraImpl2.f1441f.ordinal()) {
                                        case 1:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            if (camera2CameraImpl2.f1444j.a() || ((scheduleNode = camera2CameraImpl2.N.f1457a) != null && !scheduleNode.f1460b.get())) {
                                                z = true;
                                            }
                                            camera2CameraImpl2.N.a();
                                            camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                            if (z) {
                                                Preconditions.f(null, camera2CameraImpl2.r.isEmpty());
                                                camera2CameraImpl2.u();
                                            }
                                            break;
                                        case 2:
                                        case 3:
                                        case 4:
                                            Preconditions.f(null, camera2CameraImpl2.l == null);
                                            camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                            Preconditions.f(null, camera2CameraImpl2.r.isEmpty());
                                            camera2CameraImpl2.u();
                                            break;
                                        case 9:
                                        case 10:
                                            camera2CameraImpl2.G(Camera2CameraImpl.InternalState.RELEASING);
                                            camera2CameraImpl2.t();
                                            break;
                                        default:
                                            camera2CameraImpl2.w("release() ignored due to being in state: " + camera2CameraImpl2.f1441f);
                                            break;
                                    }
                                    Futures.i(completer2, listenableFuture);
                                    break;
                                default:
                                    Camera2CameraImpl camera2CameraImpl3 = camera2CameraImpl;
                                    CallbackToFutureAdapter.Completer completer3 = completer;
                                    MeteringRepeatingSession meteringRepeatingSession = camera2CameraImpl3.C;
                                    completer3.b(Boolean.valueOf(meteringRepeatingSession != null ? camera2CameraImpl3.f1438b.e(Camera2CameraImpl.z(meteringRepeatingSession)) : false));
                                    break;
                            }
                        }
                    });
                    return "isMeteringRepeatingAttached";
                } catch (RejectedExecutionException unused) {
                    completer.d(new RuntimeException("Unable to check if MeteringRepeating is attached. Camera executor shut down."));
                    return "isMeteringRepeatingAttached";
                }
        }
    }
}

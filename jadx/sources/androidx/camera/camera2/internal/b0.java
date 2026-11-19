package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.CameraDeviceCompat;
import androidx.camera.camera2.internal.compat.params.SessionConfigurationCompat;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.OutputSurface;
import androidx.camera.core.impl.OutputSurfaceConfiguration;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b0 implements AsyncFunction, CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1687c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1689f;

    public /* synthetic */ b0(SynchronizedCaptureSessionImpl synchronizedCaptureSessionImpl, CameraDevice cameraDevice, SessionConfigurationCompat sessionConfigurationCompat, List list) {
        this.f1686b = 2;
        this.f1687c = synchronizedCaptureSessionImpl;
        this.f1688e = cameraDevice;
        this.d = sessionConfigurationCompat;
        this.f1689f = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        DeferrableSurface deferrableSurfaceF;
        OutputSurface outputSurfaceA;
        ListenableFuture listenableFutureH;
        switch (this.f1686b) {
            case 0:
                final ProcessingCaptureSession processingCaptureSession = (ProcessingCaptureSession) this.f1687c;
                SessionConfig sessionConfig = (SessionConfig) this.d;
                CameraDevice cameraDevice = (CameraDevice) this.f1688e;
                SynchronizedCaptureSession.Opener opener = (SynchronizedCaptureSession.Opener) this.f1689f;
                List list = (List) obj;
                Executor executor = processingCaptureSession.f1606b;
                Logger.c(3, "ProcessingCaptureSession");
                if (processingCaptureSession.f1611i == ProcessingCaptureSession.ProcessorState.DE_INITIALIZED) {
                    return Futures.e(new IllegalStateException("SessionProcessorCaptureSession is closed."));
                }
                if (list.contains(null)) {
                    return Futures.e(new DeferrableSurface.SurfaceClosedException("Surface closed", (DeferrableSurface) sessionConfig.b().get(list.indexOf(null))));
                }
                OutputSurface outputSurfaceA2 = null;
                OutputSurface outputSurfaceA3 = null;
                OutputSurface outputSurfaceA4 = null;
                for (int i2 = 0; i2 < sessionConfig.b().size(); i2++) {
                    DeferrableSurface deferrableSurface = (DeferrableSurface) sessionConfig.b().get(i2);
                    boolean zEquals = Objects.equals(deferrableSurface.f2294j, Preview.class);
                    int i3 = deferrableSurface.f2293i;
                    Size size = deferrableSurface.f2292h;
                    if (zEquals || Objects.equals(deferrableSurface.f2294j, StreamSharing.class)) {
                        outputSurfaceA2 = OutputSurface.a((Surface) deferrableSurface.c().get(), size, i3);
                    } else if (Objects.equals(deferrableSurface.f2294j, ImageCapture.class)) {
                        outputSurfaceA3 = OutputSurface.a((Surface) deferrableSurface.c().get(), size, i3);
                    } else if (Objects.equals(deferrableSurface.f2294j, ImageAnalysis.class)) {
                        outputSurfaceA4 = OutputSurface.a((Surface) deferrableSurface.c().get(), size, i3);
                    }
                }
                SessionConfig.OutputConfig outputConfig = sessionConfig.f2326b;
                if (outputConfig != null) {
                    deferrableSurfaceF = outputConfig.f();
                    outputSurfaceA = OutputSurface.a((Surface) deferrableSurfaceF.c().get(), deferrableSurfaceF.f2292h, deferrableSurfaceF.f2293i);
                } else {
                    deferrableSurfaceF = null;
                    outputSurfaceA = null;
                }
                processingCaptureSession.f1611i = ProcessingCaptureSession.ProcessorState.SESSION_INITIALIZED;
                try {
                    ArrayList arrayList = new ArrayList(processingCaptureSession.f1608e);
                    if (deferrableSurfaceF != null) {
                        arrayList.add(deferrableSurfaceF);
                    }
                    DeferrableSurfaces.b(arrayList);
                    Logger.c(5, "ProcessingCaptureSession");
                    try {
                        SessionProcessor sessionProcessor = processingCaptureSession.f1605a;
                        OutputSurfaceConfiguration.a(outputSurfaceA2, outputSurfaceA3, outputSurfaceA4, outputSurfaceA);
                        SessionConfig sessionConfigE = sessionProcessor.e();
                        processingCaptureSession.f1610h = sessionConfigE;
                        Futures.h(((DeferrableSurface) sessionConfigE.b().get(0)).f2290e).addListener(new d(processingCaptureSession, deferrableSurfaceF, 5), CameraXExecutors.a());
                        for (DeferrableSurface deferrableSurface2 : processingCaptureSession.f1610h.b()) {
                            ProcessingCaptureSession.m.add(deferrableSurface2);
                            Futures.h(deferrableSurface2.f2290e).addListener(new m(deferrableSurface2, 5), executor);
                        }
                        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
                        validatingBuilder.a(sessionConfig);
                        validatingBuilder.c();
                        validatingBuilder.a(processingCaptureSession.f1610h);
                        Preconditions.b(validatingBuilder.d(), "Cannot transform the SessionConfig");
                        SessionConfig sessionConfigB = validatingBuilder.b();
                        CaptureSession captureSession = processingCaptureSession.d;
                        cameraDevice.getClass();
                        ListenableFuture listenableFutureA = captureSession.a(sessionConfigB, cameraDevice, opener);
                        Futures.a(listenableFutureA, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.ProcessingCaptureSession.1
                            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                            public final void onFailure(Throwable th) {
                                Logger.b("ProcessingCaptureSession");
                                ProcessingCaptureSession processingCaptureSession2 = ProcessingCaptureSession.this;
                                processingCaptureSession2.close();
                                processingCaptureSession2.release();
                            }

                            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                            public final /* bridge */ /* synthetic */ void onSuccess(Object obj2) {
                            }
                        }, executor);
                        return listenableFutureA;
                    } catch (Throwable th) {
                        Logger.b("ProcessingCaptureSession");
                        DeferrableSurfaces.a(processingCaptureSession.f1608e);
                        if (deferrableSurfaceF != null) {
                            deferrableSurfaceF.b();
                        }
                        throw th;
                    }
                } catch (DeferrableSurface.SurfaceClosedException e2) {
                    return Futures.e(e2);
                }
            default:
                SynchronizedCaptureSessionImpl synchronizedCaptureSessionImpl = (SynchronizedCaptureSessionImpl) this.f1687c;
                CameraDevice cameraDevice2 = (CameraDevice) this.f1688e;
                SessionConfigurationCompat sessionConfigurationCompat = (SessionConfigurationCompat) this.d;
                List list2 = (List) this.f1689f;
                if (synchronizedCaptureSessionImpl.u.f1781a) {
                    Iterator it = synchronizedCaptureSessionImpl.f1635b.b().iterator();
                    while (it.hasNext()) {
                        ((SynchronizedCaptureSession) it.next()).close();
                    }
                }
                synchronizedCaptureSessionImpl.w();
                synchronized (synchronizedCaptureSessionImpl.f1634a) {
                    try {
                        if (synchronizedCaptureSessionImpl.l) {
                            listenableFutureH = Futures.e(new CancellationException("Opener is disabled"));
                        } else {
                            CaptureSessionRepository captureSessionRepository = synchronizedCaptureSessionImpl.f1635b;
                            synchronized (captureSessionRepository.f1556b) {
                                captureSessionRepository.f1558e.add(synchronizedCaptureSessionImpl);
                                break;
                            }
                            ListenableFuture listenableFutureA2 = CallbackToFutureAdapter.a(new b0(synchronizedCaptureSessionImpl, list2, new CameraDeviceCompat(cameraDevice2), sessionConfigurationCompat, 1));
                            synchronizedCaptureSessionImpl.g = listenableFutureA2;
                            Futures.a(listenableFutureA2, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl.1
                                public AnonymousClass1() {
                                }

                                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                                public final void onFailure(Throwable th2) {
                                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                                    synchronizedCaptureSessionBaseImpl.b();
                                    CaptureSessionRepository captureSessionRepository2 = synchronizedCaptureSessionBaseImpl.f1635b;
                                    captureSessionRepository2.a(synchronizedCaptureSessionBaseImpl);
                                    synchronized (captureSessionRepository2.f1556b) {
                                        captureSessionRepository2.f1558e.remove(synchronizedCaptureSessionBaseImpl);
                                    }
                                }

                                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                                public final /* bridge */ /* synthetic */ void onSuccess(Object obj2) {
                                }
                            }, CameraXExecutors.a());
                            listenableFutureH = Futures.h(synchronizedCaptureSessionImpl.g);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return listenableFutureH;
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        String str;
        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = (SynchronizedCaptureSessionBaseImpl) this.f1687c;
        List list = (List) this.d;
        CameraDeviceCompat cameraDeviceCompat = (CameraDeviceCompat) this.f1688e;
        SessionConfigurationCompat sessionConfigurationCompat = (SessionConfigurationCompat) this.f1689f;
        synchronized (synchronizedCaptureSessionBaseImpl.f1634a) {
            synchronized (synchronizedCaptureSessionBaseImpl.f1634a) {
                synchronized (synchronizedCaptureSessionBaseImpl.f1634a) {
                    try {
                        List list2 = synchronizedCaptureSessionBaseImpl.f1641j;
                        if (list2 != null) {
                            DeferrableSurfaces.a(list2);
                            synchronizedCaptureSessionBaseImpl.f1641j = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                DeferrableSurfaces.b(list);
                synchronizedCaptureSessionBaseImpl.f1641j = list;
            }
            Preconditions.f("The openCaptureSessionCompleter can only set once!", synchronizedCaptureSessionBaseImpl.f1639h == null);
            synchronizedCaptureSessionBaseImpl.f1639h = completer;
            cameraDeviceCompat.a(sessionConfigurationCompat);
            str = "openCaptureSession[session=" + synchronizedCaptureSessionBaseImpl + "]";
        }
        return str;
    }

    public /* synthetic */ b0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f1686b = i2;
        this.f1687c = obj;
        this.d = obj2;
        this.f1688e = obj3;
        this.f1689f = obj4;
    }
}

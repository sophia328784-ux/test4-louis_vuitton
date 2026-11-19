package androidx.camera.core;

import android.content.Context;
import android.os.SystemClock;
import android.os.Trace;
import androidx.camera.camera2.internal.Camera2DeviceSurfaceManager;
import androidx.camera.camera2.internal.Camera2UseCaseConfigFactory;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraX;
import androidx.camera.core.b;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.CameraValidator;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CameraX f2013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f2014c;
    public final /* synthetic */ Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CallbackToFutureAdapter.Completer f2016f;
    public final /* synthetic */ long g;

    public /* synthetic */ b(int i2, long j2, Context context, CameraX cameraX, CallbackToFutureAdapter.Completer completer, Executor executor) {
        this.f2013b = cameraX;
        this.f2014c = context;
        this.d = executor;
        this.f2015e = i2;
        this.f2016f = completer;
        this.g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final CameraX cameraX = this.f2013b;
        Context context = this.f2014c;
        final Executor executor = this.d;
        final int i2 = this.f2015e;
        final CallbackToFutureAdapter.Completer completer = this.f2016f;
        final long j2 = this.g;
        Object obj = CameraX.r;
        Trace.beginSection(androidx.tracing.Trace.b("CX:initAndRetryRecursively"));
        final Context contextA = ContextUtil.a(context);
        try {
            try {
                CameraFactory.Provider providerD0 = cameraX.f1900c.d0();
                if (providerD0 == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraFactory."));
                }
                CameraThreadConfig cameraThreadConfigA = CameraThreadConfig.a(cameraX.d, cameraX.f1901e);
                CameraSelector cameraSelectorC0 = cameraX.f1900c.c0();
                long jE0 = cameraX.f1900c.e0();
                UseCaseConfigFactory.Provider providerG0 = cameraX.f1900c.g0();
                if (providerG0 == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing UseCaseConfigFactory."));
                }
                Camera2UseCaseConfigFactory camera2UseCaseConfigFactoryA = providerG0.a(contextA);
                cameraX.f1904i = camera2UseCaseConfigFactoryA;
                StreamSpecsCalculatorImpl streamSpecsCalculatorImpl = new StreamSpecsCalculatorImpl(camera2UseCaseConfigFactoryA, null);
                cameraX.f1905j = streamSpecsCalculatorImpl;
                cameraX.g = providerD0.a(contextA, cameraThreadConfigA, cameraSelectorC0, jE0, cameraX.f1900c, streamSpecsCalculatorImpl);
                CameraDeviceSurfaceManager.Provider providerF0 = cameraX.f1900c.f0();
                if (providerF0 == null) {
                    throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraDeviceSurfaceManager."));
                }
                Camera2DeviceSurfaceManager camera2DeviceSurfaceManagerA = providerF0.a(contextA, cameraX.g.a(), cameraX.g.d());
                cameraX.f1903h = camera2DeviceSurfaceManagerA;
                StreamSpecsCalculatorImpl streamSpecsCalculatorImpl2 = cameraX.f1905j;
                streamSpecsCalculatorImpl2.getClass();
                streamSpecsCalculatorImpl2.f2490c = camera2DeviceSurfaceManagerA;
                if (executor instanceof CameraExecutor) {
                    ((CameraExecutor) executor).a(cameraX.g);
                }
                cameraX.f1898a.h(cameraX.g);
                Camera2CameraCoordinator camera2CameraCoordinatorF = cameraX.g.f();
                camera2CameraCoordinatorF.getClass();
                cameraX.f1906k = new CameraUseCaseAdapterProviderImpl(cameraX.f1898a, camera2CameraCoordinatorF, cameraX.f1904i, cameraX.f1905j);
                Iterator it = cameraX.f1898a.g().iterator();
                while (it.hasNext()) {
                    ((CameraInternal) it.next()).k().x(cameraX.f1906k);
                }
                cameraX.n.e(cameraX.g, cameraX.f1898a);
                CameraPresenceProvider cameraPresenceProvider = cameraX.n;
                CameraDeviceSurfaceManager cameraDeviceSurfaceManager = cameraX.f1903h;
                cameraPresenceProvider.getClass();
                cameraDeviceSurfaceManager.getClass();
                cameraPresenceProvider.f2238i.add(cameraDeviceSurfaceManager);
                CameraPresenceProvider cameraPresenceProvider2 = cameraX.n;
                Camera2CameraCoordinator camera2CameraCoordinatorF2 = cameraX.g.f();
                cameraPresenceProvider2.getClass();
                camera2CameraCoordinatorF2.getClass();
                cameraPresenceProvider2.f2238i.add(camera2CameraCoordinatorF2);
                CameraValidator.a(contextA, cameraX.f1898a, cameraSelectorC0);
                if (i2 > 1 && androidx.tracing.Trace.a()) {
                    Trace.setCounter(androidx.tracing.Trace.b("CX:CameraProvider-RetryStatus"), -1);
                }
                synchronized (cameraX.f1899b) {
                    cameraX.o = CameraX.InternalInitState.INITIALIZED;
                }
                completer.b(null);
                Trace.endSection();
            } catch (InitializationException | CameraValidator.CameraIdListIncorrectException | RuntimeException e2) {
                CameraProviderExecutionState cameraProviderExecutionState = new CameraProviderExecutionState(j2, i2, e2);
                RetryPolicy.RetryConfig retryConfigC = cameraX.l.c(cameraProviderExecutionState);
                if (androidx.tracing.Trace.a()) {
                    Trace.setCounter(androidx.tracing.Trace.b("CX:CameraProvider-RetryStatus"), cameraProviderExecutionState.f2244a);
                }
                cameraX.n.d();
                if (!retryConfigC.f1955b || i2 >= Integer.MAX_VALUE) {
                    synchronized (cameraX.f1899b) {
                        cameraX.o = CameraX.InternalInitState.INITIALIZING_ERROR;
                        if (retryConfigC.f1956c) {
                            synchronized (cameraX.f1899b) {
                                cameraX.o = CameraX.InternalInitState.INITIALIZED;
                                completer.b(null);
                            }
                        } else if (e2 instanceof CameraValidator.CameraIdListIncorrectException) {
                            String str = "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: " + ((CameraValidator.CameraIdListIncorrectException) e2).f2264b;
                            Logger.b("CameraX");
                            completer.d(new InitializationException(new CameraUnavailableException(3, str)));
                        } else if (e2 instanceof InitializationException) {
                            completer.d(e2);
                        } else {
                            completer.d(new InitializationException(e2));
                        }
                    }
                } else {
                    SystemClock.elapsedRealtime();
                    Logger.c(5, "CameraX");
                    cameraX.f1901e.postDelayed(new Runnable() { // from class: bj
                        @Override // java.lang.Runnable
                        public final void run() {
                            Object obj2 = CameraX.r;
                            int i3 = i2 + 1;
                            long j3 = j2;
                            Context context2 = contextA;
                            CameraX cameraX2 = cameraX;
                            CallbackToFutureAdapter.Completer completer2 = completer;
                            Executor executor2 = executor;
                            executor2.execute(new b(i3, j3, context2, cameraX2, completer2, executor2));
                        }
                    }, "retry_token", retryConfigC.f1954a);
                }
                Trace.endSection();
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}

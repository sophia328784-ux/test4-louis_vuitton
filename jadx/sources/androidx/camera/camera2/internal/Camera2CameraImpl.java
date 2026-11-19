package androidx.camera.camera2.internal;

import android.content.Context;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.media.CamcorderProfile;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.CaptureSessionStuckWhenCreatingBeforeClosingCameraQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.LegacyCameraOutputConfigNullPointerQuirk;
import androidx.camera.camera2.internal.compat.quirk.LegacyCameraSurfaceCleanupQuirk;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfigurator;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.core.CameraState;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a61;
import defpackage.ct0;
import defpackage.r6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class Camera2CameraImpl implements CameraInternal {
    public boolean A;
    public boolean B;
    public MeteringRepeatingSession C;
    public final CaptureSessionRepository D;
    public final SynchronizedCaptureSession.OpenerBuilder E;
    public final HashSet F;
    public CameraConfig G;
    public final Object H;
    public SessionProcessor I;
    public boolean J;
    public final DisplayInfoManager K;
    public final DynamicRangesCompat L;
    public final SupportedSurfaceCombination M;
    public final ErrorTimeoutReopenScheduler N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UseCaseAttachState f1438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraManagerCompat f1439c;
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f1440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile InternalState f1441f = InternalState.INITIALIZED;
    public final LiveDataObservable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraStateMachine f1442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Camera2CameraControlImpl f1443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StateCallback f1444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Camera2CameraInfoImpl f1445k;
    public CameraDevice l;
    public int m;
    public CaptureSessionInterface n;
    public final AtomicInteger o;
    public ListenableFuture p;
    public CallbackToFutureAdapter.Completer q;
    public final LinkedHashMap r;
    public int s;
    public final CameraAvailability t;
    public final CameraCoordinator u;
    public final CameraStateRegistry v;
    public final CameraXConfig w;
    public final boolean x;
    public final boolean y;
    public boolean z;

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.Camera2CameraImpl$1, reason: invalid class name */
    class AnonymousClass1 implements CamcorderProfileHelper {
        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public final CamcorderProfile a(int i2, int i3) {
            return CamcorderProfile.get(i2, i3);
        }

        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public final boolean b(int i2, int i3) {
            return CamcorderProfile.hasProfile(i2, i3);
        }
    }

    public final class CameraAvailability extends CameraManager.AvailabilityCallback implements CameraStateRegistry.OnOpenAvailableListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1452a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1453b = true;

        public CameraAvailability(String str) {
            this.f1452a = str;
        }

        @Override // androidx.camera.core.impl.CameraStateRegistry.OnOpenAvailableListener
        public final void a() {
            if (Camera2CameraImpl.this.f1441f == InternalState.PENDING_OPEN || Camera2CameraImpl.this.f1441f == InternalState.OPENING_WITH_ERROR) {
                Camera2CameraImpl.this.L(false);
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public final void onCameraAvailable(String str) {
            if (this.f1452a.equals(str)) {
                this.f1453b = true;
                if (Camera2CameraImpl.this.f1441f == InternalState.PENDING_OPEN || Camera2CameraImpl.this.f1441f == InternalState.OPENING_WITH_ERROR) {
                    Camera2CameraImpl.this.L(false);
                }
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public final void onCameraUnavailable(String str) {
            if (this.f1452a.equals(str)) {
                this.f1453b = false;
            }
        }
    }

    public final class CameraConfigureAvailable implements CameraStateRegistry.OnConfigureAvailableListener {
        public CameraConfigureAvailable() {
        }

        @Override // androidx.camera.core.impl.CameraStateRegistry.OnConfigureAvailableListener
        public final void a() {
            if (Camera2CameraImpl.this.f1441f == InternalState.OPENED) {
                Camera2CameraImpl.this.E();
            }
        }
    }

    public final class ControlUpdateListenerInternal implements CameraControlInternal.ControlUpdateCallback {
        public ControlUpdateListenerInternal() {
        }
    }

    public class ErrorTimeoutReopenScheduler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ScheduleNode f1457a = null;

        public class ScheduleNode {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ScheduledFuture f1459a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AtomicBoolean f1460b = new AtomicBoolean(false);

            public ScheduleNode() {
                this.f1459a = Camera2CameraImpl.this.f1440e.schedule(new l(this, 0), 2000L, TimeUnit.MILLISECONDS);
            }
        }

        public ErrorTimeoutReopenScheduler() {
        }

        public final void a() {
            ScheduleNode scheduleNode = this.f1457a;
            if (scheduleNode != null) {
                scheduleNode.f1460b.set(true);
                scheduleNode.f1459a.cancel(true);
            }
            this.f1457a = null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InternalState {
        private static final /* synthetic */ InternalState[] $VALUES;
        public static final InternalState CLOSING;
        public static final InternalState CONFIGURED;
        public static final InternalState INITIALIZED;
        public static final InternalState OPENED;
        public static final InternalState OPENING;
        public static final InternalState OPENING_WITH_ERROR;
        public static final InternalState PENDING_OPEN;
        public static final InternalState RELEASED;
        public static final InternalState RELEASING;
        public static final InternalState REOPENING;
        public static final InternalState REOPENING_QUIRK;

        static {
            InternalState internalState = new InternalState("RELEASED", 0);
            RELEASED = internalState;
            InternalState internalState2 = new InternalState("RELEASING", 1);
            RELEASING = internalState2;
            InternalState internalState3 = new InternalState("INITIALIZED", 2);
            INITIALIZED = internalState3;
            InternalState internalState4 = new InternalState("PENDING_OPEN", 3);
            PENDING_OPEN = internalState4;
            InternalState internalState5 = new InternalState("OPENING_WITH_ERROR", 4);
            OPENING_WITH_ERROR = internalState5;
            InternalState internalState6 = new InternalState("CLOSING", 5);
            CLOSING = internalState6;
            InternalState internalState7 = new InternalState("REOPENING_QUIRK", 6);
            REOPENING_QUIRK = internalState7;
            InternalState internalState8 = new InternalState("REOPENING", 7);
            REOPENING = internalState8;
            InternalState internalState9 = new InternalState("OPENING", 8);
            OPENING = internalState9;
            InternalState internalState10 = new InternalState("OPENED", 9);
            OPENED = internalState10;
            InternalState internalState11 = new InternalState("CONFIGURED", 10);
            CONFIGURED = internalState11;
            $VALUES = new InternalState[]{internalState, internalState2, internalState3, internalState4, internalState5, internalState6, internalState7, internalState8, internalState9, internalState10, internalState11};
        }

        public static InternalState valueOf(String str) {
            return (InternalState) Enum.valueOf(InternalState.class, str);
        }

        public static InternalState[] values() {
            return (InternalState[]) $VALUES.clone();
        }
    }

    public final class StateCallback extends CameraDevice.StateCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f1462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ScheduledExecutorService f1463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ScheduledReopen f1464c;
        public ScheduledFuture d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CameraReopenMonitor f1465e;

        public class CameraReopenMonitor {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final long f1467a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f1468b = -1;

            public CameraReopenMonitor(long j2) {
                this.f1467a = j2;
            }

            public final int a() {
                if (!StateCallback.this.c()) {
                    return 700;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (this.f1468b == -1) {
                    this.f1468b = jUptimeMillis;
                }
                long j2 = jUptimeMillis - this.f1468b;
                if (j2 <= 120000) {
                    return 1000;
                }
                if (j2 <= 300000) {
                    return com.networkbench.agent.impl.util.r.E;
                }
                return 4000;
            }

            public final int b() {
                boolean zC = StateCallback.this.c();
                long j2 = this.f1467a;
                if (zC) {
                    if (j2 > 0) {
                        return Math.min((int) j2, 1800000);
                    }
                    return 1800000;
                }
                if (j2 > 0) {
                    return Math.min((int) j2, 10000);
                }
                return 10000;
            }
        }

        public class ScheduledReopen implements Runnable {
            private boolean mCancelled = false;
            private Executor mExecutor;

            public ScheduledReopen(Executor executor) {
                this.mExecutor = executor;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void lambda$run$0() {
                if (this.mCancelled) {
                    return;
                }
                Preconditions.f(null, Camera2CameraImpl.this.f1441f == InternalState.REOPENING || Camera2CameraImpl.this.f1441f == InternalState.REOPENING_QUIRK);
                boolean zC = StateCallback.this.c();
                StateCallback stateCallback = StateCallback.this;
                if (zC) {
                    Camera2CameraImpl.this.K(true);
                } else {
                    Camera2CameraImpl.this.L(true);
                }
            }

            public void cancel() {
                this.mCancelled = true;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mExecutor.execute(new m(this, 0));
            }
        }

        public StateCallback(Executor executor, ScheduledExecutorService scheduledExecutorService, long j2) {
            this.f1462a = executor;
            this.f1463b = scheduledExecutorService;
            this.f1465e = new CameraReopenMonitor(j2);
        }

        public final boolean a() {
            if (this.d == null) {
                return false;
            }
            Camera2CameraImpl.this.w("Cancelling scheduled re-open: " + this.f1464c);
            this.f1464c.cancel();
            this.f1464c = null;
            this.d.cancel(false);
            this.d = null;
            return true;
        }

        public final void b() {
            Preconditions.f(null, this.f1464c == null);
            Preconditions.f(null, this.d == null);
            CameraReopenMonitor cameraReopenMonitor = this.f1465e;
            cameraReopenMonitor.getClass();
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (cameraReopenMonitor.f1468b == -1) {
                cameraReopenMonitor.f1468b = jUptimeMillis;
            }
            long j2 = jUptimeMillis - cameraReopenMonitor.f1468b;
            long jB = cameraReopenMonitor.b();
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            if (j2 >= jB) {
                cameraReopenMonitor.f1468b = -1L;
                cameraReopenMonitor.b();
                Logger.a("Camera2CameraImpl");
                camera2CameraImpl.H(InternalState.PENDING_OPEN, null, false);
                return;
            }
            this.f1464c = new ScheduledReopen(this.f1462a);
            camera2CameraImpl.w("Attempting camera re-open in " + cameraReopenMonitor.a() + "ms: " + this.f1464c + " activeResuming = " + camera2CameraImpl.J);
            this.d = this.f1463b.schedule(this.f1464c, (long) cameraReopenMonitor.a(), TimeUnit.MILLISECONDS);
        }

        public final boolean c() {
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            if (!camera2CameraImpl.J) {
                return false;
            }
            int i2 = camera2CameraImpl.m;
            return i2 == 1 || i2 == 2;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onClosed(CameraDevice cameraDevice) {
            Camera2CameraImpl.this.w("CameraDevice.onClosed()");
            Preconditions.f("Unexpected onClose callback on camera device: " + cameraDevice, Camera2CameraImpl.this.l == null);
            int iOrdinal = Camera2CameraImpl.this.f1441f.ordinal();
            if (iOrdinal == 1 || iOrdinal == 5) {
                Preconditions.f(null, Camera2CameraImpl.this.r.isEmpty());
                Camera2CameraImpl.this.u();
                return;
            }
            if (iOrdinal != 6 && iOrdinal != 7) {
                ct0.o(Camera2CameraImpl.this.f1441f, "Camera closed while in state: ");
                return;
            }
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            int i2 = camera2CameraImpl.m;
            if (i2 == 0) {
                camera2CameraImpl.L(false);
            } else {
                camera2CameraImpl.w("Camera closed due to error: ".concat(Camera2CameraImpl.y(i2)));
                b();
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onDisconnected(CameraDevice cameraDevice) {
            Camera2CameraImpl.this.w("CameraDevice.onDisconnected()");
            onError(cameraDevice, 1);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onError(CameraDevice cameraDevice, int i2) {
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            camera2CameraImpl.l = cameraDevice;
            camera2CameraImpl.m = i2;
            ErrorTimeoutReopenScheduler errorTimeoutReopenScheduler = camera2CameraImpl.N;
            Camera2CameraImpl.this.w("Camera receive onErrorCallback");
            errorTimeoutReopenScheduler.a();
            int iOrdinal = Camera2CameraImpl.this.f1441f.ordinal();
            if (iOrdinal != 1) {
                switch (iOrdinal) {
                    case 5:
                        break;
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        cameraDevice.getId();
                        Camera2CameraImpl.this.f1441f.name();
                        int i3 = 3;
                        Logger.c(3, "Camera2CameraImpl");
                        Preconditions.f("Attempt to handle open error from non open state: " + Camera2CameraImpl.this.f1441f, Camera2CameraImpl.this.f1441f == InternalState.OPENING || Camera2CameraImpl.this.f1441f == InternalState.OPENED || Camera2CameraImpl.this.f1441f == InternalState.CONFIGURED || Camera2CameraImpl.this.f1441f == InternalState.REOPENING || Camera2CameraImpl.this.f1441f == InternalState.REOPENING_QUIRK);
                        if (i2 == 1 || i2 == 2 || i2 == 4) {
                            cameraDevice.getId();
                            Logger.c(3, "Camera2CameraImpl");
                            Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                            Preconditions.f("Can only reopen camera device after error if the camera device is actually in an error state.", camera2CameraImpl2.m != 0);
                            if (i2 == 1) {
                                i3 = 2;
                            } else if (i2 == 2) {
                                i3 = 1;
                            }
                            camera2CameraImpl2.H(InternalState.REOPENING, CameraState.StateError.a(i3), true);
                            camera2CameraImpl2.t();
                        } else {
                            cameraDevice.getId();
                            Logger.a("Camera2CameraImpl");
                            Camera2CameraImpl.this.H(InternalState.CLOSING, CameraState.StateError.a(i2 == 3 ? 5 : 6), true);
                            Camera2CameraImpl.this.t();
                        }
                        break;
                    default:
                        ct0.o(Camera2CameraImpl.this.f1441f, "onError() should not be possible from state: ");
                        break;
                }
                return;
            }
            cameraDevice.getId();
            Camera2CameraImpl.this.f1441f.name();
            Logger.a("Camera2CameraImpl");
            Camera2CameraImpl.this.t();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onOpened(CameraDevice cameraDevice) {
            Camera2CameraImpl.this.w("CameraDevice.onOpened()");
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            camera2CameraImpl.l = cameraDevice;
            camera2CameraImpl.m = 0;
            this.f1465e.f1468b = -1L;
            int iOrdinal = camera2CameraImpl.f1441f.ordinal();
            if (iOrdinal == 1 || iOrdinal == 5) {
                Preconditions.f(null, Camera2CameraImpl.this.r.isEmpty());
                Camera2CameraImpl.this.l.close();
                Camera2CameraImpl.this.l = null;
            } else {
                if (iOrdinal != 6 && iOrdinal != 7 && iOrdinal != 8) {
                    ct0.o(Camera2CameraImpl.this.f1441f, "onOpened() should not be possible from state: ");
                    return;
                }
                Camera2CameraImpl.this.G(InternalState.OPENED);
                CameraStateRegistry cameraStateRegistry = Camera2CameraImpl.this.v;
                String id = cameraDevice.getId();
                Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                if (cameraStateRegistry.i(id, camera2CameraImpl2.u.b(camera2CameraImpl2.l.getId()))) {
                    Camera2CameraImpl.this.E();
                }
            }
        }
    }

    public static abstract class UseCaseInfo {
    }

    public Camera2CameraImpl(Context context, CameraManagerCompat cameraManagerCompat, String str, Camera2CameraInfoImpl camera2CameraInfoImpl, Camera2CameraCoordinator camera2CameraCoordinator, CameraStateRegistry cameraStateRegistry, Executor executor, Handler handler, DisplayInfoManager displayInfoManager, long j2, CameraXConfig cameraXConfig) throws CameraUnavailableException {
        LiveDataObservable liveDataObservable = new LiveDataObservable();
        this.g = liveDataObservable;
        this.m = 0;
        this.o = new AtomicInteger(0);
        this.r = new LinkedHashMap();
        this.s = 0;
        this.z = false;
        this.A = false;
        this.B = true;
        this.F = new HashSet();
        this.G = CameraConfigs.f2229a;
        this.H = new Object();
        this.J = false;
        this.N = new ErrorTimeoutReopenScheduler();
        this.f1439c = cameraManagerCompat;
        this.u = camera2CameraCoordinator;
        this.v = cameraStateRegistry;
        ScheduledExecutorService scheduledExecutorServiceD = CameraXExecutors.d(handler);
        this.f1440e = scheduledExecutorServiceD;
        Executor executorE = CameraXExecutors.e(executor);
        this.d = executorE;
        this.f1444j = new StateCallback(executorE, scheduledExecutorServiceD, j2);
        this.f1438b = new UseCaseAttachState(str);
        liveDataObservable.f2308a.postValue(new LiveDataObservable.Result(CameraInternal.State.CLOSED));
        CameraStateMachine cameraStateMachine = new CameraStateMachine(cameraStateRegistry);
        this.f1442h = cameraStateMachine;
        CaptureSessionRepository captureSessionRepository = new CaptureSessionRepository(executorE);
        this.D = captureSessionRepository;
        this.K = displayInfoManager;
        this.w = cameraXConfig;
        try {
            CameraCharacteristicsCompat cameraCharacteristicsCompatB = cameraManagerCompat.b(str);
            Camera2CameraControlImpl camera2CameraControlImpl = new Camera2CameraControlImpl(cameraCharacteristicsCompatB, scheduledExecutorServiceD, executorE, new ControlUpdateListenerInternal(), camera2CameraInfoImpl.f1476i);
            this.f1443i = camera2CameraControlImpl;
            this.f1445k = camera2CameraInfoImpl;
            camera2CameraInfoImpl.z(camera2CameraControlImpl);
            camera2CameraInfoImpl.g.e(cameraStateMachine.f1539b);
            this.L = DynamicRangesCompat.a(cameraCharacteristicsCompatB);
            this.n = C();
            this.E = new SynchronizedCaptureSession.OpenerBuilder(handler, captureSessionRepository, camera2CameraInfoImpl.f1476i, DeviceQuirks.f1731a, executorE, scheduledExecutorServiceD);
            Quirks quirks = camera2CameraInfoImpl.f1476i;
            this.x = quirks.a(LegacyCameraOutputConfigNullPointerQuirk.class) || quirks.a(CaptureSessionStuckWhenCreatingBeforeClosingCameraQuirk.class);
            this.y = camera2CameraInfoImpl.f1476i.a(LegacyCameraSurfaceCleanupQuirk.class);
            CameraAvailability cameraAvailability = new CameraAvailability(str);
            this.t = cameraAvailability;
            cameraStateRegistry.f(this, executorE, new CameraConfigureAvailable(), cameraAvailability);
            cameraManagerCompat.d(executorE, cameraAvailability);
            this.M = new SupportedSurfaceCombination(context, str, cameraManagerCompat, new AnonymousClass1(), FeatureCombinationQuery.f2022a);
        } catch (CameraAccessExceptionCompat e2) {
            throw CameraUnavailableExceptionHelper.a(e2);
        }
    }

    public static String A(UseCase useCase) {
        return useCase.g() + useCase.hashCode();
    }

    public static String y(int i2) {
        if (i2 == 0) {
            return "ERROR_NONE";
        }
        if (i2 == 1) {
            return "ERROR_CAMERA_IN_USE";
        }
        if (i2 == 2) {
            return "ERROR_MAX_CAMERAS_IN_USE";
        }
        if (i2 == 3) {
            return "ERROR_CAMERA_DISABLED";
        }
        if (i2 != 4) {
            return i2 != 5 ? "UNKNOWN ERROR" : "ERROR_CAMERA_SERVICE";
        }
        return "ERROR_CAMERA_DEVICE";
    }

    public static String z(MeteringRepeatingSession meteringRepeatingSession) {
        StringBuilder sb = new StringBuilder("MeteringRepeating");
        meteringRepeatingSession.getClass();
        sb.append(meteringRepeatingSession.hashCode());
        return sb.toString();
    }

    public final boolean B(MeteringRepeatingSession meteringRepeatingSession) {
        int i2;
        int i3;
        HashMap map;
        meteringRepeatingSession.getClass();
        ArrayList arrayList = new ArrayList();
        synchronized (this.H) {
            try {
                i2 = this.u.c() == 2 ? 1 : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        UseCaseAttachState useCaseAttachState = this.f1438b;
        useCaseAttachState.getClass();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : useCaseAttachState.f2366a.entrySet()) {
            if (((UseCaseAttachState.UseCaseAttachInfo) entry.getValue()).f2370e) {
                arrayList2.add((UseCaseAttachState.UseCaseAttachInfo) entry.getValue());
            }
        }
        try {
            for (UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo : Collections.unmodifiableCollection(arrayList2)) {
                List list = useCaseAttachInfo.d;
                if (list == null || list.get(0) != UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                    if (useCaseAttachInfo.f2369c == null || useCaseAttachInfo.d == null) {
                        useCaseAttachInfo.toString();
                        Logger.c(5, "Camera2CameraImpl");
                    }
                    SessionConfig sessionConfig = useCaseAttachInfo.f2367a;
                    UseCaseConfig useCaseConfig = useCaseAttachInfo.f2368b;
                    for (DeferrableSurface deferrableSurface : sessionConfig.b()) {
                        SupportedSurfaceCombination supportedSurfaceCombination = this.M;
                        int iM = useCaseConfig.m();
                        Size size = deferrableSurface.f2292h;
                        StreamUseCase streamUseCaseR = useCaseConfig.R();
                        SurfaceSizeDefinition surfaceSizeDefinitionL = supportedSurfaceCombination.l(iM);
                        SurfaceConfig.ConfigSource configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
                        SurfaceConfig.f2350e.getClass();
                        int i4 = i2;
                        arrayList.add(AttachedSurfaceInfo.a(SurfaceConfig.Companion.b(iM, size, surfaceSizeDefinitionL, i4, configSource, streamUseCaseR), useCaseConfig.m(), deferrableSurface.f2292h, useCaseAttachInfo.f2369c.b(), useCaseAttachInfo.d, useCaseAttachInfo.f2369c.d(), useCaseAttachInfo.f2369c.g(), useCaseAttachInfo.f2369c.c(), useCaseConfig.C()));
                        i2 = i4;
                    }
                }
            }
            this.M.j(i3, arrayList, map, false, false, false);
            w("Surface combination with metering repeating supported!");
            CameraXConfig cameraXConfig = this.w;
            return (cameraXConfig == null || ((Boolean) cameraXConfig.M.f(CameraXConfig.Y, Boolean.TRUE)).booleanValue()) ? false : true;
        } catch (IllegalArgumentException unused) {
            w("Surface combination with metering repeating  not supported!");
        }
        i3 = i2;
        map = new HashMap();
        map.put(meteringRepeatingSession.f1600c, Collections.singletonList(meteringRepeatingSession.d));
    }

    public final CaptureSessionInterface C() {
        synchronized (this.H) {
            try {
                CameraXConfig cameraXConfig = this.w;
                Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator = null;
                if (cameraXConfig != null) {
                    Config.Option option = Camera2CaptureRequestConfiguratorKt.f1856a;
                    camera2CaptureRequestConfigurator = (Camera2CaptureRequestConfigurator) cameraXConfig.M.f(Camera2CaptureRequestConfiguratorKt.f1856a, null);
                }
                Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator2 = camera2CaptureRequestConfigurator;
                if (this.I == null) {
                    return new CaptureSession(this.L, this.f1445k.f1476i, false, camera2CaptureRequestConfigurator2);
                }
                return new ProcessingCaptureSession(this.I, this.f1445k, this.L, this.d, this.f1440e, camera2CaptureRequestConfigurator2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void D(boolean z) {
        if (!z) {
            this.f1444j.f1465e.f1468b = -1L;
        }
        this.f1444j.a();
        this.N.a();
        w("Opening camera.");
        G(InternalState.OPENING);
        try {
            this.f1439c.c(this.f1445k.f1470a, this.d, v());
        } catch (CameraAccessExceptionCompat e2) {
            w("Unable to open camera due to " + e2.getMessage());
            if (e2.f1695b == 10001) {
                H(InternalState.INITIALIZED, CameraState.StateError.b(7, e2), true);
                return;
            }
            ErrorTimeoutReopenScheduler errorTimeoutReopenScheduler = this.N;
            InternalState internalState = Camera2CameraImpl.this.f1441f;
            InternalState internalState2 = InternalState.OPENING;
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            if (internalState != internalState2) {
                camera2CameraImpl.w("Don't need the onError timeout handler.");
                return;
            }
            camera2CameraImpl.w("Camera waiting for onError.");
            errorTimeoutReopenScheduler.a();
            errorTimeoutReopenScheduler.f1457a = errorTimeoutReopenScheduler.new ScheduleNode();
        } catch (SecurityException e3) {
            w("Unable to open camera due to " + e3.getMessage());
            G(InternalState.REOPENING);
            this.f1444j.b();
        } catch (RuntimeException unused) {
            w("Unexpected error occurred when opening camera.");
            H(InternalState.OPENING_WITH_ERROR, CameraState.StateError.a(6), true);
        }
    }

    public final void E() {
        Preconditions.f(null, this.f1441f == InternalState.OPENED);
        SessionConfig.ValidatingBuilder validatingBuilderB = this.f1438b.b();
        if (!validatingBuilderB.d()) {
            w("Unable to create capture session due to conflicting configurations");
            return;
        }
        if (!this.v.i(this.l.getId(), this.u.b(this.l.getId()))) {
            w("Unable to create capture session in camera operating mode = " + this.u.c());
            return;
        }
        HashMap map = new HashMap();
        Collection<SessionConfig> collectionC = this.f1438b.c();
        Collection collectionD = this.f1438b.d();
        Config.Option option = StreamUseCaseUtil.f1617a;
        collectionC.getClass();
        collectionD.getClass();
        ArrayList arrayList = new ArrayList(collectionD);
        for (SessionConfig sessionConfig : collectionC) {
            if (!sessionConfig.g.f2269b.M.containsKey(option) || sessionConfig.b().size() == 1) {
                if (sessionConfig.g.f2269b.M.containsKey(option)) {
                    int i2 = 0;
                    for (SessionConfig sessionConfig2 : collectionC) {
                        if (((UseCaseConfig) arrayList.get(i2)).S() == UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                            List listB = sessionConfig2.b();
                            listB.getClass();
                            Preconditions.f("MeteringRepeating should contain a surface", !listB.isEmpty());
                            map.put(sessionConfig2.b().get(0), 1L);
                        } else if (sessionConfig2.g.f2269b.M.containsKey(option)) {
                            List listB2 = sessionConfig2.b();
                            listB2.getClass();
                            if (!listB2.isEmpty()) {
                                Object obj = sessionConfig2.b().get(0);
                                Object objA = sessionConfig2.g.f2269b.a(option);
                                objA.getClass();
                                map.put(obj, objA);
                            }
                        }
                        i2++;
                    }
                    break;
                }
            } else {
                String.format("SessionConfig has stream use case but also contains %d surfaces, abort populateSurfaceToStreamUseCaseMapping().", Arrays.copyOf(new Object[]{Integer.valueOf(sessionConfig.b().size())}, 1));
                Logger.a("StreamUseCaseUtil");
            }
            this.n.e(map);
            final CaptureSessionInterface captureSessionInterface = this.n;
            SessionConfig sessionConfigB = validatingBuilderB.b();
            CameraDevice cameraDevice = this.l;
            cameraDevice.getClass();
            SynchronizedCaptureSession.OpenerBuilder openerBuilder = this.E;
            Futures.a(captureSessionInterface.a(sessionConfigB, cameraDevice, new SynchronizedCaptureSessionImpl(openerBuilder.f1631c, openerBuilder.d, openerBuilder.f1632e, openerBuilder.f1633f, openerBuilder.f1629a, openerBuilder.f1630b)), new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.4
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onFailure(Throwable th) {
                    SessionConfig sessionConfig3;
                    boolean z = th instanceof DeferrableSurface.SurfaceClosedException;
                    Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                    if (!z) {
                        if (th instanceof CancellationException) {
                            camera2CameraImpl.w("Unable to configure camera cancelled");
                            return;
                        }
                        InternalState internalState = camera2CameraImpl.f1441f;
                        InternalState internalState2 = InternalState.OPENED;
                        if (internalState == internalState2) {
                            Camera2CameraImpl.this.H(internalState2, CameraState.StateError.b(4, th), true);
                        }
                        Camera2CameraImpl.this.toString();
                        Logger.b("Camera2CameraImpl");
                        Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                        if (camera2CameraImpl2.n == captureSessionInterface) {
                            camera2CameraImpl2.F();
                            return;
                        }
                        return;
                    }
                    DeferrableSurface deferrableSurface = ((DeferrableSurface.SurfaceClosedException) th).f2295b;
                    Iterator it = camera2CameraImpl.f1438b.c().iterator();
                    do {
                        if (!it.hasNext()) {
                            sessionConfig3 = null;
                            break;
                        }
                        sessionConfig3 = (SessionConfig) it.next();
                    } while (!sessionConfig3.b().contains(deferrableSurface));
                    if (sessionConfig3 != null) {
                        Camera2CameraImpl camera2CameraImpl3 = Camera2CameraImpl.this;
                        ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                        SessionConfig.ErrorListener errorListener = sessionConfig3.f2329f;
                        if (errorListener != null) {
                            new Throwable();
                            camera2CameraImpl3.w("Posting surface closed");
                            scheduledExecutorServiceC.execute(new r6(errorListener, sessionConfig3, 11));
                        }
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onSuccess(Object obj2) {
                    if (Camera2CameraImpl.this.u.c() == 2 && Camera2CameraImpl.this.f1441f == InternalState.OPENED) {
                        Camera2CameraImpl.this.G(InternalState.CONFIGURED);
                    }
                }
            }, this.d);
        }
        Objects.toString(map);
        Logger.c(3, "StreamUseCaseUtil");
        this.n.e(map);
        final CaptureSessionInterface captureSessionInterface2 = this.n;
        SessionConfig sessionConfigB2 = validatingBuilderB.b();
        CameraDevice cameraDevice2 = this.l;
        cameraDevice2.getClass();
        SynchronizedCaptureSession.OpenerBuilder openerBuilder2 = this.E;
        Futures.a(captureSessionInterface2.a(sessionConfigB2, cameraDevice2, new SynchronizedCaptureSessionImpl(openerBuilder2.f1631c, openerBuilder2.d, openerBuilder2.f1632e, openerBuilder2.f1633f, openerBuilder2.f1629a, openerBuilder2.f1630b)), new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.4
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                SessionConfig sessionConfig3;
                boolean z = th instanceof DeferrableSurface.SurfaceClosedException;
                Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                if (!z) {
                    if (th instanceof CancellationException) {
                        camera2CameraImpl.w("Unable to configure camera cancelled");
                        return;
                    }
                    InternalState internalState = camera2CameraImpl.f1441f;
                    InternalState internalState2 = InternalState.OPENED;
                    if (internalState == internalState2) {
                        Camera2CameraImpl.this.H(internalState2, CameraState.StateError.b(4, th), true);
                    }
                    Camera2CameraImpl.this.toString();
                    Logger.b("Camera2CameraImpl");
                    Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                    if (camera2CameraImpl2.n == captureSessionInterface2) {
                        camera2CameraImpl2.F();
                        return;
                    }
                    return;
                }
                DeferrableSurface deferrableSurface = ((DeferrableSurface.SurfaceClosedException) th).f2295b;
                Iterator it = camera2CameraImpl.f1438b.c().iterator();
                do {
                    if (!it.hasNext()) {
                        sessionConfig3 = null;
                        break;
                    }
                    sessionConfig3 = (SessionConfig) it.next();
                } while (!sessionConfig3.b().contains(deferrableSurface));
                if (sessionConfig3 != null) {
                    Camera2CameraImpl camera2CameraImpl3 = Camera2CameraImpl.this;
                    ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
                    SessionConfig.ErrorListener errorListener = sessionConfig3.f2329f;
                    if (errorListener != null) {
                        new Throwable();
                        camera2CameraImpl3.w("Posting surface closed");
                        scheduledExecutorServiceC.execute(new r6(errorListener, sessionConfig3, 11));
                    }
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj2) {
                if (Camera2CameraImpl.this.u.c() == 2 && Camera2CameraImpl.this.f1441f == InternalState.OPENED) {
                    Camera2CameraImpl.this.G(InternalState.CONFIGURED);
                }
            }
        }, this.d);
    }

    public final void F() {
        Preconditions.f(null, this.n != null);
        w("Resetting Capture Session");
        final CaptureSessionInterface captureSessionInterface = this.n;
        SessionConfig sessionConfigG = captureSessionInterface.g();
        List listF = captureSessionInterface.f();
        CaptureSessionInterface captureSessionInterfaceC = C();
        this.n = captureSessionInterfaceC;
        captureSessionInterfaceC.h(sessionConfigG);
        this.n.b(listF);
        if (this.f1441f.ordinal() != 9) {
            w("Skipping Capture Session state check due to current camera state: " + this.f1441f + " and previous session status: " + captureSessionInterface.c());
        } else if (this.x && captureSessionInterface.c()) {
            w("Close camera before creating new session");
            G(InternalState.REOPENING_QUIRK);
        }
        if (this.y && captureSessionInterface.c()) {
            w("ConfigAndClose is required when close the camera.");
            this.z = true;
        }
        captureSessionInterface.close();
        ListenableFuture listenableFutureRelease = captureSessionInterface.release();
        w("Releasing session in state " + this.f1441f.name());
        this.r.put(captureSessionInterface, listenableFutureRelease);
        Futures.a(listenableFutureRelease, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                Camera2CameraImpl.this.r.remove(captureSessionInterface);
                int iOrdinal = Camera2CameraImpl.this.f1441f.ordinal();
                if (iOrdinal != 1 && iOrdinal != 5) {
                    if (iOrdinal != 6 && (iOrdinal != 7 || Camera2CameraImpl.this.m == 0)) {
                        return;
                    } else {
                        Camera2CameraImpl.this.w("Camera reopen required. Checking if the current camera can be closed safely.");
                    }
                }
                if (Camera2CameraImpl.this.r.isEmpty()) {
                    Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                    if (camera2CameraImpl.l != null) {
                        camera2CameraImpl.w("closing camera");
                        Camera2CameraImpl.this.l.close();
                        Camera2CameraImpl.this.l = null;
                    }
                }
            }
        }, CameraXExecutors.a());
    }

    public final void G(InternalState internalState) {
        H(internalState, null, true);
    }

    public final void H(InternalState internalState, CameraState.StateError stateError, boolean z) {
        CameraInternal.State state;
        w("Transitioning camera internal state: " + this.f1441f + " --> " + internalState);
        if (Trace.a()) {
            android.os.Trace.setCounter(Trace.b("CX:C2State[" + this + "]"), internalState.ordinal());
            if (stateError != null) {
                this.s++;
            }
            if (this.s > 0) {
                android.os.Trace.setCounter(Trace.b("CX:C2StateErrorCode[" + this + "]"), stateError != null ? stateError.d() : 0);
            }
        }
        this.f1441f = internalState;
        switch (internalState.ordinal()) {
            case 0:
                state = CameraInternal.State.RELEASED;
                break;
            case 1:
                state = CameraInternal.State.RELEASING;
                break;
            case 2:
                state = CameraInternal.State.CLOSED;
                break;
            case 3:
                state = CameraInternal.State.PENDING_OPEN;
                break;
            case 4:
            case 5:
            case 6:
                state = CameraInternal.State.CLOSING;
                break;
            case 7:
            case 8:
                state = CameraInternal.State.OPENING;
                break;
            case 9:
                state = CameraInternal.State.OPEN;
                break;
            case 10:
                state = CameraInternal.State.CONFIGURED;
                break;
            default:
                a61.q(internalState, "Unknown state: ");
                return;
        }
        this.v.d(this, state, z);
        this.g.f2308a.postValue(new LiveDataObservable.Result(state));
        this.f1442h.a(state, stateError);
    }

    public final ArrayList I(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            boolean z = this.B;
            String strA = A(useCase);
            Class<?> cls = useCase.getClass();
            SessionConfig sessionConfig = z ? useCase.o : useCase.p;
            UseCaseConfig useCaseConfig = useCase.f1995h;
            StreamSpec streamSpec = useCase.f1996i;
            arrayList2.add(new AutoValue_Camera2CameraImpl_UseCaseInfo(strA, cls, sessionConfig, useCaseConfig, streamSpec != null ? streamSpec.f() : null, useCase.f1996i, useCase.c() != null ? StreamSharing.I(useCase) : null));
        }
        return arrayList2;
    }

    public final void J(ArrayList arrayList) throws Exception {
        Size size;
        boolean zIsEmpty = this.f1438b.c().isEmpty();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        Rational rational = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            UseCaseInfo useCaseInfo = (UseCaseInfo) it.next();
            if (!this.f1438b.e(((AutoValue_Camera2CameraImpl_UseCaseInfo) useCaseInfo).f1397a)) {
                UseCaseAttachState useCaseAttachState = this.f1438b;
                AutoValue_Camera2CameraImpl_UseCaseInfo autoValue_Camera2CameraImpl_UseCaseInfo = (AutoValue_Camera2CameraImpl_UseCaseInfo) useCaseInfo;
                String str = autoValue_Camera2CameraImpl_UseCaseInfo.f1397a;
                SessionConfig sessionConfig = autoValue_Camera2CameraImpl_UseCaseInfo.f1399c;
                UseCaseConfig useCaseConfig = autoValue_Camera2CameraImpl_UseCaseInfo.d;
                StreamSpec streamSpec = autoValue_Camera2CameraImpl_UseCaseInfo.f1401f;
                List list = autoValue_Camera2CameraImpl_UseCaseInfo.g;
                LinkedHashMap linkedHashMap = useCaseAttachState.f2366a;
                UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap.get(str);
                if (useCaseAttachInfo == null) {
                    useCaseAttachInfo = new UseCaseAttachState.UseCaseAttachInfo(sessionConfig, useCaseConfig, streamSpec, list);
                    linkedHashMap.put(str, useCaseAttachInfo);
                }
                useCaseAttachInfo.f2370e = true;
                useCaseAttachState.f(str, sessionConfig, useCaseConfig, streamSpec, list);
                arrayList2.add(autoValue_Camera2CameraImpl_UseCaseInfo.f1397a);
                if (autoValue_Camera2CameraImpl_UseCaseInfo.f1398b == Preview.class && (size = autoValue_Camera2CameraImpl_UseCaseInfo.f1400e) != null) {
                    rational = new Rational(size.getWidth(), size.getHeight());
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        w("Use cases [" + TextUtils.join(", ", arrayList2) + "] now ATTACHED");
        if (zIsEmpty) {
            this.f1443i.v(true);
            Camera2CameraControlImpl camera2CameraControlImpl = this.f1443i;
            synchronized (camera2CameraControlImpl.d) {
                camera2CameraControlImpl.q++;
            }
        }
        s();
        O();
        N();
        M();
        F();
        InternalState internalState = this.f1441f;
        InternalState internalState2 = InternalState.OPENED;
        if (internalState == internalState2) {
            E();
        } else {
            int iOrdinal = this.f1441f.ordinal();
            if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4) {
                K(false);
            } else if (iOrdinal != 5) {
                w("open() ignored due to being in state: " + this.f1441f);
            } else {
                G(InternalState.REOPENING);
                if (!this.r.isEmpty() && !this.A && this.m == 0) {
                    Preconditions.f("Camera Device should be open if session close is not complete", this.l != null);
                    G(internalState2);
                    E();
                }
            }
        }
        if (rational != null) {
            this.f1443i.f1420h.getClass();
        }
    }

    public final void K(boolean z) {
        w("Attempting to force open the camera.");
        if (this.v.h(this)) {
            D(z);
        } else {
            w("No cameras available. Waiting for available camera before opening camera.");
            G(InternalState.PENDING_OPEN);
        }
    }

    public final void L(boolean z) {
        w("Attempting to open the camera.");
        if (this.t.f1453b && this.v.h(this)) {
            D(z);
        } else {
            w("No cameras available. Waiting for available camera before opening camera.");
            G(InternalState.PENDING_OPEN);
        }
    }

    public final void M() {
        SessionConfig.ValidatingBuilder validatingBuilderA = this.f1438b.a();
        boolean zD = validatingBuilderA.d();
        Camera2CameraControlImpl camera2CameraControlImpl = this.f1443i;
        if (!zD) {
            camera2CameraControlImpl.y = 1;
            camera2CameraControlImpl.f1420h.f1583e = 1;
            camera2CameraControlImpl.o.f1486h = 1;
            this.n.h(camera2CameraControlImpl.q());
            return;
        }
        int i2 = validatingBuilderA.b().g.f2270c;
        camera2CameraControlImpl.y = i2;
        camera2CameraControlImpl.f1420h.f1583e = i2;
        camera2CameraControlImpl.o.f1486h = i2;
        validatingBuilderA.a(camera2CameraControlImpl.q());
        this.n.h(validatingBuilderA.b());
    }

    public final void N() {
        if (LowLightBoostControl.a(this.f1445k.f1471b)) {
            SessionConfig.ValidatingBuilder validatingBuilderA = this.f1438b.a();
            if (validatingBuilderA.d()) {
                int iIntValue = ((Integer) validatingBuilderA.b().g.a().getUpper()).intValue();
                Camera2CameraControlImpl camera2CameraControlImpl = this.f1443i;
                if (iIntValue > 30) {
                    camera2CameraControlImpl.w(true);
                } else {
                    camera2CameraControlImpl.w(false);
                }
            }
        }
    }

    public final void O() throws Exception {
        Iterator it = this.f1438b.d().iterator();
        boolean zF = false;
        while (it.hasNext()) {
            zF |= ((UseCaseConfig) it.next()).F();
        }
        ZslControlImpl zslControlImpl = this.f1443i.m;
        if (zslControlImpl.d != zF && zF) {
            ZslRingBuffer zslRingBuffer = zslControlImpl.f1668c;
            while (!zslRingBuffer.c()) {
                ((ImageProxy) zslRingBuffer.a()).close();
            }
        }
        zslControlImpl.d = zF;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final Observable c() {
        return this.g;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void d(UseCase useCase) {
        this.d.execute(new e(this, A(useCase), this.B ? useCase.o : useCase.p, useCase.f1995h, useCase.f1996i, useCase.c() == null ? null : StreamSharing.I(useCase), 2));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void e(UseCase useCase) {
        this.d.execute(new e(this, A(useCase), this.B ? useCase.o : useCase.p, useCase.f1995h, useCase.f1996i, useCase.c() == null ? null : StreamSharing.I(useCase), 1));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraControlInternal f() {
        return this.f1443i;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraConfig g() {
        return this.G;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void h(final boolean z) {
        this.d.execute(new Runnable() { // from class: androidx.camera.camera2.internal.f
            @Override // java.lang.Runnable
            public final void run() {
                Camera2CameraImpl camera2CameraImpl = this.f1809b;
                boolean z2 = z;
                camera2CameraImpl.J = z2;
                if (z2) {
                    if (camera2CameraImpl.f1441f == Camera2CameraImpl.InternalState.PENDING_OPEN || camera2CameraImpl.f1441f == Camera2CameraImpl.InternalState.OPENING_WITH_ERROR) {
                        camera2CameraImpl.K(false);
                    }
                }
            }
        });
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void i(Collection collection) {
        Camera2CameraControlImpl camera2CameraControlImpl = this.f1443i;
        ArrayList arrayList = new ArrayList(collection);
        if (arrayList.isEmpty()) {
            return;
        }
        synchronized (camera2CameraControlImpl.d) {
            camera2CameraControlImpl.q++;
        }
        ArrayList<UseCase> arrayList2 = new ArrayList(arrayList);
        HashSet hashSet = this.F;
        for (UseCase useCase : arrayList2) {
            String strA = A(useCase);
            if (!hashSet.contains(strA)) {
                hashSet.add(strA);
                useCase.v();
                useCase.t();
            }
        }
        try {
            this.d.execute(new k(this, new ArrayList(I(arrayList)), 0));
        } catch (RejectedExecutionException unused) {
            w("Unable to attach use cases.");
            camera2CameraControlImpl.o();
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void j(Collection collection) {
        ArrayList arrayList = new ArrayList(collection);
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(I(arrayList));
        for (UseCase useCase : new ArrayList(arrayList)) {
            String strA = A(useCase);
            HashSet hashSet = this.F;
            if (hashSet.contains(strA)) {
                useCase.w();
                hashSet.remove(strA);
            }
        }
        this.d.execute(new k(this, arrayList2, 1));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final CameraInfoInternal k() {
        return this.f1445k;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void m(UseCase useCase) {
        this.d.execute(new e(this, A(useCase), this.B ? useCase.o : useCase.p, useCase.f1995h, useCase.f1996i, useCase.c() == null ? null : StreamSharing.I(useCase), 0));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void n(CameraConfig cameraConfig) {
        if (cameraConfig == null) {
            cameraConfig = CameraConfigs.f2229a;
        }
        SessionProcessor sessionProcessorX = cameraConfig.x();
        this.G = cameraConfig;
        synchronized (this.H) {
            this.I = sessionProcessorX;
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void o() {
        this.d.execute(new g(this, 0));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final void q(boolean z) {
        this.B = z;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void r(UseCase useCase) {
        this.d.execute(new d(this, A(useCase), 2));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final ListenableFuture release() {
        return CallbackToFutureAdapter.a(new h(this, 4));
    }

    /* JADX WARN: Code duplicated, block: B:53:0x012c  */
    public final void s() {
        UseCaseAttachState useCaseAttachState = this.f1438b;
        SessionConfig.ValidatingBuilder validatingBuilderB = useCaseAttachState.b();
        LinkedHashMap linkedHashMap = useCaseAttachState.f2366a;
        SessionConfig sessionConfigB = validatingBuilderB.b();
        int size = Collections.unmodifiableList(sessionConfigB.g.f2268a).size();
        int size2 = sessionConfigB.b().size();
        MeteringRepeatingSession meteringRepeatingSession = this.C;
        boolean z = false;
        int i2 = 1;
        if (meteringRepeatingSession == null ? false : useCaseAttachState.e(z(meteringRepeatingSession))) {
            boolean z2 = size != 1 || size2 == 1;
            if (z2 || B(this.C)) {
                if (this.C != null) {
                    StringBuilder sb = new StringBuilder("MeteringRepeating");
                    this.C.getClass();
                    sb.append(this.C.hashCode());
                    String string = sb.toString();
                    if (linkedHashMap.containsKey(string)) {
                        UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap.get(string);
                        useCaseAttachInfo.f2370e = false;
                        if (!useCaseAttachInfo.f2371f) {
                            linkedHashMap.remove(string);
                        }
                    }
                    StringBuilder sb2 = new StringBuilder("MeteringRepeating");
                    this.C.getClass();
                    sb2.append(this.C.hashCode());
                    String string2 = sb2.toString();
                    if (linkedHashMap.containsKey(string2)) {
                        UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo2 = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap.get(string2);
                        useCaseAttachInfo2.f2371f = false;
                        if (!useCaseAttachInfo2.f2370e) {
                            linkedHashMap.remove(string2);
                        }
                    }
                    MeteringRepeatingSession meteringRepeatingSession2 = this.C;
                    meteringRepeatingSession2.getClass();
                    Logger.c(3, "MeteringRepeating");
                    ImmediateSurface immediateSurface = meteringRepeatingSession2.f1598a;
                    if (immediateSurface != null) {
                        immediateSurface.a();
                    }
                    meteringRepeatingSession2.f1598a = null;
                    this.C = null;
                }
                if (z2) {
                    z = true;
                }
            } else {
                z = true;
            }
        } else if (size != 0 || size2 <= 0) {
            z = true;
        } else {
            if (this.C == null) {
                this.C = new MeteringRepeatingSession(this.f1445k.f1471b, this.K, new h(this, i2));
            }
            if (!B(this.C)) {
                MeteringRepeatingSession meteringRepeatingSession3 = this.C;
                if (meteringRepeatingSession3 != null) {
                    String strZ = z(meteringRepeatingSession3);
                    MeteringRepeatingSession meteringRepeatingSession4 = this.C;
                    SessionConfig sessionConfig = meteringRepeatingSession4.f1599b;
                    MeteringRepeatingSession.MeteringRepeatingConfig meteringRepeatingConfig = meteringRepeatingSession4.f1600c;
                    UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
                    List listSingletonList = Collections.singletonList(captureType);
                    LinkedHashMap linkedHashMap2 = useCaseAttachState.f2366a;
                    UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo3 = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap2.get(strZ);
                    if (useCaseAttachInfo3 == null) {
                        useCaseAttachInfo3 = new UseCaseAttachState.UseCaseAttachInfo(sessionConfig, meteringRepeatingConfig, null, listSingletonList);
                        linkedHashMap2.put(strZ, useCaseAttachInfo3);
                    }
                    useCaseAttachInfo3.f2370e = true;
                    useCaseAttachState.f(strZ, sessionConfig, meteringRepeatingConfig, null, listSingletonList);
                    MeteringRepeatingSession meteringRepeatingSession5 = this.C;
                    SessionConfig sessionConfig2 = meteringRepeatingSession5.f1599b;
                    MeteringRepeatingSession.MeteringRepeatingConfig meteringRepeatingConfig2 = meteringRepeatingSession5.f1600c;
                    List listSingletonList2 = Collections.singletonList(captureType);
                    LinkedHashMap linkedHashMap3 = useCaseAttachState.f2366a;
                    UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo4 = (UseCaseAttachState.UseCaseAttachInfo) linkedHashMap3.get(strZ);
                    if (useCaseAttachInfo4 == null) {
                        useCaseAttachInfo4 = new UseCaseAttachState.UseCaseAttachInfo(sessionConfig2, meteringRepeatingConfig2, null, listSingletonList2);
                        linkedHashMap3.put(strZ, useCaseAttachInfo4);
                    }
                    useCaseAttachInfo4.f2371f = true;
                }
                z = true;
            }
        }
        this.f1443i.getClass();
        if (z) {
            return;
        }
        Logger.a("Camera2CameraImpl");
    }

    public final void t() {
        Preconditions.f("closeCamera should only be called in a CLOSING, RELEASING or REOPENING (with error) state. Current state: " + this.f1441f + " (error: " + y(this.m) + ")", this.f1441f == InternalState.CLOSING || this.f1441f == InternalState.RELEASING || (this.f1441f == InternalState.REOPENING && this.m != 0));
        F();
        this.n.d();
    }

    public final String toString() {
        return String.format(Locale.US, "Camera@%x[id=%s]", Integer.valueOf(hashCode()), this.f1445k.f1470a);
    }

    public final void u() {
        int i2 = 1;
        int i3 = 0;
        Preconditions.f(null, this.f1441f == InternalState.RELEASING || this.f1441f == InternalState.CLOSING);
        Preconditions.f(null, this.r.isEmpty());
        if (!this.z) {
            x();
            return;
        }
        if (this.A) {
            w("Ignored since configAndClose is processing");
            return;
        }
        if (!this.t.f1453b) {
            this.z = false;
            x();
            w("Ignore configAndClose and finish the close flow directly since camera is unavailable.");
        } else {
            w("Open camera to configAndClose");
            ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new h(this, i3));
            this.A = true;
            listenableFutureA.addListener(new g(this, i2), this.d);
        }
    }

    public final CameraDevice.StateCallback v() {
        ArrayList arrayList = new ArrayList(this.f1438b.b().b().f2327c);
        arrayList.add(this.D.f1559f);
        arrayList.add(this.f1444j);
        return CameraDeviceStateCallbacks.a(arrayList);
    }

    public final void w(String str) {
        toString();
        Logger.c(3, "Camera2CameraImpl");
    }

    public final void x() {
        Preconditions.f(null, this.f1441f == InternalState.RELEASING || this.f1441f == InternalState.CLOSING);
        Preconditions.f(null, this.r.isEmpty());
        this.l = null;
        if (this.f1441f == InternalState.CLOSING) {
            G(InternalState.INITIALIZED);
            return;
        }
        this.f1439c.e(this.t);
        G(InternalState.RELEASED);
        CallbackToFutureAdapter.Completer completer = this.q;
        if (completer != null) {
            completer.b(null);
            this.q = null;
        }
    }
}

package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.CaptureSessionShouldUseMrirQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfigurator;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
final class ProcessingCaptureSession implements CaptureSessionInterface {
    public static final ArrayList m = new ArrayList();
    public static int n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionProcessor f1605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f1607c;
    public final CaptureSession d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SessionConfig f1609f;
    public Camera2RequestProcessor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SessionConfig f1610h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ProcessorState f1611i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f1608e = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile List f1612j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CaptureRequestOptions f1613k = new CaptureRequestOptions.Builder().b();
    public CaptureRequestOptions l = new CaptureRequestOptions.Builder().b();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ProcessorState {
        private static final /* synthetic */ ProcessorState[] $VALUES;
        public static final ProcessorState DE_INITIALIZED;
        public static final ProcessorState ON_CAPTURE_SESSION_ENDED;
        public static final ProcessorState ON_CAPTURE_SESSION_STARTED;
        public static final ProcessorState SESSION_INITIALIZED;
        public static final ProcessorState UNINITIALIZED;

        static {
            ProcessorState processorState = new ProcessorState("UNINITIALIZED", 0);
            UNINITIALIZED = processorState;
            ProcessorState processorState2 = new ProcessorState("SESSION_INITIALIZED", 1);
            SESSION_INITIALIZED = processorState2;
            ProcessorState processorState3 = new ProcessorState("ON_CAPTURE_SESSION_STARTED", 2);
            ON_CAPTURE_SESSION_STARTED = processorState3;
            ProcessorState processorState4 = new ProcessorState("ON_CAPTURE_SESSION_ENDED", 3);
            ON_CAPTURE_SESSION_ENDED = processorState4;
            ProcessorState processorState5 = new ProcessorState("DE_INITIALIZED", 4);
            DE_INITIALIZED = processorState5;
            $VALUES = new ProcessorState[]{processorState, processorState2, processorState3, processorState4, processorState5};
        }

        public static ProcessorState valueOf(String str) {
            return (ProcessorState) Enum.valueOf(ProcessorState.class, str);
        }

        public static ProcessorState[] values() {
            return (ProcessorState[]) $VALUES.clone();
        }
    }

    public static class SessionProcessorCaptureCallback implements SessionProcessor.CaptureCallback {
    }

    public ProcessingCaptureSession(SessionProcessor sessionProcessor, Camera2CameraInfoImpl camera2CameraInfoImpl, DynamicRangesCompat dynamicRangesCompat, Executor executor, ScheduledExecutorService scheduledExecutorService, Camera2CaptureRequestConfigurator camera2CaptureRequestConfigurator) {
        this.d = new CaptureSession(dynamicRangesCompat, new Quirks(Collections.EMPTY_LIST), DeviceQuirks.f1731a.b(CaptureSessionShouldUseMrirQuirk.class) != null, camera2CaptureRequestConfigurator);
        this.f1605a = sessionProcessor;
        this.f1606b = executor;
        this.f1607c = scheduledExecutorService;
        this.f1611i = ProcessorState.UNINITIALIZED;
        n++;
        Logger.c(3, "ProcessingCaptureSession");
    }

    public static void i(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            Iterator it2 = captureConfig.f2271e.iterator();
            while (it2.hasNext()) {
                ((CameraCaptureCallback) it2.next()).a(captureConfig.b());
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final ListenableFuture a(SessionConfig sessionConfig, CameraDevice cameraDevice, SynchronizedCaptureSession.Opener opener) {
        Preconditions.b(this.f1611i == ProcessorState.UNINITIALIZED, "Invalid state state:" + this.f1611i);
        Preconditions.b(sessionConfig.b().isEmpty() ^ true, "SessionConfig contains no surfaces");
        Logger.c(3, "ProcessingCaptureSession");
        List listB = sessionConfig.b();
        this.f1608e = listB;
        ScheduledExecutorService scheduledExecutorService = this.f1607c;
        Executor executor = this.f1606b;
        return FutureChain.from(DeferrableSurfaces.c(listB, executor, scheduledExecutorService)).transformAsync(new b0(this, sessionConfig, cameraDevice, opener, 0), executor).transform(new n(this, 6), executor);
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void b(List list) {
        if (list.isEmpty()) {
            return;
        }
        Objects.toString(this.f1611i);
        Logger.c(3, "ProcessingCaptureSession");
        int iOrdinal = this.f1611i.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            if (this.f1612j == null) {
                this.f1612j = list;
                return;
            } else {
                i(list);
                Logger.c(3, "ProcessingCaptureSession");
                return;
            }
        }
        if (iOrdinal != 2) {
            if (iOrdinal == 3 || iOrdinal == 4) {
                Objects.toString(this.f1611i);
                Logger.c(3, "ProcessingCaptureSession");
                i(list);
                return;
            }
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            int i2 = captureConfig.f2270c;
            if (i2 != 2 && i2 != 4) {
                Logger.c(3, "ProcessingCaptureSession");
                Iterator it2 = CaptureRequestOptions.Builder.c(captureConfig.f2269b).b().d().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        i(Arrays.asList(captureConfig));
                        break;
                    }
                    CaptureRequest.Key key = (CaptureRequest.Key) ((Config.Option) it2.next()).d();
                    if (key.equals(CaptureRequest.CONTROL_AF_TRIGGER) || key.equals(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER)) {
                        SessionProcessor sessionProcessor = this.f1605a;
                        captureConfig.b();
                        sessionProcessor.getClass();
                        break;
                    }
                }
            } else {
                CaptureRequestOptions.Builder builderC = CaptureRequestOptions.Builder.c(captureConfig.f2269b);
                OptionsBundle optionsBundle = captureConfig.f2269b;
                Config.Option option = CaptureConfig.f2265i;
                if (optionsBundle.M.containsKey(option)) {
                    CaptureRequest.Key key2 = CaptureRequest.JPEG_ORIENTATION;
                    Integer num = (Integer) optionsBundle.a(option);
                    builderC.f1857a.o(Camera2ImplConfig.c0(key2), num);
                }
                Config.Option option2 = CaptureConfig.f2266j;
                if (optionsBundle.M.containsKey(option2)) {
                    CaptureRequest.Key key3 = CaptureRequest.JPEG_QUALITY;
                    Byte bValueOf = Byte.valueOf(((Integer) optionsBundle.a(option2)).byteValue());
                    builderC.f1857a.o(Camera2ImplConfig.c0(key3), bValueOf);
                }
                CaptureRequestOptions captureRequestOptionsB = builderC.b();
                this.l = captureRequestOptionsB;
                CaptureRequestOptions captureRequestOptions = this.f1613k;
                Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
                MutableOptionsBundle mutableOptionsBundle = builder.f1383a;
                Config.OptionPriority optionPriority = Config.OptionPriority.OPTIONAL;
                for (Config.Option option3 : captureRequestOptions.d()) {
                    mutableOptionsBundle.f0(option3, optionPriority, captureRequestOptions.a(option3));
                }
                Config.OptionPriority optionPriority2 = Config.OptionPriority.OPTIONAL;
                for (Config.Option option4 : captureRequestOptionsB.d()) {
                    mutableOptionsBundle.f0(option4, optionPriority2, captureRequestOptionsB.a(option4));
                }
                SessionProcessor sessionProcessor2 = this.f1605a;
                builder.b();
                sessionProcessor2.h();
                SessionProcessor sessionProcessor3 = this.f1605a;
                captureConfig.b();
                sessionProcessor3.b();
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final boolean c() {
        return this.d.c();
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void close() {
        Objects.toString(this.f1611i);
        Logger.c(3, "ProcessingCaptureSession");
        if (this.f1611i == ProcessorState.ON_CAPTURE_SESSION_STARTED) {
            Logger.c(3, "ProcessingCaptureSession");
            this.f1605a.c();
            Camera2RequestProcessor camera2RequestProcessor = this.g;
            if (camera2RequestProcessor != null) {
                synchronized (camera2RequestProcessor.f1530a) {
                }
            }
            this.f1611i = ProcessorState.ON_CAPTURE_SESSION_ENDED;
        }
        this.d.close();
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void d() {
        Logger.c(3, "ProcessingCaptureSession");
        if (this.f1612j != null) {
            for (CaptureConfig captureConfig : this.f1612j) {
                Iterator it = captureConfig.f2271e.iterator();
                while (it.hasNext()) {
                    ((CameraCaptureCallback) it.next()).a(captureConfig.b());
                }
            }
            this.f1612j = null;
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void e(HashMap map) {
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final List f() {
        return this.f1612j != null ? this.f1612j : Collections.EMPTY_LIST;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final SessionConfig g() {
        return this.f1609f;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final void h(SessionConfig sessionConfig) {
        Logger.c(3, "ProcessingCaptureSession");
        this.f1609f = sessionConfig;
        if (sessionConfig == null) {
            return;
        }
        Camera2RequestProcessor camera2RequestProcessor = this.g;
        if (camera2RequestProcessor != null) {
            synchronized (camera2RequestProcessor.f1530a) {
            }
        }
        if (this.f1611i == ProcessorState.ON_CAPTURE_SESSION_STARTED) {
            CaptureRequestOptions.Builder builderC = CaptureRequestOptions.Builder.c(sessionConfig.g.f2269b);
            Integer numE = Camera2CaptureRequestBuilder.e(sessionConfig.g);
            if (numE != null) {
                builderC.f1857a.o(Camera2ImplConfig.c0(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE), numE);
            }
            CaptureRequestOptions captureRequestOptionsB = builderC.b();
            this.f1613k = captureRequestOptionsB;
            CaptureRequestOptions captureRequestOptions = this.l;
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            MutableOptionsBundle mutableOptionsBundle = builder.f1383a;
            Config.OptionPriority optionPriority = Config.OptionPriority.OPTIONAL;
            for (Config.Option option : captureRequestOptionsB.d()) {
                mutableOptionsBundle.f0(option, optionPriority, captureRequestOptionsB.a(option));
            }
            Config.OptionPriority optionPriority2 = Config.OptionPriority.OPTIONAL;
            for (Config.Option option2 : captureRequestOptions.d()) {
                mutableOptionsBundle.f0(option2, optionPriority2, captureRequestOptions.a(option2));
            }
            SessionProcessor sessionProcessor = this.f1605a;
            builder.b();
            sessionProcessor.h();
            for (DeferrableSurface deferrableSurface : Collections.unmodifiableList(sessionConfig.g.f2268a)) {
                if (Objects.equals(deferrableSurface.f2294j, Preview.class) || Objects.equals(deferrableSurface.f2294j, StreamSharing.class)) {
                    SessionProcessor sessionProcessor2 = this.f1605a;
                    TagBundle tagBundle = sessionConfig.g.g;
                    sessionProcessor2.i();
                    return;
                }
            }
            this.f1605a.a();
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public final ListenableFuture release() {
        Objects.toString(this.f1611i);
        Logger.c(3, "ProcessingCaptureSession");
        ListenableFuture listenableFutureRelease = this.d.release();
        int iOrdinal = this.f1611i.ordinal();
        if (iOrdinal == 1 || iOrdinal == 3) {
            listenableFutureRelease.addListener(new m(this, 4), CameraXExecutors.a());
        }
        this.f1611i = ProcessorState.DE_INITIALIZED;
        return listenableFutureRelease;
    }
}

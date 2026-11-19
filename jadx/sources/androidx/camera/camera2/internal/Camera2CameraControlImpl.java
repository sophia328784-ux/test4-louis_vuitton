package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.util.ArrayMap;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.internal.compat.workaround.OverrideAeModeForStillCapture;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.CameraControl;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.MainThreadAsyncHandler;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ac;
import defpackage.e5;
import defpackage.ki;
import defpackage.q6;
import defpackage.r51;
import defpackage.r71;
import defpackage.s3;
import defpackage.t6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class Camera2CameraControlImpl implements CameraControlInternal {
    public final CameraCaptureCallbackSet A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraControlSessionCallback f1416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f1417c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CameraControlInternal.ControlUpdateCallback f1419f;
    public final SessionConfig.Builder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FocusMeteringControl f1420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ZoomControl f1421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TorchControl f1422j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LowLightBoostControl f1423k;
    public final ExposureControl l;
    public final ZslControlImpl m;
    public final Camera2CameraControl n;
    public final Camera2CapturePipeline o;
    public final VideoUsageControl p;
    public int q;
    public ImageCapture.ScreenFlash r;
    public volatile int s;
    public volatile int t;
    public volatile int u;
    public final AutoFlashAEModeDisabler v;
    public final AtomicLong w;
    public volatile ListenableFuture x;
    public int y;
    public long z;

    public static final class CameraCaptureCallbackSet extends CameraCaptureCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f1424a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayMap f1425b = new ArrayMap();

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void a(int i2) {
            for (CameraCaptureCallback cameraCaptureCallback : this.f1424a) {
                try {
                    ((Executor) this.f1425b.get(cameraCaptureCallback)).execute(new t6(cameraCaptureCallback, i2, 3));
                } catch (RejectedExecutionException unused) {
                    Logger.b("Camera2CameraControlImp");
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void b(int i2, CameraCaptureResult cameraCaptureResult) {
            for (CameraCaptureCallback cameraCaptureCallback : this.f1424a) {
                try {
                    ((Executor) this.f1425b.get(cameraCaptureCallback)).execute(new q6(cameraCaptureCallback, i2, cameraCaptureResult, 2));
                } catch (RejectedExecutionException unused) {
                    Logger.b("Camera2CameraControlImp");
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void c(int i2, CameraCaptureFailure cameraCaptureFailure) {
            for (CameraCaptureCallback cameraCaptureCallback : this.f1424a) {
                try {
                    ((Executor) this.f1425b.get(cameraCaptureCallback)).execute(new q6(cameraCaptureCallback, i2, cameraCaptureFailure, 1));
                } catch (RejectedExecutionException unused) {
                    Logger.b("Camera2CameraControlImp");
                }
            }
        }
    }

    public static final class CameraControlSessionCallback extends CameraCaptureSession.CaptureCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f1426c = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f1427a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f1428b;

        public CameraControlSessionCallback(Executor executor) {
            this.f1428b = executor;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            this.f1428b.execute(new d(this, totalCaptureResult, 1));
        }
    }

    public interface CaptureResultListener {
        boolean a(TotalCaptureResult totalCaptureResult);
    }

    public Camera2CameraControlImpl(CameraCharacteristicsCompat cameraCharacteristicsCompat, ScheduledExecutorService scheduledExecutorService, Executor executor, CameraControlInternal.ControlUpdateCallback controlUpdateCallback, Quirks quirks) {
        SessionConfig.Builder builder = new SessionConfig.Builder();
        this.g = builder;
        this.q = 0;
        this.s = 0;
        this.u = 2;
        this.w = new AtomicLong(0L);
        this.x = Futures.g(null);
        this.y = 1;
        this.z = 0L;
        CameraCaptureCallbackSet cameraCaptureCallbackSet = new CameraCaptureCallbackSet();
        this.A = cameraCaptureCallbackSet;
        this.f1418e = cameraCharacteristicsCompat;
        this.f1419f = controlUpdateCallback;
        this.f1417c = executor;
        this.p = new VideoUsageControl(executor);
        CameraControlSessionCallback cameraControlSessionCallback = new CameraControlSessionCallback(executor);
        this.f1416b = cameraControlSessionCallback;
        builder.w(this.y);
        builder.g(new CaptureCallbackContainer(cameraControlSessionCallback));
        builder.g(cameraCaptureCallbackSet);
        this.l = new ExposureControl(this, executor);
        this.f1420h = new FocusMeteringControl(this, scheduledExecutorService, executor, quirks);
        this.f1421i = new ZoomControl(this, cameraCharacteristicsCompat, executor);
        this.f1422j = new TorchControl(this, cameraCharacteristicsCompat, executor);
        this.t = cameraCharacteristicsCompat.b();
        this.f1423k = new LowLightBoostControl(this, cameraCharacteristicsCompat, executor);
        this.m = new ZslControlImpl(cameraCharacteristicsCompat, executor);
        this.v = new AutoFlashAEModeDisabler(quirks);
        this.n = new Camera2CameraControl(this, executor);
        this.o = new Camera2CapturePipeline(this, cameraCharacteristicsCompat, quirks, executor, scheduledExecutorService);
    }

    public static int r(CameraCharacteristicsCompat cameraCharacteristicsCompat, int i2) {
        int[] iArr = (int[]) cameraCharacteristicsCompat.a(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        if (iArr == null) {
            return 0;
        }
        if (t(i2, iArr)) {
            return i2;
        }
        return t(1, iArr) ? 1 : 0;
    }

    public static boolean t(int i2, int[] iArr) {
        for (int i3 : iArr) {
            if (i2 == i3) {
                return true;
            }
        }
        return false;
    }

    public static boolean u(TotalCaptureResult totalCaptureResult, long j2) {
        Long l;
        if (totalCaptureResult.getRequest() == null) {
            return false;
        }
        Object tag = totalCaptureResult.getRequest().getTag();
        return (tag instanceof TagBundle) && (l = (Long) ((TagBundle) tag).f2362a.get("CameraControlSessionUpdateId")) != null && l.longValue() >= j2;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void a() {
        VideoUsageControl videoUsageControl = this.p;
        videoUsageControl.f1655a.execute(new r51(videoUsageControl, 0));
    }

    @Override // androidx.camera.core.CameraControl
    public final ListenableFuture b(float f2) {
        ListenableFuture listenableFutureE;
        ZoomState zoomStateF;
        if (!s()) {
            return Futures.e(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        ZoomControl zoomControl = this.f1421i;
        synchronized (zoomControl.f1659c) {
            try {
                zoomControl.f1659c.e(f2);
                zoomStateF = ImmutableZoomState.f(zoomControl.f1659c);
            } catch (IllegalArgumentException e2) {
                listenableFutureE = Futures.e(e2);
            }
        }
        zoomControl.b(zoomStateF);
        listenableFutureE = CallbackToFutureAdapter.a(new j(zoomControl, zoomStateF, 4));
        return Futures.h(listenableFutureE);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void c(int i2) {
        if (!s()) {
            Logger.c(5, "Camera2CameraControlImp");
            return;
        }
        this.u = i2;
        Logger.c(3, "Camera2CameraControlImp");
        ZslControlImpl zslControlImpl = this.m;
        boolean z = true;
        if (this.u != 1 && this.u != 0) {
            z = false;
        }
        zslControlImpl.f1669e = z;
        this.x = Futures.h(CallbackToFutureAdapter.a(new s3(this, 12)));
    }

    @Override // androidx.camera.core.CameraControl
    public final ListenableFuture d(final boolean z) {
        ListenableFuture listenableFutureA;
        if (!s()) {
            return Futures.e(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        final TorchControl torchControl = this.f1422j;
        if (torchControl.d) {
            torchControl.b(z ? 1 : 0);
            final int i2 = z ? 1 : 0;
            listenableFutureA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.c0
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object i(final CallbackToFutureAdapter.Completer completer) {
                    final TorchControl torchControl2 = torchControl;
                    Executor executor = torchControl2.f1651e;
                    final int i3 = i2;
                    executor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.e0
                        @Override // java.lang.Runnable
                        public final void run() {
                            torchControl2.a(completer, i3);
                        }
                    });
                    return "enableTorch: " + z;
                }
            });
        } else {
            Logger.c(3, "TorchControl");
            listenableFutureA = Futures.e(new IllegalStateException("No flash unit"));
        }
        return Futures.h(listenableFutureA);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final Config e() {
        Camera2ImplConfig camera2ImplConfigB;
        Camera2CameraControl camera2CameraControl = this.n;
        synchronized (camera2CameraControl.f1851e) {
            camera2ImplConfigB = camera2CameraControl.f1852f.b();
        }
        return camera2ImplConfigB;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void f() {
        VideoUsageControl videoUsageControl = this.p;
        videoUsageControl.f1655a.execute(new r51(videoUsageControl, 1));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void g(Config config) {
        Camera2CameraControl camera2CameraControl = this.n;
        CaptureRequestOptions captureRequestOptionsB = CaptureRequestOptions.Builder.c(config).b();
        synchronized (camera2CameraControl.f1851e) {
            Camera2ImplConfig.Builder builder = camera2CameraControl.f1852f;
            builder.getClass();
            Config.OptionPriority optionPriority = Config.OptionPriority.OPTIONAL;
            for (Config.Option option : captureRequestOptionsB.d()) {
                builder.f1383a.f0(option, optionPriority, captureRequestOptionsB.a(option));
            }
        }
        Futures.h(CallbackToFutureAdapter.a(new ki(camera2CameraControl, 0))).addListener(new e5(2), CameraXExecutors.a());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void h() {
        this.m.a();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void i(SessionConfig.Builder builder) {
        StreamConfigurationMap streamConfigurationMap;
        HashMap map;
        StreamConfigurationMap streamConfigurationMap2;
        int[] validOutputFormatsForInput;
        ZslControlImpl zslControlImpl = this.m;
        Executor executor = zslControlImpl.f1667b;
        CameraCharacteristicsCompat cameraCharacteristicsCompat = zslControlImpl.f1666a;
        zslControlImpl.a();
        if (zslControlImpl.d) {
            builder.w(1);
            return;
        }
        if (zslControlImpl.g) {
            builder.w(1);
            return;
        }
        try {
            streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristicsCompat.a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        } catch (AssertionError e2) {
            e2.getMessage();
            Logger.a("ZslControlImpl");
            streamConfigurationMap = null;
        }
        if (streamConfigurationMap == null || streamConfigurationMap.getInputFormats() == null) {
            map = new HashMap();
        } else {
            map = new HashMap();
            for (int i2 : streamConfigurationMap.getInputFormats()) {
                Size[] inputSizes = streamConfigurationMap.getInputSizes(i2);
                if (inputSizes != null) {
                    Arrays.sort(inputSizes, new CompareSizesByArea(true));
                    map.put(Integer.valueOf(i2), inputSizes[0]);
                }
            }
        }
        if (zslControlImpl.f1670f && !map.isEmpty() && map.containsKey(34) && (streamConfigurationMap2 = (StreamConfigurationMap) cameraCharacteristicsCompat.a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)) != null && (validOutputFormatsForInput = streamConfigurationMap2.getValidOutputFormatsForInput(34)) != null) {
            for (int i3 : validOutputFormatsForInput) {
                if (i3 == 256) {
                    Size size = (Size) map.get(34);
                    MetadataImageReader metadataImageReader = new MetadataImageReader(size.getWidth(), size.getHeight(), 34, 9);
                    SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(metadataImageReader);
                    Surface surface = safeCloseImageReaderProxy.getSurface();
                    Objects.requireNonNull(surface);
                    ImmediateSurface immediateSurface = new ImmediateSurface(surface, new Size(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight()), 34);
                    final ZslControlImpl.ImageWriterHolder imageWriterHolder = new ZslControlImpl.ImageWriterHolder(executor);
                    zslControlImpl.f1671h = safeCloseImageReaderProxy;
                    zslControlImpl.f1672i = immediateSurface;
                    zslControlImpl.f1673j = imageWriterHolder;
                    safeCloseImageReaderProxy.e(new n(zslControlImpl, 7), CameraXExecutors.b());
                    Futures.h(immediateSurface.f2290e).addListener(new d(safeCloseImageReaderProxy, imageWriterHolder, 8), executor);
                    builder.i(immediateSurface, DynamicRange.d, -1);
                    builder.c(metadataImageReader.f1938b);
                    builder.h(new CameraCaptureSession.StateCallback() { // from class: androidx.camera.camera2.internal.ZslControlImpl.1
                        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                        public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                        }

                        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                        public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
                            Surface inputSurface = cameraCaptureSession.getInputSurface();
                            if (inputSurface != null) {
                                ImageWriter imageWriterNewInstance = ImageWriter.newInstance(inputSurface, 1);
                                ImageWriterHolder imageWriterHolder2 = imageWriterHolder;
                                if (imageWriterHolder2.f1676b.get()) {
                                    if (imageWriterHolder2.f1675a != null) {
                                        Logger.c(5, "ZslControlImpl");
                                        imageWriterHolder2.f1675a.close();
                                    }
                                    imageWriterHolder2.f1675a = imageWriterNewInstance;
                                }
                            }
                        }
                    });
                    builder.s(new InputConfiguration(safeCloseImageReaderProxy.getWidth(), safeCloseImageReaderProxy.getHeight(), safeCloseImageReaderProxy.b()));
                    return;
                }
            }
        }
        builder.w(1);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final ListenableFuture j(final int i2, final int i3, final List list) {
        if (s()) {
            final int i4 = this.u;
            return FutureChain.from(Futures.h(this.x)).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.a
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    Camera2CapturePipeline camera2CapturePipeline = this.f1678b.o;
                    int i5 = i2;
                    final int i6 = i4;
                    final Camera2CapturePipeline.Pipeline pipelineA = camera2CapturePipeline.a(i5, i6, i3);
                    FutureChain futureChainFrom = FutureChain.from(pipelineA.a(i6));
                    final List list2 = list;
                    AsyncFunction asyncFunction = new AsyncFunction() { // from class: androidx.camera.camera2.internal.o
                        /* JADX WARN: Code duplicated, block: B:28:0x0093  */
                        /* JADX WARN: Code duplicated, block: B:33:0x00a0  */
                        @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                        public final ListenableFuture apply(Object obj2) throws Exception {
                            int iD;
                            int iC;
                            CameraCaptureResult cameraCaptureResult;
                            CameraCaptureResult cameraCaptureResult2;
                            ImageProxy imageProxy;
                            ImageWriter imageWriter;
                            Camera2CapturePipeline.Pipeline pipeline = pipelineA;
                            Camera2CameraControlImpl camera2CameraControlImpl = pipeline.d;
                            ArrayList arrayList = new ArrayList();
                            ArrayList<CaptureConfig> arrayList2 = new ArrayList();
                            for (CaptureConfig captureConfig : list2) {
                                CaptureConfig.Builder builder = new CaptureConfig.Builder(captureConfig);
                                int i7 = captureConfig.f2270c;
                                if (i7 == 5) {
                                    ZslControlImpl zslControlImpl = camera2CameraControlImpl.m;
                                    if (zslControlImpl.f1669e || zslControlImpl.d) {
                                        cameraCaptureResult2 = null;
                                    } else {
                                        try {
                                            imageProxy = (ImageProxy) zslControlImpl.f1668c.a();
                                        } catch (NoSuchElementException unused) {
                                            Logger.a("ZslControlImpl");
                                            imageProxy = null;
                                        }
                                        if (imageProxy != null) {
                                            ZslControlImpl.ImageWriterHolder imageWriterHolder = camera2CameraControlImpl.m.f1673j;
                                            if (imageWriterHolder != null) {
                                                Image imageO = imageProxy.O();
                                                if (!imageWriterHolder.f1676b.get() || (imageWriter = imageWriterHolder.f1675a) == null || imageO == null) {
                                                    Logger.a("Camera2CapturePipeline");
                                                } else {
                                                    try {
                                                        imageWriter.queueInputImage(imageO);
                                                        ImageWriter imageWriter2 = imageWriterHolder.f1675a;
                                                        final r71 r71Var = new r71(imageProxy);
                                                        final Executor executor = imageWriterHolder.f1677c;
                                                        imageWriter2.setOnImageReleasedListener(new ImageWriter.OnImageReleasedListener() { // from class: s20
                                                            @Override // android.media.ImageWriter.OnImageReleasedListener
                                                            public final void onImageReleased(ImageWriter imageWriter3) {
                                                                executor.execute(new jr(r71Var, imageWriter3, 21));
                                                            }
                                                        }, MainThreadAsyncHandler.a());
                                                        ImageInfo imageInfoP1 = imageProxy.p1();
                                                        cameraCaptureResult2 = imageInfoP1 instanceof CameraCaptureResultImageInfo ? ((CameraCaptureResultImageInfo) imageInfoP1).f2471a : null;
                                                    } catch (IllegalStateException e2) {
                                                        e2.getMessage();
                                                        Logger.a("ZslControlImpl");
                                                        Logger.a("Camera2CapturePipeline");
                                                    }
                                                }
                                            } else {
                                                Logger.a("Camera2CapturePipeline");
                                            }
                                            if (cameraCaptureResult2 == null) {
                                                imageProxy.close();
                                            }
                                        } else {
                                            Logger.c(3, "Camera2CapturePipeline");
                                            cameraCaptureResult2 = null;
                                        }
                                    }
                                } else {
                                    cameraCaptureResult2 = null;
                                }
                                if (cameraCaptureResult2 != null) {
                                    builder.f2279h = cameraCaptureResult2;
                                } else {
                                    int i8 = (pipeline.f1495a != 3 || pipeline.f1499f) ? (i7 == -1 || i7 == 5) ? 2 : -1 : 4;
                                    if (i8 != -1) {
                                        builder.f2276c = i8;
                                    }
                                    Logger.c(3, "Camera2CapturePipeline");
                                }
                                OverrideAeModeForStillCapture overrideAeModeForStillCapture = pipeline.f1498e;
                                if (overrideAeModeForStillCapture.f1774b && i6 == 0 && overrideAeModeForStillCapture.f1773a) {
                                    Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
                                    builder2.c(CaptureRequest.CONTROL_AE_MODE, 3);
                                    builder.c(builder2.b());
                                }
                                arrayList.add(CallbackToFutureAdapter.a(new n(pipeline, builder)));
                                arrayList2.add(builder.e());
                            }
                            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                            ArrayList arrayList3 = new ArrayList();
                            for (CaptureConfig captureConfig2 : arrayList2) {
                                CaptureConfig.Builder builder3 = new CaptureConfig.Builder(captureConfig2);
                                if (captureConfig2.f2270c == 5 && (cameraCaptureResult = captureConfig2.f2273h) != null) {
                                    builder3.f2279h = cameraCaptureResult;
                                }
                                if (Collections.unmodifiableList(captureConfig2.f2268a).isEmpty() && captureConfig2.f2272f) {
                                    HashSet hashSet = builder3.f2274a;
                                    if (hashSet.isEmpty()) {
                                        UseCaseAttachState useCaseAttachState = camera2CameraImpl.f1438b;
                                        useCaseAttachState.getClass();
                                        ArrayList arrayList4 = new ArrayList();
                                        for (Map.Entry entry : useCaseAttachState.f2366a.entrySet()) {
                                            UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) entry.getValue();
                                            if (useCaseAttachInfo.f2371f && useCaseAttachInfo.f2370e) {
                                                arrayList4.add(((UseCaseAttachState.UseCaseAttachInfo) entry.getValue()).f2367a);
                                            }
                                        }
                                        Iterator it = Collections.unmodifiableCollection(arrayList4).iterator();
                                        while (it.hasNext()) {
                                            CaptureConfig captureConfig3 = ((SessionConfig) it.next()).g;
                                            List listUnmodifiableList = Collections.unmodifiableList(captureConfig3.f2268a);
                                            if (!listUnmodifiableList.isEmpty()) {
                                                if (captureConfig3.c() != 0 && (iC = captureConfig3.c()) != 0) {
                                                    builder3.f2275b.o(UseCaseConfig.F, Integer.valueOf(iC));
                                                }
                                                if (captureConfig3.d() != 0 && (iD = captureConfig3.d()) != 0) {
                                                    builder3.f2275b.o(UseCaseConfig.G, Integer.valueOf(iD));
                                                }
                                                Iterator it2 = listUnmodifiableList.iterator();
                                                while (it2.hasNext()) {
                                                    builder3.d((DeferrableSurface) it2.next());
                                                }
                                            }
                                        }
                                        if (hashSet.isEmpty()) {
                                            Logger.c(5, "Camera2CameraImpl");
                                        }
                                    } else {
                                        Logger.c(5, "Camera2CameraImpl");
                                    }
                                }
                                arrayList3.add(builder3.e());
                            }
                            camera2CameraImpl.w("Issue capture request");
                            camera2CameraImpl.n.b(arrayList3);
                            return Futures.b(arrayList);
                        }
                    };
                    Executor executor = pipelineA.f1496b;
                    FutureChain futureChainTransformAsync = futureChainFrom.transformAsync(asyncFunction, executor);
                    futureChainTransformAsync.addListener(new m(pipelineA, 1), executor);
                    return Futures.h(futureChainTransformAsync);
                }
            }, this.f1417c);
        }
        Logger.c(5, "Camera2CameraControlImp");
        return Futures.e(new CameraControl.OperationCanceledException("Camera is not active."));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void k(ImageCapture.ScreenFlash screenFlash) {
        this.r = screenFlash;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void l() {
        Camera2CameraControl camera2CameraControl = this.n;
        synchronized (camera2CameraControl.f1851e) {
            camera2CameraControl.f1852f = new Camera2ImplConfig.Builder();
        }
        Futures.h(CallbackToFutureAdapter.a(new ki(camera2CameraControl, 1))).addListener(new e5(2), CameraXExecutors.a());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final ListenableFuture m(final int i2) {
        if (s()) {
            final int i3 = this.u;
            return FutureChain.from(Futures.h(this.x)).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.c
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    Camera2CapturePipeline camera2CapturePipeline = this.f1690b.o;
                    int i4 = i2;
                    int i5 = i3;
                    return Futures.g(new Camera2CapturePipeline.CameraCapturePipelineImpl(camera2CapturePipeline.a(i4, i5, 1), camera2CapturePipeline.f1484e, i5));
                }
            }, this.f1417c);
        }
        Logger.c(5, "Camera2CameraControlImp");
        return Futures.e(new CameraControl.OperationCanceledException("Camera is not active."));
    }

    public final void n(CaptureResultListener captureResultListener) {
        this.f1416b.f1427a.add(captureResultListener);
    }

    public final void o() {
        synchronized (this.d) {
            try {
                int i2 = this.q;
                if (i2 == 0) {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
                this.q = i2 - 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(int i2) {
        int iD;
        int iC;
        CameraCaptureResult cameraCaptureResult;
        this.s = i2;
        if (i2 == 0) {
            CaptureConfig.Builder builder = new CaptureConfig.Builder();
            builder.f2276c = this.y;
            builder.f2278f = true;
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            builder2.c(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(r(this.f1418e, 1)));
            builder2.c(CaptureRequest.FLASH_MODE, 0);
            builder.c(builder2.b());
            List<CaptureConfig> listSingletonList = Collections.singletonList(builder.e());
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            listSingletonList.getClass();
            ArrayList arrayList = new ArrayList();
            for (CaptureConfig captureConfig : listSingletonList) {
                CaptureConfig.Builder builder3 = new CaptureConfig.Builder(captureConfig);
                HashSet hashSet = builder3.f2274a;
                if (captureConfig.f2270c == 5 && (cameraCaptureResult = captureConfig.f2273h) != null) {
                    builder3.f2279h = cameraCaptureResult;
                }
                if (Collections.unmodifiableList(captureConfig.f2268a).isEmpty() && captureConfig.f2272f) {
                    if (hashSet.isEmpty()) {
                        UseCaseAttachState useCaseAttachState = camera2CameraImpl.f1438b;
                        useCaseAttachState.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        for (Map.Entry entry : useCaseAttachState.f2366a.entrySet()) {
                            UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachState.UseCaseAttachInfo) entry.getValue();
                            if (useCaseAttachInfo.f2371f && useCaseAttachInfo.f2370e) {
                                arrayList2.add(((UseCaseAttachState.UseCaseAttachInfo) entry.getValue()).f2367a);
                            }
                        }
                        Iterator it = Collections.unmodifiableCollection(arrayList2).iterator();
                        while (it.hasNext()) {
                            CaptureConfig captureConfig2 = ((SessionConfig) it.next()).g;
                            List listUnmodifiableList = Collections.unmodifiableList(captureConfig2.f2268a);
                            if (!listUnmodifiableList.isEmpty()) {
                                if (captureConfig2.c() != 0 && (iC = captureConfig2.c()) != 0) {
                                    builder3.f2275b.o(UseCaseConfig.F, Integer.valueOf(iC));
                                }
                                if (captureConfig2.d() != 0 && (iD = captureConfig2.d()) != 0) {
                                    builder3.f2275b.o(UseCaseConfig.G, Integer.valueOf(iD));
                                }
                                Iterator it2 = listUnmodifiableList.iterator();
                                while (it2.hasNext()) {
                                    builder3.d((DeferrableSurface) it2.next());
                                }
                            }
                        }
                        if (hashSet.isEmpty()) {
                            Logger.c(5, "Camera2CameraImpl");
                        }
                    } else {
                        Logger.c(5, "Camera2CameraImpl");
                    }
                }
                arrayList.add(builder3.e());
            }
            camera2CameraImpl.w("Issue capture request");
            camera2CameraImpl.n.b(arrayList);
        }
        x();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:69:0x013a A[Catch: all -> 0x0166, LOOP:0: B:67:0x0134->B:69:0x013a, LOOP_END, TryCatch #0 {, blocks: (B:66:0x0126, B:67:0x0134, B:69:0x013a, B:70:0x014a), top: B:79:0x0126 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0126 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0039  */
    public final SessionConfig q() {
        int[] iArr;
        ExposureControl exposureControl;
        Camera2CameraControl camera2CameraControl;
        MutableOptionsBundle mutableOptionsBundle;
        Config.OptionPriority optionPriority;
        this.g.w(this.y);
        SessionConfig.Builder builder = this.g;
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        CaptureRequest.Key key = CaptureRequest.CONTROL_MODE;
        int i2 = 1;
        Config.OptionPriority optionPriority2 = Config.OptionPriority.REQUIRED;
        builder2.e(key, 1, optionPriority2);
        FocusMeteringControl focusMeteringControl = this.f1420h;
        focusMeteringControl.getClass();
        int i3 = 4;
        int i4 = 3;
        int i5 = focusMeteringControl.f1583e != 3 ? 4 : 3;
        CaptureRequest.Key key2 = CaptureRequest.CONTROL_AF_MODE;
        int[] iArr2 = (int[]) focusMeteringControl.f1580a.f1418e.a(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (iArr2 == null) {
            i3 = 0;
        } else if (t(i5, iArr2)) {
            i3 = i5;
        } else if (!t(4, iArr2)) {
            if (t(1, iArr2)) {
                i3 = 1;
            } else {
                i3 = 0;
            }
        }
        builder2.e(key2, Integer.valueOf(i3), optionPriority2);
        MeteringRectangle[] meteringRectangleArr = focusMeteringControl.f1584f;
        if (meteringRectangleArr.length != 0) {
            builder2.e(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr, optionPriority2);
        }
        MeteringRectangle[] meteringRectangleArr2 = focusMeteringControl.g;
        if (meteringRectangleArr2.length != 0) {
            builder2.e(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr2, optionPriority2);
        }
        MeteringRectangle[] meteringRectangleArr3 = focusMeteringControl.f1585h;
        if (meteringRectangleArr3.length != 0) {
            builder2.e(CaptureRequest.CONTROL_AWB_REGIONS, meteringRectangleArr3, optionPriority2);
        }
        this.f1421i.f1660e.b(builder2);
        int i6 = this.f1420h.f1586i ? 5 : 1;
        if (this.s == 0) {
            int i7 = this.u;
            if (i7 == 0) {
                AutoFlashAEModeDisabler autoFlashAEModeDisabler = this.v;
                if (autoFlashAEModeDisabler.f1761a || autoFlashAEModeDisabler.f1762b) {
                    i4 = 1;
                } else {
                    i4 = 2;
                }
            } else if (i7 != 1) {
                if (i7 == 2) {
                    i4 = 1;
                }
            }
            builder2.e(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(r(this.f1418e, i4)), optionPriority2);
            CaptureRequest.Key key3 = CaptureRequest.CONTROL_AWB_MODE;
            iArr = (int[]) this.f1418e.a(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES);
            if (iArr != null || (!t(1, iArr) && !t(1, iArr))) {
                i2 = 0;
            }
            builder2.e(key3, Integer.valueOf(i2), optionPriority2);
            exposureControl = this.l;
            exposureControl.getClass();
            CaptureRequest.Key key4 = CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION;
            synchronized (exposureControl.f1575a.f1578a) {
            }
            builder2.e(key4, 0, optionPriority2);
            camera2CameraControl = this.n;
            synchronized (camera2CameraControl.f1851e) {
                mutableOptionsBundle = camera2CameraControl.f1852f.f1383a;
                optionPriority = Config.OptionPriority.ALWAYS_OVERRIDE;
                for (Config.Option option : mutableOptionsBundle.d()) {
                    builder2.f1383a.f0(option, optionPriority, mutableOptionsBundle.a(option));
                }
            }
            builder.r(builder2.b());
            this.g.j("CameraControlSessionUpdateId", Long.valueOf(this.z));
            return this.g.k();
        }
        builder2.e(CaptureRequest.FLASH_MODE, 2, optionPriority2);
        if (Build.VERSION.SDK_INT >= 35) {
            if (this.s == 1) {
                builder2.e(CaptureRequest.FLASH_STRENGTH_LEVEL, Integer.valueOf(this.t), optionPriority2);
            } else if (this.s == 2) {
                builder2.e(CaptureRequest.FLASH_STRENGTH_LEVEL, Integer.valueOf(this.f1418e.b()), optionPriority2);
            }
        }
        i4 = i6;
        builder2.e(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(r(this.f1418e, i4)), optionPriority2);
        CaptureRequest.Key key5 = CaptureRequest.CONTROL_AWB_MODE;
        iArr = (int[]) this.f1418e.a(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES);
        if (iArr != null) {
            i2 = 0;
        } else {
            i2 = 0;
        }
        builder2.e(key5, Integer.valueOf(i2), optionPriority2);
        exposureControl = this.l;
        exposureControl.getClass();
        CaptureRequest.Key key6 = CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION;
        synchronized (exposureControl.f1575a.f1578a) {
            builder2.e(key6, 0, optionPriority2);
            camera2CameraControl = this.n;
            synchronized (camera2CameraControl.f1851e) {
                mutableOptionsBundle = camera2CameraControl.f1852f.f1383a;
                optionPriority = Config.OptionPriority.ALWAYS_OVERRIDE;
                while (r5.hasNext()) {
                    builder2.f1383a.f0(option, optionPriority, mutableOptionsBundle.a(option));
                }
                builder.r(builder2.b());
                this.g.j("CameraControlSessionUpdateId", Long.valueOf(this.z));
                return this.g.k();
            }
        }
    }

    public final boolean s() {
        int i2;
        synchronized (this.d) {
            i2 = this.q;
        }
        return i2 > 0;
    }

    public final void v(boolean z) {
        ZoomState zoomStateF;
        int i2 = 3;
        Logger.c(3, "Camera2CameraControlImp");
        FocusMeteringControl focusMeteringControl = this.f1420h;
        if (z != focusMeteringControl.d) {
            focusMeteringControl.d = z;
            if (!focusMeteringControl.d) {
                Camera2CameraControlImpl camera2CameraControlImpl = focusMeteringControl.f1580a;
                camera2CameraControlImpl.f1416b.f1427a.remove(null);
                camera2CameraControlImpl.f1416b.f1427a.remove(null);
                if (focusMeteringControl.f1584f.length > 0) {
                    focusMeteringControl.a(true, false);
                }
                MeteringRectangle[] meteringRectangleArr = FocusMeteringControl.f1579k;
                focusMeteringControl.f1584f = meteringRectangleArr;
                focusMeteringControl.g = meteringRectangleArr;
                focusMeteringControl.f1585h = meteringRectangleArr;
                camera2CameraControlImpl.x();
            }
        }
        ZoomControl zoomControl = this.f1421i;
        if (zoomControl.f1661f != z) {
            zoomControl.f1661f = z;
            if (!z) {
                synchronized (zoomControl.f1659c) {
                    zoomControl.f1659c.e(1.0f);
                    zoomStateF = ImmutableZoomState.f(zoomControl.f1659c);
                }
                zoomControl.b(zoomStateF);
                zoomControl.f1660e.e();
                zoomControl.f1657a.x();
            }
        }
        LowLightBoostControl lowLightBoostControl = this.f1423k;
        if (lowLightBoostControl.f1597c != z) {
            lowLightBoostControl.f1597c = z;
        }
        TorchControl torchControl = this.f1422j;
        int i3 = torchControl.g;
        if (torchControl.f1652f != z) {
            torchControl.f1652f = z;
            if (!z) {
                if (torchControl.f1654i) {
                    torchControl.f1654i = false;
                    torchControl.f1648a.p(0);
                    torchControl.b(0);
                    MutableLiveData mutableLiveData = torchControl.f1650c;
                    Integer numValueOf = Integer.valueOf(i3);
                    if (Threads.b()) {
                        mutableLiveData.setValue(numValueOf);
                    } else {
                        mutableLiveData.postValue(numValueOf);
                    }
                }
                CallbackToFutureAdapter.Completer completer = torchControl.f1653h;
                if (completer != null) {
                    completer.d(new CameraControl.OperationCanceledException("Camera is not active."));
                    torchControl.f1653h = null;
                }
            }
        }
        ExposureControl exposureControl = this.l;
        if (z != exposureControl.f1577c) {
            exposureControl.f1577c = z;
            if (!z) {
                synchronized (exposureControl.f1575a.f1578a) {
                }
            }
        }
        Camera2CameraControl camera2CameraControl = this.n;
        camera2CameraControl.d.execute(new ac(camera2CameraControl, z, i2));
        if (z) {
            return;
        }
        this.r = null;
        this.p.f1656b.set(0);
        Logger.c(3, "VideoUsageControl");
    }

    public final void w(boolean z) {
        synchronized (this.f1423k.f1595a) {
            try {
                if (z) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long x() {
        this.z = this.w.getAndIncrement();
        Camera2CameraImpl.this.M();
        return this.z;
    }
}

package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import androidx.camera.camera2.internal.compat.workaround.FlashAvailabilityChecker;
import androidx.camera.camera2.internal.compat.workaround.OverrideAeModeForStillCapture;
import androidx.camera.camera2.internal.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.internal.compat.workaround.UseTorchAsFlash;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraCaptureMetaData$AeMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AfMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbMode;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.ConvergenceUtils;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.e5;
import defpackage.md;
import defpackage.oi;
import defpackage.rh;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
class Camera2CapturePipeline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Camera2CameraControlImpl f1481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UseTorchAsFlash f1482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1483c;
    public final Quirks d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f1484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledExecutorService f1485f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1486h = 1;

    public static class AePreCaptureTask implements PipelineTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Camera2CameraControlImpl f1487a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final OverrideAeModeForStillCapture f1488b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f1489c;
        public boolean d = false;

        public AePreCaptureTask(Camera2CameraControlImpl camera2CameraControlImpl, int i2, OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.f1487a = camera2CameraControlImpl;
            this.f1489c = i2;
            this.f1488b = overrideAeModeForStillCapture;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final ListenableFuture a(TotalCaptureResult totalCaptureResult) {
            if (!Camera2CapturePipeline.c(this.f1489c, totalCaptureResult)) {
                return Futures.g(Boolean.FALSE);
            }
            Logger.c(3, "Camera2CapturePipeline");
            this.d = true;
            return FutureChain.from(CallbackToFutureAdapter.a(new n(this, 0))).transform(new md(17), CameraXExecutors.a());
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final boolean b() {
            return this.f1489c == 0;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final void c() {
            if (this.d) {
                Logger.c(3, "Camera2CapturePipeline");
                this.f1487a.f1420h.a(false, true);
                this.f1488b.f1774b = false;
            }
        }
    }

    public static class AfTask implements PipelineTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Camera2CameraControlImpl f1490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1491b = false;

        public AfTask(Camera2CameraControlImpl camera2CameraControlImpl) {
            this.f1490a = camera2CameraControlImpl;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final ListenableFuture a(TotalCaptureResult totalCaptureResult) {
            Integer num;
            int iIntValue;
            int iD;
            int iC;
            CameraCaptureResult cameraCaptureResult;
            ListenableFuture listenableFutureG = Futures.g(Boolean.TRUE);
            if (totalCaptureResult != null && (num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE)) != null && ((iIntValue = num.intValue()) == 1 || iIntValue == 2)) {
                Logger.c(3, "Camera2CapturePipeline");
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                if (num2 != null && num2.intValue() == 0) {
                    Logger.c(3, "Camera2CapturePipeline");
                    this.f1491b = true;
                    FocusMeteringControl focusMeteringControl = this.f1490a.f1420h;
                    if (focusMeteringControl.d) {
                        CaptureConfig.Builder builder = new CaptureConfig.Builder();
                        builder.f2276c = focusMeteringControl.f1583e;
                        builder.f2278f = true;
                        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
                        builder2.c(CaptureRequest.CONTROL_AF_TRIGGER, 1);
                        builder.c(builder2.b());
                        builder.b(new FocusMeteringControl.AnonymousClass1());
                        Camera2CameraControlImpl camera2CameraControlImpl = focusMeteringControl.f1580a;
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
                }
            }
            return listenableFutureG;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final boolean b() {
            return true;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final void c() {
            if (this.f1491b) {
                Logger.c(3, "Camera2CapturePipeline");
                this.f1490a.f1420h.a(true, false);
            }
        }
    }

    public static class CameraCapturePipelineImpl implements CameraCapturePipeline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f1492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Pipeline f1493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f1494c;

        public CameraCapturePipelineImpl(Pipeline pipeline, Executor executor, int i2) {
            this.f1493b = pipeline;
            this.f1492a = executor;
            this.f1494c = i2;
        }

        @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
        public final ListenableFuture a() {
            Logger.c(3, "Camera2CapturePipeline");
            return FutureChain.from(this.f1493b.a(this.f1494c)).transform(new md(18), this.f1492a);
        }

        @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
        public final ListenableFuture b() {
            return CallbackToFutureAdapter.a(new n(this, 1));
        }
    }

    public static class Pipeline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1495a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f1496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ScheduledExecutorService f1497c;
        public final Camera2CameraControlImpl d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final OverrideAeModeForStillCapture f1498e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f1499f;
        public long g = 1000000000;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayList f1500h = new ArrayList();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AnonymousClass1 f1501i = new AnonymousClass1();

        /* JADX INFO: renamed from: androidx.camera.camera2.internal.Camera2CapturePipeline$Pipeline$1, reason: invalid class name */
        public class AnonymousClass1 implements PipelineTask {
            public AnonymousClass1() {
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public final ListenableFuture a(TotalCaptureResult totalCaptureResult) {
                ArrayList arrayList = new ArrayList();
                Iterator it = Pipeline.this.f1500h.iterator();
                while (it.hasNext()) {
                    arrayList.add(((PipelineTask) it.next()).a(totalCaptureResult));
                }
                return Futures.l(Futures.b(arrayList), new md(19), CameraXExecutors.a());
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public final boolean b() {
                Iterator it = Pipeline.this.f1500h.iterator();
                while (it.hasNext()) {
                    if (((PipelineTask) it.next()).b()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public final void c() {
                Iterator it = Pipeline.this.f1500h.iterator();
                while (it.hasNext()) {
                    ((PipelineTask) it.next()).c();
                }
            }
        }

        public Pipeline(int i2, Executor executor, ScheduledExecutorService scheduledExecutorService, Camera2CameraControlImpl camera2CameraControlImpl, boolean z, OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.f1495a = i2;
            this.f1496b = executor;
            this.f1497c = scheduledExecutorService;
            this.d = camera2CameraControlImpl;
            this.f1499f = z;
            this.f1498e = overrideAeModeForStillCapture;
        }

        public final ListenableFuture a(final int i2) {
            ListenableFuture listenableFutureG;
            ListenableFuture listenableFutureG2 = Futures.g(null);
            if (this.f1500h.isEmpty()) {
                return listenableFutureG2;
            }
            int i3 = 3;
            if (this.f1501i.b()) {
                ResultListener resultListener = new ResultListener(null);
                Camera2CameraControlImpl camera2CameraControlImpl = this.d;
                camera2CameraControlImpl.n(resultListener);
                d dVar = new d(camera2CameraControlImpl, resultListener, i3);
                Executor executor = camera2CameraControlImpl.f1417c;
                listenableFutureG = resultListener.f1505b;
                listenableFutureG.addListener(dVar, executor);
            } else {
                listenableFutureG = Futures.g(null);
            }
            FutureChain futureChainFrom = FutureChain.from(listenableFutureG);
            AsyncFunction asyncFunction = new AsyncFunction() { // from class: androidx.camera.camera2.internal.p
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    TotalCaptureResult totalCaptureResult = (TotalCaptureResult) obj;
                    Camera2CapturePipeline.Pipeline pipeline = this.f1829b;
                    pipeline.d.getClass();
                    if (Camera2CapturePipeline.c(i2, totalCaptureResult)) {
                        pipeline.g = 5000000000L;
                    }
                    return pipeline.f1501i.a(totalCaptureResult);
                }
            };
            Executor executor2 = this.f1496b;
            return futureChainFrom.transformAsync(asyncFunction, executor2).transformAsync(new n(this, i3), executor2);
        }
    }

    public interface PipelineTask {
        ListenableFuture a(TotalCaptureResult totalCaptureResult);

        boolean b();

        void c();
    }

    public static class ResultListener implements Camera2CameraControlImpl.CaptureResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CallbackToFutureAdapter.Completer f1504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListenableFuture f1505b = CallbackToFutureAdapter.a(new n(this, 4));

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Checker f1506c;

        public interface Checker {
            boolean a(TotalCaptureResult totalCaptureResult);
        }

        public ResultListener(Checker checker) {
            this.f1506c = checker;
        }

        @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
        public final boolean a(TotalCaptureResult totalCaptureResult) {
            Checker checker = this.f1506c;
            if (checker != null && !checker.a(totalCaptureResult)) {
                return false;
            }
            this.f1504a.b(totalCaptureResult);
            return true;
        }
    }

    public static class ScreenFlashTask implements PipelineTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Camera2CameraControlImpl f1507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f1508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ScheduledExecutorService f1509c;
        public final ImageCapture.ScreenFlash d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final UseFlashModeTorchFor3aUpdate f1510e;

        public ScreenFlashTask(Camera2CameraControlImpl camera2CameraControlImpl, Executor executor, ScheduledExecutorService scheduledExecutorService, UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
            this.f1507a = camera2CameraControlImpl;
            this.f1508b = executor;
            this.f1509c = scheduledExecutorService;
            this.f1510e = useFlashModeTorchFor3aUpdate;
            ImageCapture.ScreenFlash screenFlash = camera2CameraControlImpl.r;
            Objects.requireNonNull(screenFlash);
            this.d = screenFlash;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final ListenableFuture a(TotalCaptureResult totalCaptureResult) {
            Logger.c(3, "Camera2CapturePipeline");
            AtomicReference atomicReference = new AtomicReference();
            int i2 = 1;
            ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new rh(atomicReference, i2));
            FutureChain futureChainFrom = FutureChain.from(CallbackToFutureAdapter.a(new j(this, atomicReference, i2)));
            r rVar = new r(this, 0);
            Executor executor = this.f1508b;
            FutureChain futureChainTransformAsync = futureChainFrom.transformAsync(rVar, executor).transformAsync(new r(this, i2), executor);
            int i3 = 2;
            return futureChainTransformAsync.transformAsync(new j(this, listenableFutureA, i3), executor).transformAsync(new r(this, i3), executor).transformAsync(new r(this, 3), executor).transform(new md(20), CameraXExecutors.a());
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final boolean b() {
            return false;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final void c() {
            Camera2CameraControlImpl camera2CameraControlImpl = this.f1507a;
            FocusMeteringControl focusMeteringControl = camera2CameraControlImpl.f1420h;
            Logger.c(3, "Camera2CapturePipeline");
            TorchFlashRequiredFor3aUpdateQuirk torchFlashRequiredFor3aUpdateQuirk = this.f1510e.f1789a;
            boolean z = false;
            boolean z2 = (torchFlashRequiredFor3aUpdateQuirk == null || Camera2CameraControlImpl.r(torchFlashRequiredFor3aUpdateQuirk.f1757a, 5) == 5) ? false : true;
            Logger.c(3, "UseFlashModeTorchFor3aUpdate");
            if (z2) {
                camera2CameraControlImpl.p(0);
            }
            (Camera2CameraControlImpl.r(focusMeteringControl.f1580a.f1418e, 5) != 5 ? Futures.g(null) : CallbackToFutureAdapter.a(new w(focusMeteringControl, z))).addListener(new e5(2), this.f1508b);
            focusMeteringControl.a(false, true);
            ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
            ImageCapture.ScreenFlash screenFlash = this.d;
            Objects.requireNonNull(screenFlash);
            scheduledExecutorServiceC.execute(new z1(screenFlash, 16));
        }
    }

    public static class TorchTask implements PipelineTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Camera2CameraControlImpl f1511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f1512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1513c = false;
        public final Executor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ScheduledExecutorService f1514e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f1515f;

        public TorchTask(Camera2CameraControlImpl camera2CameraControlImpl, int i2, Executor executor, ScheduledExecutorService scheduledExecutorService, boolean z) {
            this.f1511a = camera2CameraControlImpl;
            this.f1512b = i2;
            this.d = executor;
            this.f1514e = scheduledExecutorService;
            this.f1515f = z;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final ListenableFuture a(TotalCaptureResult totalCaptureResult) {
            Camera2CapturePipeline.c(this.f1512b, totalCaptureResult);
            Logger.c(3, "Camera2CapturePipeline");
            if (Camera2CapturePipeline.c(this.f1512b, totalCaptureResult)) {
                if (this.f1511a.s == 0) {
                    Logger.c(3, "Camera2CapturePipeline");
                    this.f1513c = true;
                    return FutureChain.from(CallbackToFutureAdapter.a(new s(this, 0))).transformAsync(new s(this, 1), this.d).transformAsync(new s(this, 2), this.d).transform(new md(20), CameraXExecutors.a());
                }
                Logger.c(3, "Camera2CapturePipeline");
            }
            return Futures.g(Boolean.FALSE);
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final boolean b() {
            return this.f1512b == 0;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public final void c() {
            if (this.f1513c) {
                Camera2CameraControlImpl camera2CameraControlImpl = this.f1511a;
                camera2CameraControlImpl.f1422j.a(null, 0);
                Logger.c(3, "Camera2CapturePipeline");
                if (this.f1515f) {
                    camera2CameraControlImpl.f1420h.a(false, true);
                }
            }
        }
    }

    public Camera2CapturePipeline(Camera2CameraControlImpl camera2CameraControlImpl, CameraCharacteristicsCompat cameraCharacteristicsCompat, Quirks quirks, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f1481a = camera2CameraControlImpl;
        Integer num = (Integer) cameraCharacteristicsCompat.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        this.g = num != null && num.intValue() == 2;
        this.f1484e = executor;
        this.f1485f = scheduledExecutorService;
        this.d = quirks;
        this.f1482b = new UseTorchAsFlash(quirks);
        this.f1483c = FlashAvailabilityChecker.a(new oi(cameraCharacteristicsCompat, 1));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    public static boolean b(TotalCaptureResult totalCaptureResult, boolean z) {
        CameraCaptureMetaData$AfMode cameraCaptureMetaData$AfMode;
        CameraCaptureMetaData$AeMode cameraCaptureMetaData$AeMode;
        CameraCaptureMetaData$AwbMode cameraCaptureMetaData$AwbMode;
        if (totalCaptureResult != null) {
            Camera2CameraCaptureResult camera2CameraCaptureResult = new Camera2CameraCaptureResult(totalCaptureResult);
            Set set = ConvergenceUtils.f2283a;
            CaptureResult.Key key = CaptureResult.CONTROL_AF_MODE;
            CaptureResult captureResult = camera2CameraCaptureResult.f1415b;
            Integer num = (Integer) captureResult.get(key);
            if (num == null) {
                cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.UNKNOWN;
            } else {
                int iIntValue = num.intValue();
                if (iIntValue == 0) {
                    cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.OFF;
                } else if (iIntValue == 1 || iIntValue == 2) {
                    cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.ON_MANUAL_AUTO;
                } else if (iIntValue == 3 || iIntValue == 4) {
                    cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.ON_CONTINUOUS_AUTO;
                } else if (iIntValue != 5) {
                    Logger.a("C2CameraCaptureResult");
                    cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.UNKNOWN;
                } else {
                    cameraCaptureMetaData$AfMode = CameraCaptureMetaData$AfMode.OFF;
                }
            }
            boolean z2 = cameraCaptureMetaData$AfMode == CameraCaptureMetaData$AfMode.OFF || ConvergenceUtils.f2283a.contains(camera2CameraCaptureResult.f());
            Integer num2 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_MODE);
            if (num2 == null) {
                cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.UNKNOWN;
            } else {
                int iIntValue2 = num2.intValue();
                if (iIntValue2 == 0) {
                    cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.OFF;
                } else if (iIntValue2 == 1) {
                    cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.ON;
                } else if (iIntValue2 == 2) {
                    cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.ON_AUTO_FLASH;
                } else if (iIntValue2 == 3) {
                    cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.ON_ALWAYS_FLASH;
                } else if (iIntValue2 != 4) {
                    cameraCaptureMetaData$AeMode = iIntValue2 != 5 ? CameraCaptureMetaData$AeMode.UNKNOWN : CameraCaptureMetaData$AeMode.ON_EXTERNAL_FLASH;
                } else {
                    cameraCaptureMetaData$AeMode = CameraCaptureMetaData$AeMode.ON_AUTO_FLASH_REDEYE;
                }
            }
            boolean z3 = cameraCaptureMetaData$AeMode == CameraCaptureMetaData$AeMode.OFF;
            boolean z4 = !z ? !(z3 || ConvergenceUtils.f2285c.contains(camera2CameraCaptureResult.h())) : !(z3 || ConvergenceUtils.d.contains(camera2CameraCaptureResult.h()));
            Integer num3 = (Integer) captureResult.get(CaptureResult.CONTROL_AWB_MODE);
            if (num3 != null) {
                switch (num3.intValue()) {
                    case 0:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.OFF;
                        break;
                    case 1:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.AUTO;
                        break;
                    case 2:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.INCANDESCENT;
                        break;
                    case 3:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.FLUORESCENT;
                        break;
                    case 4:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.WARM_FLUORESCENT;
                        break;
                    case 5:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.DAYLIGHT;
                        break;
                    case 6:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.CLOUDY_DAYLIGHT;
                        break;
                    case 7:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.TWILIGHT;
                        break;
                    case 8:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.SHADE;
                        break;
                    default:
                        cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.UNKNOWN;
                        break;
                }
            } else {
                cameraCaptureMetaData$AwbMode = CameraCaptureMetaData$AwbMode.UNKNOWN;
            }
            boolean z5 = cameraCaptureMetaData$AwbMode == CameraCaptureMetaData$AwbMode.OFF || ConvergenceUtils.f2284b.contains(camera2CameraCaptureResult.g());
            Objects.toString(camera2CameraCaptureResult.h());
            Objects.toString(camera2CameraCaptureResult.f());
            Objects.toString(camera2CameraCaptureResult.g());
            Logger.c(3, "ConvergenceUtils");
            if (z2 && z4 && z5) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(int i2, TotalCaptureResult totalCaptureResult) {
        Logger.c(3, "Camera2CapturePipeline");
        if (i2 == 0) {
            Integer num = totalCaptureResult != null ? (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE) : null;
            Logger.c(3, "Camera2CapturePipeline");
            return num != null && num.intValue() == 4;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return false;
            }
            if (i2 != 3) {
                throw new AssertionError(i2);
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    public final Pipeline a(int i2, int i3, int i4) {
        boolean z;
        Quirks quirks = this.d;
        OverrideAeModeForStillCapture overrideAeModeForStillCapture = new OverrideAeModeForStillCapture(quirks);
        int i5 = this.f1486h;
        boolean z2 = this.g;
        Executor executor = this.f1484e;
        ScheduledExecutorService scheduledExecutorService = this.f1485f;
        Camera2CameraControlImpl camera2CameraControlImpl = this.f1481a;
        Pipeline pipeline = new Pipeline(i5, executor, scheduledExecutorService, camera2CameraControlImpl, z2, overrideAeModeForStillCapture);
        ArrayList arrayList = pipeline.f1500h;
        if (i2 == 0) {
            arrayList.add(new AfTask(camera2CameraControlImpl));
        }
        if (i3 == 3) {
            arrayList.add(new ScreenFlashTask(camera2CameraControlImpl, executor, scheduledExecutorService, new UseFlashModeTorchFor3aUpdate(quirks)));
        } else if (this.f1483c) {
            boolean z3 = this.f1482b.f1790a;
            if (z3 || this.f1486h == 3 || i4 == 1) {
                if (!z3) {
                    int i6 = camera2CameraControlImpl.p.f1656b.get();
                    Logger.c(3, "Camera2CameraControlImp");
                    z = i6 <= 0;
                }
                arrayList.add(new TorchTask(camera2CameraControlImpl, i3, executor, scheduledExecutorService, z));
            } else {
                arrayList.add(new AePreCaptureTask(camera2CameraControlImpl, i3, overrideAeModeForStillCapture));
            }
        }
        Objects.toString(arrayList);
        Logger.c(3, "Camera2CapturePipeline");
        return pipeline;
    }
}

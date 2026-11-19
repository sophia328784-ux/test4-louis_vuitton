package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.workaround.MeteringRegionCorrection;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
class FocusMeteringControl {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final MeteringRectangle[] f1579k = new MeteringRectangle[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Camera2CameraControlImpl f1580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f1582c;
    public volatile boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1583e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MeteringRectangle[] f1584f;
    public MeteringRectangle[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MeteringRectangle[] f1585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public y f1587j;

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.FocusMeteringControl$1, reason: invalid class name */
    class AnonymousClass1 extends CameraCaptureCallback {
        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void a(int i2) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void b(int i2, CameraCaptureResult cameraCaptureResult) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void c(int i2, CameraCaptureFailure cameraCaptureFailure) {
        }
    }

    public FocusMeteringControl(Camera2CameraControlImpl camera2CameraControlImpl, ScheduledExecutorService scheduledExecutorService, Executor executor, Quirks quirks) {
        MeteringRectangle[] meteringRectangleArr = f1579k;
        this.f1584f = meteringRectangleArr;
        this.g = meteringRectangleArr;
        this.f1585h = meteringRectangleArr;
        this.f1586i = false;
        this.f1587j = null;
        this.f1580a = camera2CameraControlImpl;
        this.f1581b = executor;
        this.f1582c = scheduledExecutorService;
        new MeteringRegionCorrection(quirks);
    }

    public final void a(boolean z, boolean z2) {
        int iD;
        int iC;
        CameraCaptureResult cameraCaptureResult;
        if (this.d) {
            CaptureConfig.Builder builder = new CaptureConfig.Builder();
            builder.f2278f = true;
            builder.f2276c = this.f1583e;
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            if (z) {
                builder2.c(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            }
            if (z2) {
                builder2.c(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
            }
            builder.c(builder2.b());
            Camera2CameraControlImpl camera2CameraControlImpl = this.f1580a;
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

    public final void b(final CallbackToFutureAdapter.Completer completer) {
        int iD;
        int iC;
        CameraCaptureResult cameraCaptureResult;
        Logger.c(3, "FocusMeteringControl");
        if (!this.d) {
            completer.d(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        builder.f2276c = this.f1583e;
        builder.f2278f = true;
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        builder2.c(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        builder.c(builder2.b());
        builder.b(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.FocusMeteringControl.2
            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public final void a(int i2) {
                completer.d(new CameraControl.OperationCanceledException("Camera is closed"));
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public final void b(int i2, CameraCaptureResult cameraCaptureResult2) {
                Logger.c(3, "FocusMeteringControl");
                completer.b(null);
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public final void c(int i2, CameraCaptureFailure cameraCaptureFailure) {
                completer.d(new CameraControlInternal.CameraControlException(cameraCaptureFailure));
            }
        });
        Camera2CameraControlImpl camera2CameraControlImpl = this.f1580a;
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

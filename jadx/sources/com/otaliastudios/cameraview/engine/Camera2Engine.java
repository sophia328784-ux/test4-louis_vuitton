package com.otaliastudios.cameraview.engine;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.location.Location;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraException;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.Mode;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.action.Action;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.Actions;
import com.otaliastudios.cameraview.engine.action.BaseAction;
import com.otaliastudios.cameraview.engine.action.CompletionCallback;
import com.otaliastudios.cameraview.engine.action.LogAction;
import com.otaliastudios.cameraview.engine.mappers.Camera2Mapper;
import com.otaliastudios.cameraview.engine.meter.BaseMeter;
import com.otaliastudios.cameraview.engine.meter.MeterAction;
import com.otaliastudios.cameraview.engine.meter.MeterResetAction;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Axis;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.options.Camera2Options;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator;
import com.otaliastudios.cameraview.frame.Frame;
import com.otaliastudios.cameraview.frame.FrameManager;
import com.otaliastudios.cameraview.frame.ImageFrameManager;
import com.otaliastudios.cameraview.gesture.Gesture;
import com.otaliastudios.cameraview.internal.FpsRangeValidator;
import com.otaliastudios.cameraview.metering.MeteringRegions;
import com.otaliastudios.cameraview.picture.Full2PictureRecorder;
import com.otaliastudios.cameraview.picture.Snapshot2PictureRecorder;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.preview.RendererCameraPreview;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.SizeSelector;
import com.otaliastudios.cameraview.size.SizeSelectors;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class Camera2Engine extends CameraBaseEngine implements ImageReader.OnImageAvailableListener, ActionHolder {
    public static final /* synthetic */ int k1 = 0;
    public final CameraManager W;
    public String X;
    public CameraDevice Y;
    public CameraCharacteristics Z;
    public TotalCaptureResult b1;
    public final Camera2Mapper c1;
    public ImageReader d1;
    public Surface e1;
    public Surface f1;
    public ImageReader g1;
    public CameraCaptureSession h0;
    public final CopyOnWriteArrayList h1;
    public MeterAction i1;
    public final CameraCaptureSession.CaptureCallback j1;
    public CaptureRequest.Builder t0;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera2Engine$22, reason: invalid class name */
    class AnonymousClass22 implements Runnable {
        final /* synthetic */ Gesture val$gesture;
        final /* synthetic */ PointF val$legacyPoint;
        final /* synthetic */ MeteringRegions val$regions;

        public AnonymousClass22(Gesture gesture, PointF pointF, MeteringRegions meteringRegions) {
            this.val$gesture = gesture;
            this.val$legacyPoint = pointF;
            this.val$regions = meteringRegions;
        }

        @Override // java.lang.Runnable
        public void run() {
            Camera2Engine camera2Engine = Camera2Engine.this;
            if (camera2Engine.f38879h.o) {
                camera2Engine.d.g(this.val$gesture, this.val$legacyPoint);
                Camera2Engine camera2Engine2 = Camera2Engine.this;
                MeteringRegions meteringRegions = this.val$regions;
                int i2 = Camera2Engine.k1;
                final MeterAction meterActionT0 = camera2Engine2.t0(meteringRegions);
                BaseAction baseActionB = Actions.b(LiveTranslationEntity.DefaultSentenceTimeOut, meterActionT0);
                baseActionB.m(Camera2Engine.this);
                baseActionB.e(new CompletionCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.22.1
                    @Override // com.otaliastudios.cameraview.engine.action.CompletionCallback
                    public final void b() {
                        boolean z;
                        AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                        CameraEngine.Callback callback = Camera2Engine.this.d;
                        Gesture gesture = anonymousClass22.val$gesture;
                        CameraLogger cameraLogger = MeterAction.f38928j;
                        Iterator it = meterActionT0.f38929e.iterator();
                        while (true) {
                            z = true;
                            if (!it.hasNext()) {
                                cameraLogger.b(1, "isSuccessful:", "returning true.");
                                break;
                            } else if (!((BaseMeter) it.next()).f38920f) {
                                cameraLogger.b(1, "isSuccessful:", "returning false.");
                                z = false;
                                break;
                            }
                        }
                        callback.d(gesture, z, anonymousClass22.val$legacyPoint);
                        Camera2Engine.this.f38886e.d(0, "reset metering");
                        Camera2Engine camera2Engine3 = Camera2Engine.this;
                        long j2 = camera2Engine3.O;
                        if (j2 <= 0 || j2 == Long.MAX_VALUE) {
                            return;
                        }
                        camera2Engine3.f38886e.g("reset metering", CameraState.PREVIEW, j2, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.22.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Camera2Engine camera2Engine4 = Camera2Engine.this;
                                int i3 = Camera2Engine.k1;
                                camera2Engine4.getClass();
                                Actions.a(camera2Engine4.new AnonymousClass23(), new MeterResetAction()).m(camera2Engine4);
                            }
                        });
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera2Engine$23, reason: invalid class name */
    class AnonymousClass23 extends BaseAction {
        public AnonymousClass23() {
        }

        @Override // com.otaliastudios.cameraview.engine.action.BaseAction
        public final void i(ActionHolder actionHolder) {
            this.f38895c = actionHolder;
            Camera2Engine.this.j0(actionHolder.a());
            CaptureRequest.Builder builderA = actionHolder.a();
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_LOCK;
            Boolean bool = Boolean.FALSE;
            builderA.set(key, bool);
            actionHolder.a().set(CaptureRequest.CONTROL_AWB_LOCK, bool);
            actionHolder.e();
            l(Integer.MAX_VALUE);
        }
    }

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera2Engine$24, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass24 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38871a;

        static {
            int[] iArr = new int[PictureFormat.values().length];
            f38871a = iArr;
            try {
                iArr[PictureFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38871a[PictureFormat.DNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Camera2Engine(CameraEngine.Callback callback) {
        super(callback);
        if (Camera2Mapper.f38914a == null) {
            Camera2Mapper.f38914a = new Camera2Mapper();
        }
        this.c1 = Camera2Mapper.f38914a;
        this.h1 = new CopyOnWriteArrayList();
        this.j1 = new CameraCaptureSession.CaptureCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.1
            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public final void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                Camera2Engine camera2Engine = Camera2Engine.this;
                camera2Engine.b1 = totalCaptureResult;
                Iterator it = camera2Engine.h1.iterator();
                while (it.hasNext()) {
                    ((Action) it.next()).b(camera2Engine, captureRequest, totalCaptureResult);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public final void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                Camera2Engine camera2Engine = Camera2Engine.this;
                Iterator it = camera2Engine.h1.iterator();
                while (it.hasNext()) {
                    ((Action) it.next()).d(camera2Engine, captureRequest, captureResult);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public final void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j2, long j3) {
                Camera2Engine camera2Engine = Camera2Engine.this;
                Iterator it = camera2Engine.h1.iterator();
                while (it.hasNext()) {
                    ((Action) it.next()).c(camera2Engine, captureRequest);
                }
            }
        };
        this.W = (CameraManager) this.d.getContext().getSystemService("camera");
        new LogAction().m(this);
    }

    public static CameraException s0(CameraAccessException cameraAccessException) {
        int reason = cameraAccessException.getReason();
        int i2 = 1;
        if (reason != 1) {
            if (reason == 2 || reason == 3) {
                i2 = 3;
            } else if (reason != 4 && reason != 5) {
                i2 = 0;
            }
        }
        return new CameraException(cameraAccessException, i2);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void B(final float f2, final float[] fArr, final PointF[] pointFArr, final boolean z) {
        final float f3 = this.w;
        this.w = f2;
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        cameraStateOrchestrator.d(20, "exposure correction");
        cameraStateOrchestrator.f("exposure correction", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.16
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                if (camera2Engine.k0(camera2Engine.t0, f3)) {
                    Camera2Engine.this.o0();
                    if (z) {
                        Camera2Engine.this.d.h(f2, fArr, pointFArr);
                    }
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void C(final Flash flash) {
        final Flash flash2 = this.o;
        this.o = flash;
        this.f38886e.f("flash (" + flash + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.11
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                boolean zL0 = camera2Engine.l0(camera2Engine.t0, flash2);
                Camera2Engine camera2Engine2 = Camera2Engine.this;
                if (camera2Engine2.f38886e.f38958f != CameraState.PREVIEW) {
                    if (zL0) {
                        camera2Engine2.o0();
                        return;
                    }
                    return;
                }
                camera2Engine2.o = Flash.OFF;
                camera2Engine2.l0(camera2Engine2.t0, flash2);
                try {
                    Camera2Engine camera2Engine3 = Camera2Engine.this;
                    camera2Engine3.h0.capture(camera2Engine3.t0.build(), null, null);
                    Camera2Engine camera2Engine4 = Camera2Engine.this;
                    camera2Engine4.o = flash;
                    camera2Engine4.l0(camera2Engine4.t0, flash2);
                    Camera2Engine.this.o0();
                } catch (CameraAccessException e2) {
                    Camera2Engine.this.getClass();
                    throw Camera2Engine.s0(e2);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void D(final int i2) {
        if (this.m == 0) {
            this.m = 35;
        }
        this.f38886e.b(n00.m(i2, "frame processing format (", ")"), 0L, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.21
            @Override // java.lang.Runnable
            public void run() {
                CameraState cameraState = Camera2Engine.this.f38886e.f38958f;
                CameraState cameraState2 = CameraState.BIND;
                if (cameraState.a(cameraState2) && Camera2Engine.this.r()) {
                    Camera2Engine.this.D(i2);
                    return;
                }
                Camera2Engine camera2Engine = Camera2Engine.this;
                int i3 = i2;
                if (i3 <= 0) {
                    i3 = 35;
                }
                camera2Engine.m = i3;
                if (camera2Engine.f38886e.f38958f.a(cameraState2)) {
                    Camera2Engine.this.A();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void E(final boolean z) {
        this.f38886e.b(tr.i("has frame processors (", ")", z), 0L, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.20
            @Override // java.lang.Runnable
            public void run() {
                CameraState cameraState = Camera2Engine.this.f38886e.f38958f;
                CameraState cameraState2 = CameraState.BIND;
                if (cameraState.a(cameraState2) && Camera2Engine.this.r()) {
                    Camera2Engine.this.E(z);
                    return;
                }
                Camera2Engine camera2Engine = Camera2Engine.this;
                camera2Engine.n = z;
                if (camera2Engine.f38886e.f38958f.a(cameraState2)) {
                    Camera2Engine.this.A();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void F(Hdr hdr) {
        final Hdr hdr2 = this.s;
        this.s = hdr;
        this.f38886e.f("hdr (" + hdr + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.14
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                if (camera2Engine.m0(camera2Engine.t0, hdr2)) {
                    Camera2Engine.this.o0();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void G(Location location) {
        final Location location2 = this.u;
        this.u = location;
        this.f38886e.f("location", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.12
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                CaptureRequest.Builder builder = camera2Engine.t0;
                Location location3 = camera2Engine.u;
                if (location3 != null) {
                    builder.set(CaptureRequest.JPEG_GPS_LOCATION, location3);
                }
                Camera2Engine.this.o0();
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void H(PictureFormat pictureFormat) {
        if (pictureFormat != this.t) {
            this.t = pictureFormat;
            this.f38886e.f("picture format (" + pictureFormat + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.19
                @Override // java.lang.Runnable
                public void run() {
                    Camera2Engine.this.z();
                }
            });
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void I(boolean z) {
        this.x = z;
        Tasks.f(null);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void J(float f2) {
        final float f3 = this.A;
        this.A = f2;
        this.f38886e.f("preview fps (" + f2 + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.17
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                if (camera2Engine.n0(camera2Engine.t0, f3)) {
                    Camera2Engine.this.o0();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void K(WhiteBalance whiteBalance) {
        final WhiteBalance whiteBalance2 = this.p;
        this.p = whiteBalance;
        this.f38886e.f("white balance (" + whiteBalance + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.13
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                if (camera2Engine.q0(camera2Engine.t0, whiteBalance2)) {
                    Camera2Engine.this.o0();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void L(final float f2, final PointF[] pointFArr, final boolean z) {
        final float f3 = this.v;
        this.v = f2;
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        cameraStateOrchestrator.d(20, "zoom");
        cameraStateOrchestrator.f("zoom", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.15
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                if (camera2Engine.r0(camera2Engine.t0, f3)) {
                    Camera2Engine.this.o0();
                    if (z) {
                        Camera2Engine.this.d.m(f2, pointFArr);
                    }
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void N(Gesture gesture, MeteringRegions meteringRegions, PointF pointF) {
        this.f38886e.f("autofocus (" + gesture + ")", CameraState.PREVIEW, new AnonymousClass22(gesture, pointF, meteringRegions));
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final ArrayList W() {
        try {
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.W.getCameraCharacteristics(this.X).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            if (streamConfigurationMap == null) {
                throw new RuntimeException("StreamConfigurationMap is null. Should not happen.");
            }
            Size[] outputSizes = streamConfigurationMap.getOutputSizes(this.g.i());
            ArrayList arrayList = new ArrayList(outputSizes.length);
            for (Size size : outputSizes) {
                com.otaliastudios.cameraview.size.Size size2 = new com.otaliastudios.cameraview.size.Size(size.getWidth(), size.getHeight());
                if (!arrayList.contains(size2)) {
                    arrayList.add(size2);
                }
            }
            return arrayList;
        } catch (CameraAccessException e2) {
            throw s0(e2);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final FrameManager Z(int i2) {
        return new ImageFrameManager(i2);
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final CaptureRequest.Builder a() {
        return this.t0;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void a0() {
        CameraEngine.f38883f.b(1, "onPreviewStreamSizeChanged:", "Calling restartBind().");
        A();
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void b0(final PictureResult.Stub stub, boolean z) {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        if (z) {
            cameraLogger.b(1, "onTakePicture:", "doMetering is true. Delaying.");
            BaseAction baseActionB = Actions.b(2500L, t0(null));
            baseActionB.e(new CompletionCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.8
                @Override // com.otaliastudios.cameraview.engine.action.CompletionCallback
                public final void b() {
                    Camera2Engine camera2Engine = Camera2Engine.this;
                    camera2Engine.y = false;
                    camera2Engine.g0(stub);
                    camera2Engine.y = true;
                }
            });
            baseActionB.m(this);
            return;
        }
        cameraLogger.b(1, "onTakePicture:", "doMetering is false. Performing.");
        Reference reference = Reference.SENSOR;
        Reference reference2 = Reference.OUTPUT;
        stub.f38849c = this.D.c(reference, reference2, Axis.RELATIVE_TO_SENSOR);
        stub.d = V(reference2);
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.Y.createCaptureRequest(2);
            i0(builderCreateCaptureRequest, this.t0);
            Full2PictureRecorder full2PictureRecorder = new Full2PictureRecorder(stub, this, builderCreateCaptureRequest, this.g1);
            this.f38880i = full2PictureRecorder;
            full2PictureRecorder.b();
        } catch (CameraAccessException e2) {
            throw s0(e2);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final void c(BaseAction baseAction) {
        this.h1.remove(baseAction);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void c0(final PictureResult.Stub stub, AspectRatio aspectRatio, boolean z) {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        if (z) {
            cameraLogger.b(1, "onTakePictureSnapshot:", "doMetering is true. Delaying.");
            BaseAction baseActionB = Actions.b(2500L, t0(null));
            baseActionB.e(new CompletionCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.7
                @Override // com.otaliastudios.cameraview.engine.action.CompletionCallback
                public final void b() {
                    Camera2Engine camera2Engine = Camera2Engine.this;
                    camera2Engine.z = false;
                    camera2Engine.h0(stub);
                    camera2Engine.z = true;
                }
            });
            baseActionB.m(this);
            return;
        }
        cameraLogger.b(1, "onTakePictureSnapshot:", "doMetering is false. Performing.");
        if (!(this.g instanceof RendererCameraPreview)) {
            v7.h("takePictureSnapshot with Camera2 is only supported with Preview.GL_SURFACE");
            return;
        }
        Reference reference = Reference.OUTPUT;
        stub.d = Y(reference);
        stub.f38849c = this.D.c(Reference.VIEW, reference, Axis.ABSOLUTE);
        Snapshot2PictureRecorder snapshot2PictureRecorder = new Snapshot2PictureRecorder(stub, this, (RendererCameraPreview) this.g, aspectRatio);
        this.f38880i = snapshot2PictureRecorder;
        snapshot2PictureRecorder.b();
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final void d(CaptureRequest.Builder builder) throws CameraAccessException {
        if (this.f38886e.f38958f != CameraState.PREVIEW || r()) {
            return;
        }
        this.h0.capture(builder.build(), this.j1, null);
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final void e() {
        o0();
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine, com.otaliastudios.cameraview.picture.PictureRecorder.PictureResultListener
    public final void h(PictureResult.Stub stub, Exception exc) {
        boolean z = this.f38880i instanceof Full2PictureRecorder;
        super.h(stub, exc);
        if (!(z && this.y) && (z || !this.z)) {
            return;
        }
        this.f38886e.f("reset metering after picture", CameraState.PREVIEW, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.9
            @Override // java.lang.Runnable
            public void run() {
                Camera2Engine camera2Engine = Camera2Engine.this;
                int i2 = Camera2Engine.k1;
                camera2Engine.getClass();
                Actions.a(camera2Engine.new AnonymousClass23(), new MeterResetAction()).m(camera2Engine);
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final CameraCharacteristics i() {
        return this.Z;
    }

    public final void i0(CaptureRequest.Builder builder, CaptureRequest.Builder builder2) {
        CameraEngine.f38883f.b(1, "applyAllParameters:", "called for tag", builder.build().getTag());
        builder.set(CaptureRequest.CONTROL_MODE, 1);
        j0(builder);
        l0(builder, Flash.OFF);
        Location location = this.u;
        if (location != null) {
            builder.set(CaptureRequest.JPEG_GPS_LOCATION, location);
        }
        q0(builder, WhiteBalance.AUTO);
        m0(builder, Hdr.OFF);
        r0(builder, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        k0(builder, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        n0(builder, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (builder2 != null) {
            CaptureRequest.Key key = CaptureRequest.CONTROL_AF_REGIONS;
            builder.set(key, (MeteringRectangle[]) builder2.get(key));
            CaptureRequest.Key key2 = CaptureRequest.CONTROL_AE_REGIONS;
            builder.set(key2, (MeteringRectangle[]) builder2.get(key2));
            CaptureRequest.Key key3 = CaptureRequest.CONTROL_AWB_REGIONS;
            builder.set(key3, (MeteringRectangle[]) builder2.get(key3));
            CaptureRequest.Key key4 = CaptureRequest.CONTROL_AF_MODE;
            builder.set(key4, (Integer) builder2.get(key4));
        }
    }

    public final void j0(CaptureRequest.Builder builder) {
        int[] iArr = (int[]) v0(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES, new int[0]);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        if (this.I == Mode.VIDEO && arrayList.contains(3)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
            return;
        }
        if (arrayList.contains(4)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
            return;
        }
        if (arrayList.contains(1)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        } else if (arrayList.contains(0)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 0);
            builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final TotalCaptureResult k() {
        return this.b1;
    }

    public final boolean k0(CaptureRequest.Builder builder, float f2) {
        if (!this.f38879h.l) {
            this.w = f2;
            return false;
        }
        Rational rational = (Rational) v0(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP, new Rational(1, 1));
        builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(Math.round(rational.floatValue() * this.w)));
        return true;
    }

    @Override // com.otaliastudios.cameraview.engine.action.ActionHolder
    public final void l(BaseAction baseAction) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.h1;
        if (copyOnWriteArrayList.contains(baseAction)) {
            return;
        }
        copyOnWriteArrayList.add(baseAction);
    }

    public final boolean l0(CaptureRequest.Builder builder, Flash flash) {
        if (this.f38879h.a(this.o)) {
            int[] iArr = (int[]) v0(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES, new int[0]);
            ArrayList arrayList = new ArrayList();
            for (int i2 : iArr) {
                arrayList.add(Integer.valueOf(i2));
            }
            Flash flash2 = this.o;
            this.c1.getClass();
            for (Pair pair : Camera2Mapper.a(flash2)) {
                if (arrayList.contains(pair.first)) {
                    Object[] objArr = {"applyFlash: setting CONTROL_AE_MODE to", pair.first};
                    CameraLogger cameraLogger = CameraEngine.f38883f;
                    cameraLogger.b(1, objArr);
                    cameraLogger.b(1, "applyFlash: setting FLASH_MODE to", pair.second);
                    builder.set(CaptureRequest.CONTROL_AE_MODE, (Integer) pair.first);
                    builder.set(CaptureRequest.FLASH_MODE, (Integer) pair.second);
                    return true;
                }
            }
        }
        this.o = flash;
        return false;
    }

    public final boolean m0(CaptureRequest.Builder builder, Hdr hdr) {
        if (!this.f38879h.a(this.s)) {
            this.s = hdr;
            return false;
        }
        Hdr hdr2 = this.s;
        this.c1.getClass();
        Integer num = (Integer) Camera2Mapper.d.get(hdr2);
        num.getClass();
        builder.set(CaptureRequest.CONTROL_SCENE_MODE, num);
        return true;
    }

    public final boolean n0(CaptureRequest.Builder builder, float f2) {
        Range[] rangeArr = (Range[]) v0(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES, new Range[0]);
        final boolean z = this.B && this.A != Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Arrays.sort(rangeArr, new Comparator<Range<Integer>>() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.18
            @Override // java.util.Comparator
            public final int compare(Range<Integer> range, Range<Integer> range2) {
                Range<Integer> range3 = range;
                Range<Integer> range4 = range2;
                return z ? (((Integer) range3.getUpper()).intValue() - ((Integer) range3.getLower()).intValue()) - (((Integer) range4.getUpper()).intValue() - ((Integer) range4.getLower()).intValue()) : (((Integer) range4.getUpper()).intValue() - ((Integer) range4.getLower()).intValue()) - (((Integer) range3.getUpper()).intValue() - ((Integer) range3.getLower()).intValue());
            }
        });
        float f3 = this.A;
        if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            for (Range range : u0(rangeArr)) {
                if (range.contains(30) || range.contains(24)) {
                    builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
                    return true;
                }
            }
        } else {
            float fMin = Math.min(f3, this.f38879h.q);
            this.A = fMin;
            this.A = Math.max(fMin, this.f38879h.p);
            for (Range range2 : u0(rangeArr)) {
                if (range2.contains(Integer.valueOf(Math.round(this.A)))) {
                    builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range2);
                    return true;
                }
            }
        }
        this.A = f2;
        return false;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final boolean o(Facing facing) {
        CameraManager cameraManager = this.W;
        this.c1.getClass();
        Integer num = (Integer) Camera2Mapper.f38915b.get(facing);
        int iIntValue = num.intValue();
        try {
            String[] cameraIdList = cameraManager.getCameraIdList();
            CameraEngine.f38883f.b(1, "collectCameraInfo", "Facing:", facing, "Internal:", num, "Cameras:", Integer.valueOf(cameraIdList.length));
            for (String str : cameraIdList) {
                try {
                    CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                    Object obj = -99;
                    Object obj2 = cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
                    if (obj2 != null) {
                        obj = obj2;
                    }
                    if (iIntValue == ((Integer) obj).intValue()) {
                        this.X = str;
                        Object obj3 = 0;
                        Object obj4 = cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
                        if (obj4 != null) {
                            obj3 = obj4;
                        }
                        int iIntValue2 = ((Integer) obj3).intValue();
                        Angles angles = this.D;
                        angles.getClass();
                        Angles.e(iIntValue2);
                        angles.f38945a = facing;
                        angles.f38946b = iIntValue2;
                        if (facing == Facing.FRONT) {
                            angles.f38946b = Angles.f(360 - iIntValue2);
                        }
                        angles.d();
                        return true;
                    }
                    continue;
                } catch (CameraAccessException unused) {
                }
            }
            return false;
        } catch (CameraAccessException e2) {
            throw s0(e2);
        }
    }

    public final void o0() {
        p0(3, true);
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public final void onImageAvailable(ImageReader imageReader) {
        Image imageAcquireLatestImage;
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(0, "onImageAvailable:", "trying to acquire Image.");
        try {
            imageAcquireLatestImage = imageReader.acquireLatestImage();
        } catch (Exception unused) {
            imageAcquireLatestImage = null;
        }
        if (imageAcquireLatestImage == null) {
            cameraLogger.b(2, "onImageAvailable:", "failed to acquire Image!");
            return;
        }
        if (this.f38886e.f38958f != CameraState.PREVIEW || r()) {
            cameraLogger.b(1, "onImageAvailable:", "Image acquired in wrong state. Closing it now.");
            imageAcquireLatestImage.close();
            return;
        }
        Frame frameA = U().a(System.currentTimeMillis(), imageAcquireLatestImage);
        if (frameA == null) {
            cameraLogger.b(1, "onImageAvailable:", "Image acquired, but no free frames. DROPPING.");
        } else {
            cameraLogger.b(0, "onImageAvailable:", "Image acquired, dispatching.");
            this.d.a(frameA);
        }
    }

    public final void p0(int i2, boolean z) {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        if ((cameraStateOrchestrator.f38958f != CameraState.PREVIEW || r()) && z) {
            return;
        }
        try {
            this.h0.setRepeatingRequest(this.t0.build(), this.j1, null);
        } catch (CameraAccessException e2) {
            throw new CameraException(e2, i2);
        } catch (IllegalStateException e3) {
            CameraEngine.f38883f.b(3, "applyRepeatingRequestBuilder: session is invalid!", e3, "checkStarted:", Boolean.valueOf(z), "currentThread:", Thread.currentThread().getName(), "state:", cameraStateOrchestrator.f38958f, "targetState:", cameraStateOrchestrator.g);
            throw new CameraException(3);
        }
    }

    public final boolean q0(CaptureRequest.Builder builder, WhiteBalance whiteBalance) {
        if (!this.f38879h.a(this.p)) {
            this.p = whiteBalance;
            return false;
        }
        WhiteBalance whiteBalance2 = this.p;
        this.c1.getClass();
        Integer num = (Integer) Camera2Mapper.f38916c.get(whiteBalance2);
        num.getClass();
        builder.set(CaptureRequest.CONTROL_AWB_MODE, num);
        return true;
    }

    public final boolean r0(CaptureRequest.Builder builder, float f2) {
        if (!this.f38879h.f38830k) {
            this.v = f2;
            return false;
        }
        float fFloatValue = ((Float) v0(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM, Float.valueOf(1.0f))).floatValue();
        float f3 = fFloatValue - 1.0f;
        float f4 = (this.v * f3) + 1.0f;
        Rect rect = (Rect) v0(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE, new Rect());
        int iWidth = (int) (rect.width() / fFloatValue);
        int iHeight = (int) (rect.height() / fFloatValue);
        int iWidth2 = rect.width() - iWidth;
        int iHeight2 = rect.height() - iHeight;
        float f5 = f4 - 1.0f;
        int i2 = (int) (((iWidth2 * f5) / f3) / 2.0f);
        int i3 = (int) (((iHeight2 * f5) / f3) / 2.0f);
        builder.set(CaptureRequest.SCALER_CROP_REGION, new Rect(i2, i3, rect.width() - i2, rect.height() - i3));
        return true;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task s() {
        Handler handler;
        int i2;
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStartBind:", "Started");
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f38881j = S(this.I);
        this.f38882k = T();
        ArrayList arrayList = new ArrayList();
        Class clsI = this.g.i();
        final Object objH = this.g.h();
        if (clsI == SurfaceHolder.class) {
            try {
                cameraLogger.b(1, "onStartBind:", "Waiting on UI thread...");
                Tasks.a(Tasks.c(new Callable<Void>() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.3
                    @Override // java.util.concurrent.Callable
                    public Void call() {
                        SurfaceHolder surfaceHolder = (SurfaceHolder) objH;
                        com.otaliastudios.cameraview.size.Size size = Camera2Engine.this.f38882k;
                        surfaceHolder.setFixedSize(size.f39086b, size.f39087c);
                        return null;
                    }
                }, TaskExecutors.f32086a));
                this.f1 = ((SurfaceHolder) objH).getSurface();
            } catch (InterruptedException | ExecutionException e2) {
                throw new CameraException(e2, 1);
            }
        } else {
            if (clsI != SurfaceTexture.class) {
                v7.h("Unknown CameraPreview output class.");
                return null;
            }
            SurfaceTexture surfaceTexture = (SurfaceTexture) objH;
            com.otaliastudios.cameraview.size.Size size = this.f38882k;
            surfaceTexture.setDefaultBufferSize(size.f39086b, size.f39087c);
            this.f1 = new Surface(surfaceTexture);
        }
        arrayList.add(this.f1);
        if (this.I == Mode.PICTURE) {
            int i3 = AnonymousClass24.f38871a[this.t.ordinal()];
            if (i3 == 1) {
                i2 = 256;
            } else {
                if (i3 != 2) {
                    az.w(this.t, "Unknown format:");
                    return null;
                }
                i2 = 32;
            }
            com.otaliastudios.cameraview.size.Size size2 = this.f38881j;
            ImageReader imageReaderNewInstance = ImageReader.newInstance(size2.f39086b, size2.f39087c, i2, 2);
            this.g1 = imageReaderNewInstance;
            arrayList.add(imageReaderNewInstance.getSurface());
        }
        if (this.n) {
            try {
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.W.getCameraCharacteristics(this.X).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (streamConfigurationMap == null) {
                    throw new RuntimeException("StreamConfigurationMap is null. Should not happen.");
                }
                Size[] outputSizes = streamConfigurationMap.getOutputSizes(this.m);
                ArrayList<com.otaliastudios.cameraview.size.Size> arrayList2 = new ArrayList(outputSizes.length);
                for (Size size3 : outputSizes) {
                    com.otaliastudios.cameraview.size.Size size4 = new com.otaliastudios.cameraview.size.Size(size3.getWidth(), size3.getHeight());
                    if (!arrayList2.contains(size4)) {
                        arrayList2.add(size4);
                    }
                }
                boolean zB = this.D.b(Reference.SENSOR, Reference.VIEW);
                ArrayList arrayList3 = new ArrayList(arrayList2.size());
                for (com.otaliastudios.cameraview.size.Size sizeA : arrayList2) {
                    if (zB) {
                        sizeA = sizeA.a();
                    }
                    arrayList3.add(sizeA);
                }
                com.otaliastudios.cameraview.size.Size size5 = this.f38882k;
                AspectRatio aspectRatioA = AspectRatio.a(size5.f39086b, size5.f39087c);
                if (zB) {
                    aspectRatioA = AspectRatio.a(aspectRatioA.f39085c, aspectRatioA.f39084b);
                }
                int i4 = this.R;
                int i5 = this.S;
                if (i4 <= 0 || i4 == Integer.MAX_VALUE) {
                    i4 = 640;
                }
                if (i5 <= 0 || i5 == Integer.MAX_VALUE) {
                    i5 = 640;
                }
                com.otaliastudios.cameraview.size.Size size6 = new com.otaliastudios.cameraview.size.Size(i4, i5);
                cameraLogger.b(1, "computeFrameProcessingSize:", "targetRatio:", aspectRatioA, "targetMaxSize:", size6);
                SizeSelector sizeSelectorB = SizeSelectors.b(aspectRatioA);
                SizeSelector sizeSelectorA = SizeSelectors.a(SizeSelectors.d(size6.f39087c), SizeSelectors.e(size6.f39086b), SizeSelectors.c());
                com.otaliastudios.cameraview.size.Size sizeA2 = (com.otaliastudios.cameraview.size.Size) SizeSelectors.h(SizeSelectors.a(sizeSelectorB, sizeSelectorA), sizeSelectorA, SizeSelectors.i()).a(arrayList3).get(0);
                if (!arrayList3.contains(sizeA2)) {
                    v7.h("SizeSelectors must not return Sizes other than those in the input list.");
                    return null;
                }
                if (zB) {
                    sizeA2 = sizeA2.a();
                }
                cameraLogger.b(1, "computeFrameProcessingSize:", "result:", sizeA2, "flip:", Boolean.valueOf(zB));
                this.l = sizeA2;
                ImageReader imageReaderNewInstance2 = ImageReader.newInstance(sizeA2.f39086b, sizeA2.f39087c, this.m, this.T + 1);
                this.d1 = imageReaderNewInstance2;
                handler = null;
                imageReaderNewInstance2.setOnImageAvailableListener(this, null);
                Surface surface = this.d1.getSurface();
                this.e1 = surface;
                arrayList.add(surface);
            } catch (CameraAccessException e3) {
                throw s0(e3);
            }
        } else {
            handler = null;
            this.d1 = null;
            this.l = null;
            this.e1 = null;
        }
        try {
            this.Y.createCaptureSession(arrayList, new CameraCaptureSession.StateCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    RuntimeException runtimeException = new RuntimeException(CameraEngine.f38883f.b(3, "onConfigureFailed! Session", cameraCaptureSession));
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    if (taskCompletionSource2.f32085a.k()) {
                        throw new CameraException(3);
                    }
                    taskCompletionSource2.c(new CameraException(runtimeException, 2));
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    Camera2Engine.this.h0 = cameraCaptureSession;
                    CameraEngine.f38883f.b(1, "onStartBind:", "Completed");
                    taskCompletionSource.d(null);
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onReady(CameraCaptureSession cameraCaptureSession) {
                    super.onReady(cameraCaptureSession);
                    CameraEngine.f38883f.b(1, "CameraCaptureSession.StateCallback reported onReady.");
                }
            }, handler);
            return taskCompletionSource.f32085a;
        } catch (CameraAccessException e4) {
            throw s0(e4);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task t() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            this.W.openCamera(this.X, new CameraDevice.StateCallback() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.2
                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public final void onDisconnected(CameraDevice cameraDevice) {
                    CameraException cameraException = new CameraException(3);
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    if (taskCompletionSource2.f32085a.k()) {
                        CameraEngine.f38883f.b(1, "CameraDevice.StateCallback reported disconnection.");
                        throw cameraException;
                    }
                    taskCompletionSource2.c(cameraException);
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public final void onError(CameraDevice cameraDevice, int i2) {
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    if (taskCompletionSource2.f32085a.k()) {
                        CameraEngine.f38883f.b(3, "CameraDevice.StateCallback reported an error:", Integer.valueOf(i2));
                        throw new CameraException(3);
                    }
                    int i3 = Camera2Engine.k1;
                    int i4 = 1;
                    if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4 && i2 != 5) {
                        i4 = 0;
                    }
                    taskCompletionSource2.c(new CameraException(i4));
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public final void onOpened(CameraDevice cameraDevice) {
                    int i2;
                    TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    Camera2Engine camera2Engine = Camera2Engine.this;
                    CameraManager cameraManager = camera2Engine.W;
                    camera2Engine.Y = cameraDevice;
                    try {
                        CameraEngine.f38883f.b(1, "onStartEngine:", "Opened camera device.");
                        camera2Engine.Z = cameraManager.getCameraCharacteristics(camera2Engine.X);
                        boolean zB = camera2Engine.D.b(Reference.SENSOR, Reference.VIEW);
                        int i3 = AnonymousClass24.f38871a[camera2Engine.t.ordinal()];
                        if (i3 == 1) {
                            i2 = 256;
                        } else {
                            if (i3 != 2) {
                                throw new IllegalArgumentException("Unknown format:" + camera2Engine.t);
                            }
                            i2 = 32;
                        }
                        camera2Engine.f38879h = new Camera2Options(cameraManager, camera2Engine.X, zB, i2);
                        CaptureRequest.Builder builder = camera2Engine.t0;
                        CaptureRequest.Builder builderCreateCaptureRequest = camera2Engine.Y.createCaptureRequest(1);
                        camera2Engine.t0 = builderCreateCaptureRequest;
                        builderCreateCaptureRequest.setTag(1);
                        camera2Engine.i0(camera2Engine.t0, builder);
                        CaptureRequest.Builder builder2 = camera2Engine.t0;
                        taskCompletionSource2.d(camera2Engine.f38879h);
                    } catch (CameraAccessException e2) {
                        taskCompletionSource2.c(Camera2Engine.s0(e2));
                    }
                }
            }, (Handler) null);
            return taskCompletionSource.f32085a;
        } catch (CameraAccessException e2) {
            throw s0(e2);
        }
    }

    public final MeterAction t0(MeteringRegions meteringRegions) {
        MeterAction meterAction = this.i1;
        if (meterAction != null) {
            meterAction.a(this);
        }
        CaptureRequest.Builder builder = this.t0;
        int[] iArr = (int[]) v0(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES, new int[0]);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        if (arrayList.contains(1)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        } else if (this.I == Mode.VIDEO && arrayList.contains(3)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        } else if (arrayList.contains(4)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
        }
        MeterAction meterAction2 = new MeterAction(this, meteringRegions, meteringRegions == null);
        this.i1 = meterAction2;
        return meterAction2;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task u() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStartPreview:", "Dispatching onCameraPreviewStreamSizeChanged.");
        this.d.k();
        Reference reference = Reference.VIEW;
        com.otaliastudios.cameraview.size.Size sizeQ = q(reference);
        if (sizeQ == null) {
            md.k("previewStreamSize should not be null at this point.");
            return null;
        }
        this.g.q(sizeQ.f39086b, sizeQ.f39087c);
        CameraPreview cameraPreview = this.g;
        Reference reference2 = Reference.BASE;
        Axis axis = Axis.ABSOLUTE;
        Angles angles = this.D;
        cameraPreview.p(angles.c(reference2, reference, axis));
        if (this.n) {
            U().d(this.m, this.l, angles);
        }
        cameraLogger.b(1, "onStartPreview:", "Starting preview.");
        Surface[] surfaceArr = new Surface[0];
        this.t0.addTarget(this.f1);
        Surface surface = this.e1;
        if (surface != null) {
            this.t0.addTarget(surface);
        }
        for (Surface surface2 : surfaceArr) {
            if (surface2 == null) {
                md.n("Should not add a null surface.");
                break;
            }
            this.t0.addTarget(surface2);
        }
        p0(2, false);
        cameraLogger.b(1, "onStartPreview:", "Started preview.");
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        new BaseAction() { // from class: com.otaliastudios.cameraview.engine.Camera2Engine.6
            @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
            public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                l(Integer.MAX_VALUE);
                taskCompletionSource.d(null);
            }
        }.m(this);
        return taskCompletionSource.f32085a;
    }

    public final ArrayList u0(Range[] rangeArr) {
        ArrayList arrayList = new ArrayList();
        int iRound = Math.round(this.f38879h.p);
        int iRound2 = Math.round(this.f38879h.q);
        for (Range range : rangeArr) {
            if (range.contains(Integer.valueOf(iRound)) || range.contains(Integer.valueOf(iRound2))) {
                CameraLogger cameraLogger = FpsRangeValidator.f38999a;
                String str = Build.MODEL;
                String str2 = Build.BRAND;
                String str3 = Build.MANUFACTURER;
                cameraLogger.b(1, "Build.MODEL:", str, "Build.BRAND:", str2, "Build.MANUFACTURER:", str3);
                List list = (List) FpsRangeValidator.f39000b.get(str3 + " " + str);
                if (list == null || !list.contains(range)) {
                    arrayList.add(range);
                } else {
                    cameraLogger.b(1, "Dropping range:", range);
                }
            }
        }
        return arrayList;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task v() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStopBind:", "About to clean up.");
        this.e1 = null;
        this.f1 = null;
        this.f38882k = null;
        this.f38881j = null;
        this.l = null;
        ImageReader imageReader = this.d1;
        if (imageReader != null) {
            imageReader.close();
            this.d1 = null;
        }
        ImageReader imageReader2 = this.g1;
        if (imageReader2 != null) {
            imageReader2.close();
            this.g1 = null;
        }
        this.h0.close();
        this.h0 = null;
        cameraLogger.b(1, "onStopBind:", "Returning.");
        return Tasks.f(null);
    }

    public final Object v0(CameraCharacteristics.Key key, Object obj) {
        Object obj2 = this.Z.get(key);
        return obj2 == null ? obj : obj2;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task w() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        try {
            cameraLogger.b(1, "onStopEngine:", "Clean up.", "Releasing camera.");
            this.Y.close();
            cameraLogger.b(1, "onStopEngine:", "Clean up.", "Released camera.");
        } catch (Exception e2) {
            cameraLogger.b(2, "onStopEngine:", "Clean up.", "Exception while releasing camera.", e2);
        }
        this.Y = null;
        cameraLogger.b(1, "onStopEngine:", "Aborting actions.");
        Iterator it = this.h1.iterator();
        while (it.hasNext()) {
            ((Action) it.next()).a(this);
        }
        this.Z = null;
        this.f38879h = null;
        this.t0 = null;
        cameraLogger.b(2, "onStopEngine:", "Returning.");
        return Tasks.f(null);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task x() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStopPreview:", "Started.");
        this.f38880i = null;
        if (this.n) {
            U().c();
        }
        this.t0.removeTarget(this.f1);
        Surface surface = this.e1;
        if (surface != null) {
            this.t0.removeTarget(surface);
        }
        this.b1 = null;
        cameraLogger.b(1, "onStopPreview:", "Returning.");
        return Tasks.f(null);
    }
}

package com.otaliastudios.cameraview.engine;

import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.location.Location;
import android.view.SurfaceHolder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraException;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.CameraOptions;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.Mode;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.mappers.Camera1Mapper;
import com.otaliastudios.cameraview.engine.metering.Camera1MeteringTransform;
import com.otaliastudios.cameraview.engine.offset.Angles;
import com.otaliastudios.cameraview.engine.offset.Axis;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.options.Camera1Options;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator;
import com.otaliastudios.cameraview.frame.ByteBufferFrameManager;
import com.otaliastudios.cameraview.frame.Frame;
import com.otaliastudios.cameraview.frame.FrameManager;
import com.otaliastudios.cameraview.gesture.Gesture;
import com.otaliastudios.cameraview.metering.MeteringRegions;
import com.otaliastudios.cameraview.picture.Full1PictureRecorder;
import com.otaliastudios.cameraview.picture.Snapshot1PictureRecorder;
import com.otaliastudios.cameraview.picture.SnapshotGlPictureRecorder;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.preview.RendererCameraPreview;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import defpackage.b21;
import defpackage.md;
import defpackage.tr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class Camera1Engine extends CameraBaseEngine implements Camera.PreviewCallback, Camera.ErrorCallback, ByteBufferFrameManager.BufferCallback {
    public static final /* synthetic */ int Z = 0;
    public final Camera1Mapper W;
    public Camera X;
    public int Y;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera1Engine$10, reason: invalid class name */
    class AnonymousClass10 implements Comparator<int[]> {
        @Override // java.util.Comparator
        public final int compare(int[] iArr, int[] iArr2) {
            int[] iArr3 = iArr;
            int[] iArr4 = iArr2;
            return (iArr4[1] - iArr4[0]) - (iArr3[1] - iArr3[0]);
        }
    }

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera1Engine$11, reason: invalid class name */
    class AnonymousClass11 implements Runnable {
        final /* synthetic */ Gesture val$gesture;
        final /* synthetic */ PointF val$legacyPoint;
        final /* synthetic */ MeteringRegions val$regions;

        public AnonymousClass11(MeteringRegions meteringRegions, Gesture gesture, PointF pointF) {
            this.val$regions = meteringRegions;
            this.val$gesture = gesture;
            this.val$legacyPoint = pointF;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Camera1Engine.this.f38879h.o) {
                Camera1Engine camera1Engine = Camera1Engine.this;
                Angles angles = camera1Engine.D;
                CameraPreview cameraPreview = camera1Engine.g;
                Camera1MeteringTransform camera1MeteringTransform = new Camera1MeteringTransform(angles, new Size(cameraPreview.d, cameraPreview.f39070e));
                MeteringRegions meteringRegionsC = this.val$regions.c(camera1MeteringTransform);
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                int maxNumFocusAreas = parameters.getMaxNumFocusAreas();
                int maxNumMeteringAreas = parameters.getMaxNumMeteringAreas();
                if (maxNumFocusAreas > 0) {
                    parameters.setFocusAreas(meteringRegionsC.b(maxNumFocusAreas, camera1MeteringTransform));
                }
                if (maxNumMeteringAreas > 0) {
                    parameters.setMeteringAreas(meteringRegionsC.b(maxNumMeteringAreas, camera1MeteringTransform));
                }
                parameters.setFocusMode("auto");
                Camera1Engine.this.X.setParameters(parameters);
                Camera1Engine.this.d.g(this.val$gesture, this.val$legacyPoint);
                Camera1Engine.this.f38886e.d(0, "focus end");
                Camera1Engine.this.f38886e.b("focus end", 2500L, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                        Camera1Engine.this.d.d(anonymousClass11.val$gesture, false, anonymousClass11.val$legacyPoint);
                    }
                });
                try {
                    Camera1Engine.this.X.autoFocus(new Camera.AutoFocusCallback() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.11.2
                        @Override // android.hardware.Camera.AutoFocusCallback
                        public final void onAutoFocus(boolean z, Camera camera) {
                            AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                            Camera1Engine.this.f38886e.d(0, "focus end");
                            Camera1Engine.this.f38886e.d(0, "focus reset");
                            Camera1Engine.this.d.d(anonymousClass11.val$gesture, z, anonymousClass11.val$legacyPoint);
                            Camera1Engine camera1Engine2 = Camera1Engine.this;
                            long j2 = camera1Engine2.O;
                            if (j2 <= 0 || j2 == Long.MAX_VALUE) {
                                return;
                            }
                            camera1Engine2.f38886e.g("focus reset", CameraState.ENGINE, j2, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.11.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Camera1Engine.this.X.cancelAutoFocus();
                                    Camera.Parameters parameters2 = Camera1Engine.this.X.getParameters();
                                    int maxNumFocusAreas2 = parameters2.getMaxNumFocusAreas();
                                    int maxNumMeteringAreas2 = parameters2.getMaxNumMeteringAreas();
                                    if (maxNumFocusAreas2 > 0) {
                                        parameters2.setFocusAreas(null);
                                    }
                                    if (maxNumMeteringAreas2 > 0) {
                                        parameters2.setMeteringAreas(null);
                                    }
                                    Camera1Engine.this.j0(parameters2);
                                    Camera1Engine.this.X.setParameters(parameters2);
                                }
                            });
                        }
                    });
                } catch (RuntimeException e2) {
                    CameraEngine.f38883f.b(3, "startAutoFocus:", "Error calling autoFocus", e2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.Camera1Engine$9, reason: invalid class name */
    class AnonymousClass9 implements Comparator<int[]> {
        @Override // java.util.Comparator
        public final int compare(int[] iArr, int[] iArr2) {
            int[] iArr3 = iArr;
            int[] iArr4 = iArr2;
            return (iArr3[1] - iArr3[0]) - (iArr4[1] - iArr4[0]);
        }
    }

    public Camera1Engine(CameraEngine.Callback callback) {
        super(callback);
        if (Camera1Mapper.f38910a == null) {
            Camera1Mapper.f38910a = new Camera1Mapper();
        }
        this.W = Camera1Mapper.f38910a;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void B(float f2, final float[] fArr, final PointF[] pointFArr, final boolean z) {
        final float f3 = this.w;
        this.w = f2;
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        cameraStateOrchestrator.d(20, "exposure correction");
        cameraStateOrchestrator.f("exposure correction", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.6
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.k0(parameters, f3)) {
                    Camera1Engine.this.X.setParameters(parameters);
                    if (z) {
                        Camera1Engine camera1Engine = Camera1Engine.this;
                        camera1Engine.d.h(camera1Engine.w, fArr, pointFArr);
                    }
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void C(Flash flash) {
        final Flash flash2 = this.o;
        this.o = flash;
        this.f38886e.f("flash (" + flash + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.1
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.l0(parameters, flash2)) {
                    Camera1Engine.this.X.setParameters(parameters);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void D(int i2) {
        this.m = 17;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void E(boolean z) {
        this.n = z;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void F(Hdr hdr) {
        final Hdr hdr2 = this.s;
        this.s = hdr;
        this.f38886e.f("hdr (" + hdr + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.4
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.m0(parameters, hdr2)) {
                    Camera1Engine.this.X.setParameters(parameters);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void G(Location location) {
        final Location location2 = this.u;
        this.u = location;
        this.f38886e.f("location", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.2
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                Camera1Engine.this.n0(parameters);
                Camera1Engine.this.X.setParameters(parameters);
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void H(PictureFormat pictureFormat) {
        if (pictureFormat == PictureFormat.JPEG) {
            this.t = pictureFormat;
        } else {
            b21.p(pictureFormat, "Unsupported picture format: ");
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void I(boolean z) {
        final boolean z2 = this.x;
        this.x = z;
        this.f38886e.f(tr.i("play sounds (", ")", z), CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.7
            @Override // java.lang.Runnable
            public void run() {
                Camera1Engine camera1Engine = Camera1Engine.this;
                boolean z3 = z2;
                int i2 = Camera1Engine.Z;
                camera1Engine.o0(z3);
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void J(final float f2) {
        this.A = f2;
        this.f38886e.f("preview fps (" + f2 + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.8
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.p0(parameters, f2)) {
                    Camera1Engine.this.X.setParameters(parameters);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void K(WhiteBalance whiteBalance) {
        final WhiteBalance whiteBalance2 = this.p;
        this.p = whiteBalance;
        this.f38886e.f("white balance (" + whiteBalance + ")", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.3
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.q0(parameters, whiteBalance2)) {
                    Camera1Engine.this.X.setParameters(parameters);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void L(float f2, final PointF[] pointFArr, final boolean z) {
        final float f3 = this.v;
        this.v = f2;
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        cameraStateOrchestrator.d(20, "zoom");
        cameraStateOrchestrator.f("zoom", CameraState.ENGINE, new Runnable() { // from class: com.otaliastudios.cameraview.engine.Camera1Engine.5
            @Override // java.lang.Runnable
            public void run() {
                Camera.Parameters parameters = Camera1Engine.this.X.getParameters();
                if (Camera1Engine.this.r0(parameters, f3)) {
                    Camera1Engine.this.X.setParameters(parameters);
                    if (z) {
                        Camera1Engine camera1Engine = Camera1Engine.this;
                        camera1Engine.d.m(camera1Engine.v, pointFArr);
                    }
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final void N(Gesture gesture, MeteringRegions meteringRegions, PointF pointF) {
        this.f38886e.f("auto focus", CameraState.BIND, new AnonymousClass11(meteringRegions, gesture, pointF));
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final ArrayList W() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        try {
            List<Camera.Size> supportedPreviewSizes = this.X.getParameters().getSupportedPreviewSizes();
            ArrayList arrayList = new ArrayList(supportedPreviewSizes.size());
            for (Camera.Size size : supportedPreviewSizes) {
                Size size2 = new Size(size.width, size.height);
                if (!arrayList.contains(size2)) {
                    arrayList.add(size2);
                }
            }
            cameraLogger.b(1, "getPreviewStreamAvailableSizes:", arrayList);
            return arrayList;
        } catch (Exception e2) {
            cameraLogger.b(3, "getPreviewStreamAvailableSizes:", "Failed to compute preview size. Camera params is empty");
            throw new CameraException(e2, 2);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final FrameManager Z(int i2) {
        return new ByteBufferFrameManager(i2, this);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void a0() {
        CameraEngine.f38883f.b(1, "RESTART PREVIEW:", "scheduled. State:", this.f38886e.f38958f);
        R(false);
        O();
    }

    @Override // com.otaliastudios.cameraview.frame.ByteBufferFrameManager.BufferCallback
    public final void b(byte[] bArr) {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        CameraState cameraState = cameraStateOrchestrator.f38958f;
        CameraState cameraState2 = CameraState.ENGINE;
        if (cameraState.a(cameraState2) && cameraStateOrchestrator.g.a(cameraState2)) {
            this.X.addCallbackBuffer(bArr);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void b0(PictureResult.Stub stub, boolean z) {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onTakePicture:", "executing.");
        Reference reference = Reference.SENSOR;
        Reference reference2 = Reference.OUTPUT;
        stub.f38849c = this.D.c(reference, reference2, Axis.RELATIVE_TO_SENSOR);
        stub.d = V(reference2);
        Full1PictureRecorder full1PictureRecorder = new Full1PictureRecorder(stub, this, this.X);
        this.f38880i = full1PictureRecorder;
        full1PictureRecorder.b();
        cameraLogger.b(1, "onTakePicture:", "executed.");
    }

    @Override // com.otaliastudios.cameraview.engine.CameraBaseEngine
    public final void c0(PictureResult.Stub stub, AspectRatio aspectRatio, boolean z) {
        Camera1Engine camera1Engine;
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onTakePictureSnapshot:", "executing.");
        Reference reference = Reference.OUTPUT;
        stub.d = Y(reference);
        boolean z2 = this.g instanceof RendererCameraPreview;
        Angles angles = this.D;
        if (z2) {
            stub.f38849c = angles.c(Reference.VIEW, reference, Axis.ABSOLUTE);
            camera1Engine = this;
            camera1Engine.f38880i = new SnapshotGlPictureRecorder(stub, camera1Engine, (RendererCameraPreview) this.g, aspectRatio, this.V);
        } else {
            camera1Engine = this;
            stub.f38849c = angles.c(Reference.SENSOR, reference, Axis.RELATIVE_TO_SENSOR);
            camera1Engine.f38880i = new Snapshot1PictureRecorder(stub, camera1Engine, camera1Engine.X, aspectRatio);
        }
        camera1Engine.f38880i.b();
        cameraLogger.b(1, "onTakePictureSnapshot:", "executed.");
    }

    public final void i0(Camera.Parameters parameters) {
        parameters.setRecordingHint(this.I == Mode.VIDEO);
        j0(parameters);
        l0(parameters, Flash.OFF);
        n0(parameters);
        q0(parameters, WhiteBalance.AUTO);
        m0(parameters, Hdr.OFF);
        r0(parameters, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        k0(parameters, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        o0(this.x);
        p0(parameters, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void j0(Camera.Parameters parameters) {
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (this.I == Mode.VIDEO && supportedFocusModes.contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
            return;
        }
        if (supportedFocusModes.contains("continuous-picture")) {
            parameters.setFocusMode("continuous-picture");
        } else if (supportedFocusModes.contains("infinity")) {
            parameters.setFocusMode("infinity");
        } else if (supportedFocusModes.contains("fixed")) {
            parameters.setFocusMode("fixed");
        }
    }

    public final boolean k0(Camera.Parameters parameters, float f2) {
        CameraOptions cameraOptions = this.f38879h;
        if (!cameraOptions.l) {
            this.w = f2;
            return false;
        }
        float f3 = cameraOptions.n;
        float f4 = cameraOptions.m;
        float f5 = this.w;
        if (f5 < f4) {
            f3 = f4;
        } else if (f5 <= f3) {
            f3 = f5;
        }
        this.w = f3;
        parameters.setExposureCompensation((int) (f3 / parameters.getExposureCompensationStep()));
        return true;
    }

    public final boolean l0(Camera.Parameters parameters, Flash flash) {
        if (!this.f38879h.a(this.o)) {
            this.o = flash;
            return false;
        }
        Flash flash2 = this.o;
        this.W.getClass();
        parameters.setFlashMode((String) Camera1Mapper.f38911b.get(flash2));
        return true;
    }

    public final boolean m0(Camera.Parameters parameters, Hdr hdr) {
        if (!this.f38879h.a(this.s)) {
            this.s = hdr;
            return false;
        }
        Hdr hdr2 = this.s;
        this.W.getClass();
        parameters.setSceneMode((String) Camera1Mapper.f38913e.get(hdr2));
        return true;
    }

    public final void n0(Camera.Parameters parameters) {
        Location location = this.u;
        if (location != null) {
            parameters.setGpsLatitude(location.getLatitude());
            parameters.setGpsLongitude(this.u.getLongitude());
            parameters.setGpsAltitude(this.u.getAltitude());
            parameters.setGpsTimestamp(this.u.getTime());
            parameters.setGpsProcessingMethod(this.u.getProvider());
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final boolean o(Facing facing) {
        this.W.getClass();
        Integer num = (Integer) Camera1Mapper.d.get(facing);
        int iIntValue = num.intValue();
        CameraEngine.f38883f.b(1, "collectCameraInfo", "Facing:", facing, "Internal:", num, "Cameras:", Integer.valueOf(Camera.getNumberOfCameras()));
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == iIntValue) {
                int i3 = cameraInfo.orientation;
                Angles angles = this.D;
                angles.getClass();
                Angles.e(i3);
                angles.f38945a = facing;
                angles.f38946b = i3;
                if (facing == Facing.FRONT) {
                    angles.f38946b = Angles.f(360 - i3);
                }
                angles.d();
                this.Y = i2;
                return true;
            }
        }
        return false;
    }

    public final boolean o0(boolean z) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.Y, cameraInfo);
        if (cameraInfo.canDisableShutterSound) {
            try {
                return this.X.enableShutterSound(this.x);
            } catch (RuntimeException unused) {
                return false;
            }
        }
        if (this.x) {
            return true;
        }
        this.x = z;
        return false;
    }

    @Override // android.hardware.Camera.ErrorCallback
    public final void onError(int i2, Camera camera) {
        int i3 = 3;
        RuntimeException runtimeException = new RuntimeException(CameraEngine.f38883f.b(3, "Internal Camera1 error.", Integer.valueOf(i2)));
        if (i2 != 1 && i2 != 2 && i2 != 100) {
            i3 = 0;
        }
        throw new CameraException(runtimeException, i3);
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        Frame frameA;
        if (bArr == null || (frameA = ((ByteBufferFrameManager) U()).a(System.currentTimeMillis(), bArr)) == null) {
            return;
        }
        this.d.a(frameA);
    }

    public final boolean p0(Camera.Parameters parameters, float f2) {
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        if (!this.B || this.A == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Collections.sort(supportedPreviewFpsRange, new AnonymousClass10());
        } else {
            Collections.sort(supportedPreviewFpsRange, new AnonymousClass9());
        }
        float f3 = this.A;
        if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            for (int[] iArr : supportedPreviewFpsRange) {
                int i2 = iArr[0];
                float f4 = i2 / 1000.0f;
                int i3 = iArr[1];
                float f5 = i3 / 1000.0f;
                if ((f4 <= 30.0f && 30.0f <= f5) || (f4 <= 24.0f && 24.0f <= f5)) {
                    parameters.setPreviewFpsRange(i2, i3);
                    return true;
                }
            }
        } else {
            float fMin = Math.min(f3, this.f38879h.q);
            this.A = fMin;
            this.A = Math.max(fMin, this.f38879h.p);
            for (int[] iArr2 : supportedPreviewFpsRange) {
                float f6 = iArr2[0] / 1000.0f;
                float f7 = iArr2[1] / 1000.0f;
                float fRound = Math.round(this.A);
                if (f6 <= fRound && fRound <= f7) {
                    parameters.setPreviewFpsRange(iArr2[0], iArr2[1]);
                    return true;
                }
            }
        }
        this.A = f2;
        return false;
    }

    public final boolean q0(Camera.Parameters parameters, WhiteBalance whiteBalance) {
        if (!this.f38879h.a(this.p)) {
            this.p = whiteBalance;
            return false;
        }
        WhiteBalance whiteBalance2 = this.p;
        this.W.getClass();
        parameters.setWhiteBalance((String) Camera1Mapper.f38912c.get(whiteBalance2));
        parameters.remove("auto-whitebalance-lock");
        return true;
    }

    public final boolean r0(Camera.Parameters parameters, float f2) {
        if (!this.f38879h.f38830k) {
            this.v = f2;
            return false;
        }
        parameters.setZoom((int) (this.v * parameters.getMaxZoom()));
        this.X.setParameters(parameters);
        return true;
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task s() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStartBind:", "Started");
        try {
            if (this.g.i() == SurfaceHolder.class) {
                this.X.setPreviewDisplay((SurfaceHolder) this.g.h());
            } else {
                if (this.g.i() != SurfaceTexture.class) {
                    throw new RuntimeException("Unknown CameraPreview output class.");
                }
                this.X.setPreviewTexture((SurfaceTexture) this.g.h());
            }
            this.f38881j = S(this.I);
            this.f38882k = T();
            cameraLogger.b(1, "onStartBind:", "Returning");
            return Tasks.f(null);
        } catch (IOException e2) {
            cameraLogger.b(3, "onStartBind:", "Failed to bind.", e2);
            throw new CameraException(e2, 2);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task t() {
        Angles angles = this.D;
        CameraLogger cameraLogger = CameraEngine.f38883f;
        try {
            Camera cameraOpen = Camera.open(this.Y);
            this.X = cameraOpen;
            if (cameraOpen == null) {
                cameraLogger.b(3, "onStartEngine:", "Failed to connect. Camera is null, maybe in use by another app or already released?");
                throw new CameraException(1);
            }
            cameraOpen.setErrorCallback(this);
            cameraLogger.b(1, "onStartEngine:", "Applying default parameters.");
            try {
                Camera.Parameters parameters = this.X.getParameters();
                int i2 = this.Y;
                Reference reference = Reference.SENSOR;
                Reference reference2 = Reference.VIEW;
                this.f38879h = new Camera1Options(parameters, i2, angles.b(reference, reference2));
                i0(parameters);
                this.X.setParameters(parameters);
                try {
                    this.X.setDisplayOrientation(angles.c(reference, reference2, Axis.ABSOLUTE));
                    cameraLogger.b(1, "onStartEngine:", "Ended");
                    return Tasks.f(this.f38879h);
                } catch (Exception unused) {
                    cameraLogger.b(3, "onStartEngine:", "Failed to connect. Can't set display orientation, maybe preview already exists?");
                    throw new CameraException(1);
                }
            } catch (Exception e2) {
                cameraLogger.b(3, "onStartEngine:", "Failed to connect. Problem with camera params");
                throw new CameraException(e2, 1);
            }
        } catch (Exception e3) {
            cameraLogger.b(3, "onStartEngine:", "Failed to connect. Maybe in use by another app?");
            throw new CameraException(e3, 1);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task u() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStartPreview", "Dispatching onCameraPreviewStreamSizeChanged.");
        this.d.k();
        Size sizeQ = q(Reference.VIEW);
        if (sizeQ == null) {
            md.k("previewStreamSize should not be null at this point.");
            return null;
        }
        this.g.q(sizeQ.f39086b, sizeQ.f39087c);
        this.g.p(0);
        try {
            Camera.Parameters parameters = this.X.getParameters();
            parameters.setPreviewFormat(17);
            Size size = this.f38882k;
            parameters.setPreviewSize(size.f39086b, size.f39087c);
            Mode mode = this.I;
            Mode mode2 = Mode.PICTURE;
            if (mode == mode2) {
                Size size2 = this.f38881j;
                parameters.setPictureSize(size2.f39086b, size2.f39087c);
            } else {
                Size sizeS = S(mode2);
                parameters.setPictureSize(sizeS.f39086b, sizeS.f39087c);
            }
            try {
                this.X.setParameters(parameters);
                this.X.setPreviewCallbackWithBuffer(null);
                this.X.setPreviewCallbackWithBuffer(this);
                ((ByteBufferFrameManager) U()).d(17, this.f38882k, this.D);
                cameraLogger.b(1, "onStartPreview", "Starting preview with startPreview().");
                try {
                    this.X.startPreview();
                    cameraLogger.b(1, "onStartPreview", "Started preview.");
                    return Tasks.f(null);
                } catch (Exception e2) {
                    cameraLogger.b(3, "onStartPreview", "Failed to start preview.", e2);
                    throw new CameraException(e2, 2);
                }
            } catch (Exception e3) {
                cameraLogger.b(3, "onStartPreview:", "Failed to set params for camera. Maybe incorrect parameter put in params?");
                throw new CameraException(e3, 2);
            }
        } catch (Exception e4) {
            cameraLogger.b(3, "onStartPreview:", "Failed to get params from camera. Maybe low level problem with camera or camera has already released?");
            throw new CameraException(e4, 2);
        }
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task v() {
        this.f38882k = null;
        this.f38881j = null;
        try {
            if (this.g.i() == SurfaceHolder.class) {
                this.X.setPreviewDisplay(null);
            } else {
                if (this.g.i() != SurfaceTexture.class) {
                    throw new RuntimeException("Unknown CameraPreview output class.");
                }
                this.X.setPreviewTexture(null);
            }
        } catch (IOException e2) {
            CameraEngine.f38883f.b(3, "onStopBind", "Could not release surface", e2);
        }
        return Tasks.f(null);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task w() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStopEngine:", "About to clean up.");
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        cameraStateOrchestrator.d(0, "focus reset");
        cameraStateOrchestrator.d(0, "focus end");
        if (this.X != null) {
            try {
                cameraLogger.b(1, "onStopEngine:", "Clean up.", "Releasing camera.");
                this.X.release();
                cameraLogger.b(1, "onStopEngine:", "Clean up.", "Released camera.");
            } catch (Exception e2) {
                cameraLogger.b(2, "onStopEngine:", "Clean up.", "Exception while releasing camera.", e2);
            }
            this.X = null;
            this.f38879h = null;
        }
        this.f38879h = null;
        this.X = null;
        cameraLogger.b(2, "onStopEngine:", "Clean up.", "Returning.");
        return Tasks.f(null);
    }

    @Override // com.otaliastudios.cameraview.engine.CameraEngine
    public final Task x() {
        CameraLogger cameraLogger = CameraEngine.f38883f;
        cameraLogger.b(1, "onStopPreview:", "Started.");
        this.f38880i = null;
        ((ByteBufferFrameManager) U()).c();
        cameraLogger.b(1, "onStopPreview:", "Releasing preview buffers.");
        this.X.setPreviewCallbackWithBuffer(null);
        try {
            cameraLogger.b(1, "onStopPreview:", "Stopping preview.");
            this.X.stopPreview();
            cameraLogger.b(1, "onStopPreview:", "Stopped preview.");
        } catch (Exception e2) {
            cameraLogger.b(3, "stopPreview", "Could not stop preview", e2);
        }
        return Tasks.f(null);
    }
}

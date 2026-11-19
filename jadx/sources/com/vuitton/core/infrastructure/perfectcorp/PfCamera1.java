package com.vuitton.core.infrastructure.perfectcorp;

import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.text.TextUtils;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableListIterator;
import com.vuitton.core.infrastructure.perfectcorp.PfCamera1;
import defpackage.md;
import defpackage.s3;
import defpackage.uh;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class PfCamera1 extends PfCamera {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ImmutableMap f66177c;
    public static final ImmutableMap d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f66178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Camera f66179b;

    public static final class Camera1Parameters implements PfCamera.Parameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Camera.Parameters f66180a;

        public Camera1Parameters(Camera.Parameters parameters) {
            Objects.requireNonNull(parameters);
            this.f66180a = parameters;
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final String a() {
            return this.f66180a.getFocusMode();
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final List b() {
            FluentIterable fluentIterableB = FluentIterable.a(this.f66180a.getSupportedPreviewSizes()).b(new uh(12));
            Iterable iterable = fluentIterableB.f33580b;
            Iterable iterable2 = fluentIterableB;
            if (iterable != null) {
                iterable2 = iterable;
            }
            return ImmutableList.s(iterable2);
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final void c(int i2, int i3) {
            this.f66180a.setPreviewSize(i2, i3);
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final void d(String str) {
            Iterator it = PfCamera1.d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (str.equals(entry.getValue())) {
                    this.f66180a.setFocusMode((String) entry.getKey());
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final List e() {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            Iterator<String> it = this.f66180a.getSupportedFocusModes().iterator();
            while (it.hasNext()) {
                String str = (String) PfCamera1.d.get(it.next());
                if (!TextUtils.isEmpty(str)) {
                    builder.e(str);
                }
            }
            return builder.j();
        }

        @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera.Parameters
        public final PfCamera.Size getPreviewSize() {
            Camera.Size previewSize = this.f66180a.getPreviewSize();
            return new PfCamera.Size(previewSize.width, previewSize.height);
        }
    }

    static {
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        builder.d(1, CameraFacing.FRONT);
        builder.d(0, CameraFacing.BACK);
        f66177c = builder.a(true);
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder();
        builder2.d("auto", "auto");
        builder2.d("infinity", "infinity");
        builder2.d("macro", "macro");
        builder2.d("fixed", "fixed");
        builder2.d("edof", "edof");
        builder2.d("continuous-video", "continuous-video");
        builder2.d("continuous-picture", "continuous-picture");
        d = builder2.a(true);
    }

    public PfCamera1(int i2) {
        this.f66178a = i2;
        Camera cameraOpen = Camera.open(i2);
        Objects.requireNonNull(cameraOpen);
        this.f66179b = cameraOpen;
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void a(final md mdVar) {
        Camera camera = this.f66179b;
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Area> listSingletonList = Collections.singletonList(new Camera.Area(new Rect(-100, -100, 100, 100), 1000));
        final String focusMode = parameters.getFocusMode();
        parameters.setFocusAreas(listSingletonList);
        parameters.setFocusMode("auto");
        camera.setParameters(parameters);
        camera.autoFocus(new Camera.AutoFocusCallback(this) { // from class: ao0
            @Override // android.hardware.Camera.AutoFocusCallback
            public final void onAutoFocus(boolean z, Camera camera2) {
                ImmutableMap immutableMap = PfCamera1.f66177c;
                mdVar.o(z);
                Camera.Parameters parameters2 = camera2.getParameters();
                parameters2.setFocusMode(focusMode);
                camera2.setParameters(parameters2);
            }
        });
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final PfCamera.CameraInfo b() {
        CameraFacing cameraFacing;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.f66178a, cameraInfo);
        int i2 = cameraInfo.facing;
        if (i2 == 0) {
            cameraFacing = CameraFacing.BACK;
        } else {
            if (i2 != 1) {
                md.n("Only supports front and back camera.");
                return null;
            }
            cameraFacing = CameraFacing.FRONT;
        }
        return new PfCamera.CameraInfo(cameraFacing, cameraInfo.orientation);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final PfCamera.Parameters c() {
        return new Camera1Parameters(this.f66179b.getParameters());
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void e() {
        this.f66179b.release();
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void f(PfCamera.Parameters parameters) {
        this.f66179b.setParameters(((Camera1Parameters) parameters).f66180a);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void g(final s3 s3Var) {
        Camera camera = this.f66179b;
        if (s3Var == null) {
            camera.setPreviewCallback(null);
        } else {
            camera.setPreviewCallback(new Camera.PreviewCallback(this) { // from class: zn0
                @Override // android.hardware.Camera.PreviewCallback
                public final void onPreviewFrame(byte[] bArr, Camera camera2) {
                    ImmutableMap immutableMap = PfCamera1.f66177c;
                    s3Var.h(bArr);
                }
            });
        }
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void h() throws IOException {
        this.f66179b.setPreviewDisplay(null);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void i(SurfaceTexture surfaceTexture) throws IOException {
        this.f66179b.setPreviewTexture(surfaceTexture);
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void j() {
        this.f66179b.startPreview();
    }

    @Override // com.vuitton.core.infrastructure.perfectcorp.PfCamera
    public final void k() {
        Camera camera = this.f66179b;
        camera.setPreviewCallback(null);
        camera.stopPreview();
    }
}

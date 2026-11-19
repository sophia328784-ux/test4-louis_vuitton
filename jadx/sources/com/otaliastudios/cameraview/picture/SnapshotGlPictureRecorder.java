package com.otaliastudios.cameraview.picture;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.filter.Filter;
import com.otaliastudios.cameraview.internal.CropHelper;
import com.otaliastudios.cameraview.internal.GlTextureDrawer;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import com.otaliastudios.cameraview.overlay.Overlay;
import com.otaliastudios.cameraview.overlay.OverlayDrawer;
import com.otaliastudios.cameraview.preview.RendererCameraPreview;
import com.otaliastudios.cameraview.preview.RendererFrameCallback;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import com.otaliastudios.opengl.core.EglCore;
import com.otaliastudios.opengl.internal.EglContext;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.EglSurface;
import com.otaliastudios.opengl.surface.EglWindowSurface;
import defpackage.v7;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import kotlin.io.CloseableKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class SnapshotGlPictureRecorder extends SnapshotPictureRecorder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RendererCameraPreview f39059f;
    public AspectRatio g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Overlay f39060h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f39061i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public OverlayDrawer f39062j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public GlTextureDrawer f39063k;

    public SnapshotGlPictureRecorder(PictureResult.Stub stub, PictureRecorder.PictureResultListener pictureResultListener, RendererCameraPreview rendererCameraPreview, AspectRatio aspectRatio, Overlay overlay) {
        super(stub, pictureResultListener);
        this.f39059f = rendererCameraPreview;
        this.g = aspectRatio;
        this.f39060h = overlay;
        this.f39061i = overlay != null && overlay.a(Overlay.Target.PICTURE_SNAPSHOT);
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public void a() {
        this.g = null;
        super.a();
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public void b() {
        this.f39059f.a(new RendererFrameCallback() { // from class: com.otaliastudios.cameraview.picture.SnapshotGlPictureRecorder.1
            @Override // com.otaliastudios.cameraview.preview.RendererFrameCallback
            public final void a(final SurfaceTexture surfaceTexture, final int i2, final float f2, final float f3) {
                final SnapshotGlPictureRecorder snapshotGlPictureRecorder = SnapshotGlPictureRecorder.this;
                snapshotGlPictureRecorder.f39059f.d(this);
                final EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
                WorkerHandler.a("FallbackCameraThread").f39023c.post(new Runnable() { // from class: com.otaliastudios.cameraview.picture.SnapshotGlPictureRecorder.2
                    @Override // java.lang.Runnable
                    public void run() throws IOException {
                        SnapshotGlPictureRecorder snapshotGlPictureRecorder2 = SnapshotGlPictureRecorder.this;
                        SurfaceTexture surfaceTexture2 = surfaceTexture;
                        int i3 = i2;
                        float f4 = f2;
                        float f5 = f3;
                        EGLContext eGLContext = eGLContextEglGetCurrentContext;
                        snapshotGlPictureRecorder2.getClass();
                        SurfaceTexture surfaceTexture3 = new SurfaceTexture(9999);
                        Size size = snapshotGlPictureRecorder2.f39051b.d;
                        surfaceTexture3.setDefaultBufferSize(size.f39086b, size.f39087c);
                        EglCore eglCore = new EglCore(eGLContext, 1);
                        EglWindowSurface eglWindowSurface = new EglWindowSurface(eglCore, surfaceTexture3);
                        EglCore eglCore2 = eglWindowSurface.f39144a;
                        EglSurface eglSurface = eglWindowSurface.f39145b;
                        eglCore2.getClass();
                        eglSurface.getClass();
                        EglDisplay eglDisplay = eglCore2.f39100a;
                        EglContext eglContext = EglKt.f39110a;
                        EglContext eglContext2 = eglCore2.f39101b;
                        EGLDisplay eGLDisplay = eglDisplay.f39109a;
                        EGLSurface eGLSurface = eglSurface.f39119a;
                        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eglContext2.f39108a)) {
                            v7.h("eglMakeCurrent failed");
                            return;
                        }
                        float[] fArr = snapshotGlPictureRecorder2.f39063k.f39002b;
                        surfaceTexture2.getTransformMatrix(fArr);
                        Matrix.translateM(fArr, 0, (1.0f - f4) / 2.0f, (1.0f - f5) / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        Matrix.scaleM(fArr, 0, f4, f5, 1.0f);
                        Matrix.translateM(fArr, 0, 0.5f, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        Matrix.rotateM(fArr, 0, i3 + snapshotGlPictureRecorder2.f39051b.f38849c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                        Matrix.scaleM(fArr, 0, 1.0f, -1.0f, 1.0f);
                        Matrix.translateM(fArr, 0, -0.5f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        if (snapshotGlPictureRecorder2.f39061i) {
                            OverlayDrawer overlayDrawer = snapshotGlPictureRecorder2.f39062j;
                            Overlay.Target target = Overlay.Target.PICTURE_SNAPSHOT;
                            overlayDrawer.getClass();
                            try {
                                boolean hardwareCanvasEnabled = overlayDrawer.f39030a.getHardwareCanvasEnabled();
                                Surface surface = overlayDrawer.f39032c;
                                Canvas canvasLockHardwareCanvas = hardwareCanvasEnabled ? surface.lockHardwareCanvas() : surface.lockCanvas(null);
                                canvasLockHardwareCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                                overlayDrawer.f39030a.b(target, canvasLockHardwareCanvas);
                                overlayDrawer.f39032c.unlockCanvasAndPost(canvasLockHardwareCanvas);
                            } catch (Surface.OutOfResourcesException e2) {
                                OverlayDrawer.g.b(2, "Got Surface.OutOfResourcesException while drawing video overlays", e2);
                            }
                            synchronized (overlayDrawer.f39034f) {
                                GLES20.glBindTexture(36197, overlayDrawer.f39033e.f39010a);
                                overlayDrawer.f39031b.updateTexImage();
                            }
                            overlayDrawer.f39031b.getTransformMatrix(overlayDrawer.d.f39002b);
                            Matrix.translateM(snapshotGlPictureRecorder2.f39062j.d.f39002b, 0, 0.5f, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            Matrix.rotateM(snapshotGlPictureRecorder2.f39062j.d.f39002b, 0, snapshotGlPictureRecorder2.f39051b.f38849c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                            Matrix.scaleM(snapshotGlPictureRecorder2.f39062j.d.f39002b, 0, 1.0f, -1.0f, 1.0f);
                            Matrix.translateM(snapshotGlPictureRecorder2.f39062j.d.f39002b, 0, -0.5f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                        snapshotGlPictureRecorder2.f39051b.f38849c = 0;
                        long timestamp = surfaceTexture2.getTimestamp() / 1000;
                        SnapshotPictureRecorder.f39065e.b(1, "takeFrame:", "timestampUs:", Long.valueOf(timestamp));
                        snapshotGlPictureRecorder2.f39063k.a(timestamp);
                        if (snapshotGlPictureRecorder2.f39061i) {
                            OverlayDrawer overlayDrawer2 = snapshotGlPictureRecorder2.f39062j;
                            overlayDrawer2.getClass();
                            GLES20.glDisable(2884);
                            GLES20.glDisable(2929);
                            GLES20.glEnable(3042);
                            GLES20.glBlendFunc(770, 771);
                            synchronized (overlayDrawer2.f39034f) {
                                overlayDrawer2.d.a(timestamp);
                            }
                        }
                        PictureResult.Stub stub = snapshotGlPictureRecorder2.f39051b;
                        Bitmap.CompressFormat.JPEG.getClass();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            eglWindowSurface.a(byteArrayOutputStream);
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArray.getClass();
                            byteArrayOutputStream.close();
                            stub.f38850e = byteArray;
                            EglCore eglCore3 = eglWindowSurface.f39144a;
                            EglSurface eglSurface2 = eglWindowSurface.f39145b;
                            eglCore3.getClass();
                            eglSurface2.getClass();
                            EGL14.eglDestroySurface(eglCore3.f39100a.f39109a, eglSurface2.f39119a);
                            eglWindowSurface.f39145b = EglKt.f39112c;
                            if (eglWindowSurface.d) {
                                Surface surface2 = eglWindowSurface.f39146c;
                                if (surface2 != null) {
                                    surface2.release();
                                }
                                eglWindowSurface.f39146c = null;
                            }
                            snapshotGlPictureRecorder2.f39063k.b();
                            surfaceTexture3.release();
                            if (snapshotGlPictureRecorder2.f39061i) {
                                OverlayDrawer overlayDrawer3 = snapshotGlPictureRecorder2.f39062j;
                                if (overlayDrawer3.f39033e != null) {
                                    GLES20.glBindTexture(36197, 0);
                                    overlayDrawer3.f39033e = null;
                                }
                                SurfaceTexture surfaceTexture4 = overlayDrawer3.f39031b;
                                if (surfaceTexture4 != null) {
                                    surfaceTexture4.release();
                                    overlayDrawer3.f39031b = null;
                                }
                                Surface surface3 = overlayDrawer3.f39032c;
                                if (surface3 != null) {
                                    surface3.release();
                                    overlayDrawer3.f39032c = null;
                                }
                                GlTextureDrawer glTextureDrawer = overlayDrawer3.d;
                                if (glTextureDrawer != null) {
                                    glTextureDrawer.b();
                                    overlayDrawer3.d = null;
                                }
                            }
                            eglCore.b();
                            snapshotGlPictureRecorder2.a();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(byteArrayOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                });
            }

            @Override // com.otaliastudios.cameraview.preview.RendererFrameCallback
            public final void b(int i2) {
                GlTextureDrawer glTextureDrawer = new GlTextureDrawer(i2);
                SnapshotGlPictureRecorder snapshotGlPictureRecorder = SnapshotGlPictureRecorder.this;
                snapshotGlPictureRecorder.f39063k = glTextureDrawer;
                Rect rectA = CropHelper.a(snapshotGlPictureRecorder.f39051b.d, snapshotGlPictureRecorder.g);
                snapshotGlPictureRecorder.f39051b.d = new Size(rectA.width(), rectA.height());
                if (snapshotGlPictureRecorder.f39061i) {
                    snapshotGlPictureRecorder.f39062j = new OverlayDrawer(snapshotGlPictureRecorder.f39060h, snapshotGlPictureRecorder.f39051b.d);
                }
            }

            @Override // com.otaliastudios.cameraview.preview.RendererFrameCallback
            public final void c(Filter filter) {
                SnapshotGlPictureRecorder.this.f39063k.d = filter.a();
            }
        });
    }
}

package com.otaliastudios.cameraview.preview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.otaliastudios.cameraview.filter.Filter;
import com.otaliastudios.cameraview.filter.NoFilter;
import com.otaliastudios.cameraview.internal.GlTextureDrawer;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.vuitton.android.R;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class GlCameraPreview extends CameraPreview<GLSurfaceView, SurfaceTexture> implements FilterCameraPreview, RendererCameraPreview {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f39073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SurfaceTexture f39074k;
    public GlTextureDrawer l;
    public final CopyOnWriteArraySet m;
    public float n;
    public float o;
    public ViewGroup p;
    public Filter q;

    public class Renderer implements GLSurfaceView.Renderer {
        public Renderer() {
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            GlCameraPreview glCameraPreview = GlCameraPreview.this;
            SurfaceTexture surfaceTexture = glCameraPreview.f39074k;
            if (surfaceTexture != null && glCameraPreview.f39071f > 0 && glCameraPreview.g > 0) {
                float[] fArr = glCameraPreview.l.f39002b;
                surfaceTexture.updateTexImage();
                glCameraPreview.f39074k.getTransformMatrix(fArr);
                if (glCameraPreview.f39072h != 0) {
                    Matrix.translateM(fArr, 0, 0.5f, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    Matrix.rotateM(fArr, 0, glCameraPreview.f39072h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                    Matrix.translateM(fArr, 0, -0.5f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if (glCameraPreview.f39069c) {
                    Matrix.translateM(fArr, 0, (1.0f - glCameraPreview.n) / 2.0f, (1.0f - glCameraPreview.o) / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    Matrix.scaleM(fArr, 0, glCameraPreview.n, glCameraPreview.o, 1.0f);
                }
                glCameraPreview.l.a(glCameraPreview.f39074k.getTimestamp() / 1000);
                Iterator it = glCameraPreview.m.iterator();
                while (it.hasNext()) {
                    ((RendererFrameCallback) it.next()).a(glCameraPreview.f39074k, glCameraPreview.f39072h, glCameraPreview.n, glCameraPreview.o);
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            gl10.glViewport(0, 0, i2, i3);
            GlCameraPreview glCameraPreview = GlCameraPreview.this;
            glCameraPreview.q.h(i2, i3);
            if (!glCameraPreview.f39073j) {
                glCameraPreview.f(i2, i3);
                glCameraPreview.f39073j = true;
            } else {
                if (i2 == glCameraPreview.d && i3 == glCameraPreview.f39070e) {
                    return;
                }
                glCameraPreview.g(i2, i3);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            GlCameraPreview glCameraPreview = GlCameraPreview.this;
            if (glCameraPreview.q == null) {
                glCameraPreview.q = new NoFilter();
            }
            GlTextureDrawer glTextureDrawer = new GlTextureDrawer();
            glCameraPreview.l = glTextureDrawer;
            glTextureDrawer.d = glCameraPreview.q;
            final int i2 = glTextureDrawer.f39001a.g;
            glCameraPreview.f39074k = new SurfaceTexture(i2);
            ((GLSurfaceView) glCameraPreview.f39068b).queueEvent(new Runnable() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.Renderer.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = GlCameraPreview.this.m.iterator();
                    while (it.hasNext()) {
                        ((RendererFrameCallback) it.next()).b(i2);
                    }
                }
            });
            glCameraPreview.f39074k.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.Renderer.2
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
                    ((GLSurfaceView) GlCameraPreview.this.f39068b).requestRender();
                }
            });
        }
    }

    public GlCameraPreview(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
        this.m = new CopyOnWriteArraySet();
        this.n = 1.0f;
        this.o = 1.0f;
    }

    @Override // com.otaliastudios.cameraview.preview.RendererCameraPreview
    public final void a(final RendererFrameCallback rendererFrameCallback) {
        ((GLSurfaceView) this.f39068b).queueEvent(new Runnable() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.2
            @Override // java.lang.Runnable
            public void run() {
                GlCameraPreview.this.m.add(rendererFrameCallback);
                GlTextureDrawer glTextureDrawer = GlCameraPreview.this.l;
                if (glTextureDrawer != null) {
                    rendererFrameCallback.b(glTextureDrawer.f39001a.g);
                }
                rendererFrameCallback.c(GlCameraPreview.this.q);
            }
        });
    }

    @Override // com.otaliastudios.cameraview.preview.FilterCameraPreview
    public final void b(final Filter filter) {
        this.q = filter;
        if (k()) {
            filter.h(this.d, this.f39070e);
        }
        ((GLSurfaceView) this.f39068b).queueEvent(new Runnable() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.3
            @Override // java.lang.Runnable
            public void run() {
                GlCameraPreview glCameraPreview = GlCameraPreview.this;
                GlTextureDrawer glTextureDrawer = glCameraPreview.l;
                if (glTextureDrawer != null) {
                    glTextureDrawer.d = filter;
                }
                Iterator it = glCameraPreview.m.iterator();
                while (it.hasNext()) {
                    ((RendererFrameCallback) it.next()).c(filter);
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.preview.FilterCameraPreview
    public final Filter c() {
        return this.q;
    }

    @Override // com.otaliastudios.cameraview.preview.RendererCameraPreview
    public final void d(RendererFrameCallback rendererFrameCallback) {
        this.m.remove(rendererFrameCallback);
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void e() {
        int i2;
        int i3;
        float fC;
        float fC2;
        if (this.f39071f <= 0 || this.g <= 0 || (i2 = this.d) <= 0 || (i3 = this.f39070e) <= 0) {
            return;
        }
        AspectRatio aspectRatioA = AspectRatio.a(i2, i3);
        AspectRatio aspectRatioA2 = AspectRatio.a(this.f39071f, this.g);
        if (aspectRatioA.c() >= aspectRatioA2.c()) {
            fC2 = aspectRatioA.c() / aspectRatioA2.c();
            fC = 1.0f;
        } else {
            fC = aspectRatioA2.c() / aspectRatioA.c();
            fC2 = 1.0f;
        }
        this.f39069c = fC > 1.02f || fC2 > 1.02f;
        this.n = 1.0f / fC;
        this.o = 1.0f / fC2;
        ((GLSurfaceView) this.f39068b).requestRender();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Object h() {
        return this.f39074k;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Class i() {
        return SurfaceTexture.class;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View j() {
        return this.p;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View l(Context context, ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.cameraview_gl_view, viewGroup, false);
        final GLSurfaceView gLSurfaceView = (GLSurfaceView) viewGroup2.findViewById(R.id.gl_surface_view);
        final Renderer renderer = new Renderer();
        gLSurfaceView.setEGLContextClientVersion(2);
        gLSurfaceView.setRenderer(renderer);
        gLSurfaceView.setRenderMode(0);
        gLSurfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.1
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                GlCameraPreview glCameraPreview = GlCameraPreview.this;
                glCameraPreview.d = 0;
                glCameraPreview.f39070e = 0;
                CameraPreview.SurfaceCallback surfaceCallback = glCameraPreview.f39067a;
                if (surfaceCallback != null) {
                    surfaceCallback.g();
                }
                gLSurfaceView.queueEvent(new Runnable() { // from class: com.otaliastudios.cameraview.preview.GlCameraPreview.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        GlCameraPreview glCameraPreview2 = GlCameraPreview.this;
                        SurfaceTexture surfaceTexture = glCameraPreview2.f39074k;
                        if (surfaceTexture != null) {
                            surfaceTexture.setOnFrameAvailableListener(null);
                            glCameraPreview2.f39074k.release();
                            glCameraPreview2.f39074k = null;
                        }
                        GlTextureDrawer glTextureDrawer = glCameraPreview2.l;
                        if (glTextureDrawer != null) {
                            glTextureDrawer.b();
                            glCameraPreview2.l = null;
                        }
                    }
                });
                glCameraPreview.f39073j = false;
            }
        });
        viewGroup.addView(viewGroup2, 0);
        this.p = viewGroup2;
        return gLSurfaceView;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void m() {
        super.m();
        this.m.clear();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void n() {
        ((GLSurfaceView) this.f39068b).onPause();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void o() {
        ((GLSurfaceView) this.f39068b).onResume();
    }
}

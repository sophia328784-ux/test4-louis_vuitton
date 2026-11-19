package com.vuitton.android.presentation.ar.filament;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
import android.view.SurfaceView;
import arrow.core.Either;
import com.google.android.filament.Camera;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.Scene;
import com.google.android.filament.SwapChain;
import com.google.android.filament.View;
import com.google.android.filament.Viewport;
import com.google.android.filament.android.DisplayHelper;
import com.google.android.filament.android.UiHelper;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.ResourceLoader;
import com.google.android.filament.gltfio.UbershaderProvider;
import defpackage.v40;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/ar/filament/Filament;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/view/SurfaceView;", "surfaceView", "<init>", "(Landroid/content/Context;Landroid/view/SurfaceView;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Filament {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceView f50580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EGLContext f50581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Engine f50582c;
    public final Renderer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scene f50583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Camera f50584f;
    public final View g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AssetLoader f50585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ResourceLoader f50586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SwapChain f50587j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DisplayHelper f50588k;
    public final UiHelper l;

    public Filament(Context context, SurfaceView surfaceView) {
        context.getClass();
        surfaceView.getClass();
        this.f50580a = surfaceView;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        eGLDisplayEglGetDisplay.getClass();
        Object obj = null;
        EGL14.eglInitialize(eGLDisplayEglGetDisplay, null, 0, null, 0);
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12352, 64, 12344}, 0, eGLConfigArr, 0, 1, new int[]{0}, 0);
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 3, 12344}, 0);
        eGLContextEglCreateContext.getClass();
        EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfigArr[0], new int[]{12375, 1, 12374, 1, 12344}, 0);
        eGLSurfaceEglCreatePbufferSurface.getClass();
        Either right = EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext) ? new Either.Right(eGLContextEglCreateContext) : new Either.Left(new Exception("Error creating EGL Context"));
        if (right instanceof Either.Right) {
            obj = ((Either.Right) right).f20608b;
        } else if (!(right instanceof Either.Left)) {
            v40.g();
            throw null;
        }
        EGLContext eGLContext = (EGLContext) obj;
        this.f50581b = eGLContext;
        eGLContext.getClass();
        Engine engineE = Engine.e(eGLContext);
        this.f50582c = engineE;
        this.d = engineE.h();
        Scene sceneI = engineE.i();
        this.f50583e = sceneI;
        Camera cameraF = engineE.f(engineE.f28537e.a());
        cameraF.d(16.0f, 0.008f, 100.0f);
        this.f50584f = cameraF;
        View viewK = engineE.k();
        viewK.f(cameraF);
        viewK.i(sceneI);
        this.g = viewK;
        this.f50585h = new AssetLoader(engineE, new UbershaderProvider(engineE), EntityManager.c());
        this.f50586i = new ResourceLoader(engineE);
        this.f50588k = new DisplayHelper(context);
        UiHelper uiHelper = new UiHelper(UiHelper.ContextErrorPolicy.DONT_CHECK);
        uiHelper.f28619b = new UiHelper.RendererCallback() { // from class: com.vuitton.android.presentation.ar.filament.Filament$uiHelper$1$1
            @Override // com.google.android.filament.android.UiHelper.RendererCallback
            public final void a(Surface surface) {
                surface.getClass();
                Filament filament = this.f50589a;
                Engine engine = filament.f50582c;
                SwapChain swapChain = filament.f50587j;
                if (swapChain != null) {
                    engine.u(swapChain);
                }
                filament.f50587j = engine.j(surface);
                filament.f50588k.a(filament.d, filament.f50580a.getDisplay());
            }

            @Override // com.google.android.filament.android.UiHelper.RendererCallback
            public final void b(int i2, int i3) {
                this.f50589a.g.j(new Viewport(0, 0, i2, i3));
            }

            @Override // com.google.android.filament.android.UiHelper.RendererCallback
            public final void c() {
                Filament filament = this.f50589a;
                Engine engine = filament.f50582c;
                filament.f50588k.b();
                SwapChain swapChain = filament.f50587j;
                if (swapChain != null) {
                    engine.u(swapChain);
                    engine.y();
                    filament.f50587j = null;
                }
            }
        };
        uiHelper.a(surfaceView);
        this.l = uiHelper;
    }
}

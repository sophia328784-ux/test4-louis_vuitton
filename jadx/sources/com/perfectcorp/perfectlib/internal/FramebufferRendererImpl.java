package com.perfectcorp.perfectlib.internal;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.GPUImage;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.perfectcorp.common.opengl.GLMoreUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.FramebufferRenderer;
import defpackage.az;
import defpackage.ct0;
import defpackage.md;
import defpackage.pq0;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public final class FramebufferRendererImpl implements FramebufferRenderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GPUImageRenderer f40355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f40356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Thread f40357c;
    public volatile boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f40358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f40359f;
    public EGLContext g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConcurrentLinkedQueue f40360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile FramebufferRenderer.OnDirtyListener f40361i;

    public FramebufferRendererImpl() {
        GPUImageRenderer gPUImageRenderer = new GPUImageRenderer(new GPUImageFilter(), true);
        this.f40355a = gPUImageRenderer;
        this.f40356b = new int[1];
        this.f40360h = new ConcurrentLinkedQueue();
        this.f40361i = FramebufferRenderer.OnDirtyListener.NOP;
        gPUImageRenderer.j(GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER);
    }

    public final int a(EGLConfig eGLConfig, int i2) {
        EGL10 egl10 = (EGL10) javax.microedition.khronos.egl.EGLContext.getEGL();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = egl10.eglGetCurrentDisplay();
        int[] iArr = this.f40356b;
        if (egl10.eglGetConfigAttrib(eGLDisplayEglGetCurrentDisplay, eGLConfig, i2, iArr)) {
            GLMoreUtils.a("[eglGetConfigAttrib] true");
            return iArr[0];
        }
        GLMoreUtils.a("[eglGetConfigAttrib] false");
        ct0.o(Integer.toHexString(i2), "Can not get EGL config attribute ");
        return 0;
    }

    @Override // com.perfectcorp.perfectlib.FramebufferRenderer
    public final void onDraw(GL10 gl10, int i2) {
        Log.g(3, "FramebufferRendererImpl", "[onDraw] start");
        GLMoreUtils.c("[onDraw] start");
        if (this.f40358e) {
            md.n("Renderer had been released.");
            return;
        }
        if (!this.d) {
            md.k("Doesn't ever call #onEGLContextCreated()");
            return;
        }
        if (Thread.currentThread() != this.f40357c) {
            md.k("Calling thread is different from the one that called #onEGLContextCreated()");
            return;
        }
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        if (eGLContextEglGetCurrentContext == EGL14.EGL_NO_CONTEXT) {
            GLMoreUtils.c("[eglGetCurrentContext]");
            md.k("EGL_NO_CONTEXT");
            return;
        }
        GLMoreUtils.a("[eglGetCurrentContext]");
        if (eGLContextEglGetCurrentContext.getNativeHandle() != this.g.getNativeHandle()) {
            md.k("EGL context changed without calling #onEGLContextCreated()");
            return;
        }
        GLES20.glGetIntegerv(36006, this.f40356b, 0);
        GLMoreUtils.a("[glGetIntegerv] GL_FRAMEBUFFER_BINDING");
        int i3 = this.f40356b[0];
        GLES20.glBindFramebuffer(36160, i2);
        GLMoreUtils.a("[glBindFramebuffer]");
        if (i2 != 0) {
            GLES20.glGetFramebufferAttachmentParameteriv(36160, 36064, 36048, this.f40356b, 0);
            GLMoreUtils.a("[glGetFramebufferAttachmentParameteriv] OBJECT_TYPE");
            int[] iArr = this.f40356b;
            if (iArr[0] != 5890) {
                md.n("Framebuffer isn't bound with a texture");
                return;
            }
            if (this.f40359f == 3) {
                GLES20.glGetFramebufferAttachmentParameteriv(36160, 36064, 33298, iArr, 0);
                GLMoreUtils.a("[glGetFramebufferAttachmentParameteriv] RED_SIZE");
                int[] iArr2 = this.f40356b;
                if (iArr2[0] != 8) {
                    md.n("Framebuffer's red size is not 8.");
                    return;
                }
                GLES20.glGetFramebufferAttachmentParameteriv(36160, 36064, 33299, iArr2, 0);
                GLMoreUtils.a("[glGetFramebufferAttachmentParameteriv] GREEN_SIZE");
                int[] iArr3 = this.f40356b;
                if (iArr3[0] != 8) {
                    md.n("Framebuffer's green size is not 8.");
                    return;
                }
                GLES20.glGetFramebufferAttachmentParameteriv(36160, 36064, 33300, iArr3, 0);
                GLMoreUtils.a("[glGetFramebufferAttachmentParameteriv] BLUE_SIZE");
                if (this.f40356b[0] != 8) {
                    md.n("Framebuffer's blue size is not 8.");
                    return;
                }
            }
        }
        while (true) {
            Runnable runnable = (Runnable) this.f40360h.poll();
            if (runnable == null) {
                this.f40355a.onDrawFrame(gl10);
                GLES20.glBindFramebuffer(36160, i3);
                GLMoreUtils.c("[onDraw] end");
                Log.g(3, "FramebufferRendererImpl", "[onDraw] end");
                return;
            }
            runnable.run();
        }
    }

    @Override // com.perfectcorp.perfectlib.FramebufferRenderer
    public final void onEGLContextCreated(GL10 gl10, EGLConfig eGLConfig) {
        Log.g(3, "FramebufferRendererImpl", "[onEGLContextCreated] start");
        GLMoreUtils.c("[onEGLContextCreated] start");
        if (this.f40358e) {
            md.n("Renderer had been released.");
            return;
        }
        if (this.d) {
            Log.g(5, "FramebufferRendererImpl", "EGL context lost?");
        }
        if (this.f40357c != null && Thread.currentThread() != this.f40357c) {
            md.k("Calling thread is different from the last call");
            return;
        }
        android.opengl.EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        if (eGLDisplayEglGetCurrentDisplay == EGL14.EGL_NO_DISPLAY) {
            GLMoreUtils.c("[eglGetCurrentDisplay]");
            md.k("EGL_NO_DISPLAY");
            return;
        }
        GLMoreUtils.a("[eglGetCurrentDisplay]");
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        if (eGLContextEglGetCurrentContext == EGL14.EGL_NO_CONTEXT) {
            GLMoreUtils.c("[eglGetCurrentContext]");
            md.k("EGL_NO_CONTEXT");
            return;
        }
        GLMoreUtils.a("[eglGetCurrentContext]");
        if (!EGL14.eglQueryContext(eGLDisplayEglGetCurrentDisplay, eGLContextEglGetCurrentContext, 12440, this.f40356b, 0)) {
            GLMoreUtils.a("[eglQueryContext] false");
            md.k("Can not get EGL context client version.");
            return;
        }
        GLMoreUtils.a("[eglQueryContext] true");
        int i2 = this.f40356b[0];
        if (i2 != 2 && i2 != 3) {
            md.n(pq0.k(i2, "Unsupported EGL context client version "));
            return;
        }
        int iA = a(eGLConfig, 12324);
        if (iA != 8) {
            md.n(pq0.k(iA, "Unsupported EGL red size "));
            return;
        }
        int iA2 = a(eGLConfig, 12323);
        if (iA2 != 8) {
            md.n(pq0.k(iA2, "Unsupported EGL green size "));
            return;
        }
        int iA3 = a(eGLConfig, 12322);
        if (iA3 != 8) {
            md.n(pq0.k(iA3, "Unsupported EGL blue size "));
            return;
        }
        int iA4 = a(eGLConfig, 12352);
        if ((iA4 & 68) == 0) {
            az.w(Integer.toHexString(iA4), "Unsupported EGL renderable type ");
            return;
        }
        this.f40357c = Thread.currentThread();
        this.f40359f = i2;
        this.g = EGL14.eglGetCurrentContext();
        this.f40355a.onSurfaceCreated(gl10, eGLConfig);
        GLMoreUtils.c("[onEGLContextCreated] end");
        this.d = true;
        Log.g(3, "FramebufferRendererImpl", "[onEGLContextCreated] end");
    }

    @Override // com.perfectcorp.perfectlib.FramebufferRenderer
    public final void release(GL10 gl10) {
        if (this.f40358e) {
            return;
        }
        this.f40358e = true;
        this.f40355a.g();
    }

    @Override // com.perfectcorp.perfectlib.FramebufferRenderer
    public final void setOnDirtyListener(FramebufferRenderer.OnDirtyListener onDirtyListener) {
        Objects.requireNonNull(onDirtyListener);
        this.f40361i = onDirtyListener;
    }
}

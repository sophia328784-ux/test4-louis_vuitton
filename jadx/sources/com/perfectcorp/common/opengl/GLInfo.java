package com.perfectcorp.common.opengl;

import android.opengl.GLES20;
import com.perfectcorp.common.utility.Log;
import defpackage.b21;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GLInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f39383a = new b().f39387a[0];

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EGL10 f39384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EGLDisplay f39385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final EGLSurface f39386c;
        public final EGLContext d;

        public a() {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.f39384a = egl10;
            EGLDisplay eGLDisplay = EGL10.EGL_NO_DISPLAY;
            this.f39385b = eGLDisplay;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            this.f39386c = eGLSurface;
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            this.d = eGLContext;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.f39385b = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == eGLDisplay) {
                b21.k();
                throw null;
            }
            if (!egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                b21.k();
                throw null;
            }
            int[] iArr = {12325, 0, 12326, 0, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344};
            int[] iArr2 = new int[1];
            if (!egl10.eglChooseConfig(eGLDisplayEglGetDisplay, iArr, null, 0, iArr2)) {
                b21.k();
                throw null;
            }
            int i2 = iArr2[0];
            EGLConfig[] eGLConfigArr = new EGLConfig[i2];
            if (!egl10.eglChooseConfig(eGLDisplayEglGetDisplay, iArr, eGLConfigArr, i2, iArr2)) {
                b21.k();
                throw null;
            }
            EGLConfig eGLConfig = eGLConfigArr[0];
            EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
            this.d = eGLContextEglCreateContext;
            if (eGLContextEglCreateContext == eGLContext) {
                b21.k();
                throw null;
            }
            EGLSurface eGLSurfaceEglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, new int[]{12375, 1, 12374, 1, 12344});
            this.f39386c = eGLSurfaceEglCreatePbufferSurface;
            if (eGLSurfaceEglCreatePbufferSurface == eGLSurface) {
                b21.k();
                throw null;
            }
            if (egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext)) {
                return;
            }
            b21.k();
            throw null;
        }

        public final void a() {
            EGLDisplay eGLDisplay = this.f39385b;
            EGL10 egl10 = this.f39384a;
            EGLSurface eGLSurface = this.f39386c;
            EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
            if (eGLSurface != eGLSurface2) {
                egl10.eglDestroySurface(eGLDisplay, eGLSurface);
            }
            EGLContext eGLContext = this.d;
            EGLContext eGLContext2 = EGL10.EGL_NO_CONTEXT;
            if (eGLContext != eGLContext2) {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
            }
            if (eGLDisplay != EGL10.EGL_NO_DISPLAY) {
                egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, eGLContext2);
                egl10.eglTerminate(eGLDisplay);
            }
        }
    }

    public static final class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f39387a = new int[1];

        public b() throws InterruptedException {
            Thread thread = new Thread(this);
            thread.start();
            thread.join();
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = null;
            try {
                a aVar2 = new a();
                try {
                    GLES20.glGetIntegerv(3379, this.f39387a, 0);
                    aVar2.a();
                } catch (Throwable th) {
                    th = th;
                    aVar = aVar2;
                    try {
                        Log.i("GLInfo", "", th);
                    } finally {
                        if (aVar != null) {
                            aVar.a();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}

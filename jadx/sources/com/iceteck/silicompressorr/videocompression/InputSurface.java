package com.iceteck.silicompressorr.videocompression;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;
import defpackage.v7;

/* JADX INFO: loaded from: classes3.dex */
public class InputSurface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public EGLDisplay f35749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EGLContext f35750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EGLSurface f35751c;
    public Surface d;

    public InputSurface(Surface surface) {
        surface.getClass();
        this.d = surface;
        boolean z = false;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.f35749a = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            v7.h("unable to get EGL14 display");
            throw null;
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.f35749a = null;
            v7.h("unable to initialize EGL14");
            throw null;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.f35749a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            v7.h("unable to find RGB888+recordable ES2 EGL config");
            throw null;
        }
        this.f35750b = EGL14.eglCreateContext(this.f35749a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        boolean z2 = false;
        while (EGL14.eglGetError() != 12288) {
            z2 = true;
        }
        if (z2) {
            v7.h("EGL error encountered (see log)");
            throw null;
        }
        if (this.f35750b == null) {
            v7.h("null context");
            throw null;
        }
        this.f35751c = EGL14.eglCreateWindowSurface(this.f35749a, eGLConfigArr[0], this.d, new int[]{12344}, 0);
        while (EGL14.eglGetError() != 12288) {
            z = true;
        }
        if (z) {
            v7.h("EGL error encountered (see log)");
            throw null;
        }
        if (this.f35751c != null) {
            return;
        }
        v7.h("surface was null");
        throw null;
    }

    public final void a() {
        if (EGL14.eglGetCurrentContext().equals(this.f35750b)) {
            EGLDisplay eGLDisplay = this.f35749a;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(this.f35749a, this.f35751c);
        EGL14.eglDestroyContext(this.f35749a, this.f35750b);
        this.d.release();
        this.f35749a = null;
        this.f35750b = null;
        this.f35751c = null;
        this.d = null;
    }
}

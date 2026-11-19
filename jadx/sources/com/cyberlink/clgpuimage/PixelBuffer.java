package com.cyberlink.clgpuimage;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import defpackage.md;
import java.nio.IntBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public final class PixelBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public GLSurfaceView.Renderer f25489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25491c;
    public final EGL10 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EGLDisplay f25492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EGLConfig f25493f;
    public final EGLContext g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EGLSurface f25494h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GL10 f25495i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f25496j;

    public interface EGLConfigChooser {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EGLConfigChooser f25497a;

        static {
            EGLConfigChooserBuilder eGLConfigChooserBuilder = new EGLConfigChooserBuilder();
            eGLConfigChooserBuilder.f25498a = 0;
            eGLConfigChooserBuilder.f25499b = 8;
            eGLConfigChooserBuilder.f25500c = 8;
            eGLConfigChooserBuilder.d = 8;
            eGLConfigChooserBuilder.f25501e = 8;
            f25497a = new EGLConfigChooserImpl(eGLConfigChooserBuilder);
        }

        EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, boolean z);
    }

    public static final class EGLConfigChooserBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f25500c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f25501e;

        public final EGLConfigChooser a() {
            return new EGLConfigChooserImpl(this);
        }
    }

    public static final class EGLConfigChooserImpl implements EGLConfigChooser {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25502b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25503c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f25504e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f25505f;
        public final int[] g = new int[1];

        public EGLConfigChooserImpl(EGLConfigChooserBuilder eGLConfigChooserBuilder) {
            this.f25502b = eGLConfigChooserBuilder.f25498a;
            this.f25503c = eGLConfigChooserBuilder.f25499b;
            this.d = eGLConfigChooserBuilder.f25500c;
            this.f25504e = eGLConfigChooserBuilder.d;
            this.f25505f = eGLConfigChooserBuilder.f25501e;
        }

        @Override // com.cyberlink.clgpuimage.PixelBuffer.EGLConfigChooser
        public final EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, boolean z) {
            EGLConfig eGLConfig;
            int i2;
            int[] iArr = {12325, this.f25502b, 12326, 0, 12324, this.f25503c, 12323, this.d, 12322, this.f25504e, 12321, this.f25505f, 12352, 4, 12344};
            int[] iArr2 = new int[1];
            boolean zEglChooseConfig = egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2);
            EGLConfig eGLConfig2 = null;
            if (z) {
                if (!zEglChooseConfig) {
                    md.k("eglChooseConfig size");
                    return null;
                }
                OpenGlUtils.a();
            }
            int i3 = 0;
            int i4 = iArr2[0];
            if (z && i4 <= 0) {
                md.n("No EGL config can be used");
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i4];
            boolean zEglChooseConfig2 = egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i4, iArr2);
            if (z) {
                if (!zEglChooseConfig2) {
                    md.k("eglChooseConfig configs");
                    return null;
                }
                OpenGlUtils.a();
            }
            if (!z) {
                return eGLConfigArr[0];
            }
            int i5 = 0;
            while (i5 < i4) {
                EGLConfig eGLConfig3 = eGLConfigArr[i5];
                int iB = b(egl10, eGLDisplay, eGLConfig3, 12325);
                int iB2 = b(egl10, eGLDisplay, eGLConfig3, 12326);
                if (iB < this.f25502b || iB2 < 0) {
                    eGLConfig = eGLConfig2;
                    i2 = i3;
                } else {
                    int iB3 = b(egl10, eGLDisplay, eGLConfig3, 12324);
                    int iB4 = b(egl10, eGLDisplay, eGLConfig3, 12323);
                    eGLConfig = eGLConfig2;
                    int iB5 = b(egl10, eGLDisplay, eGLConfig3, 12322);
                    i2 = i3;
                    int iB6 = b(egl10, eGLDisplay, eGLConfig3, 12321);
                    if (iB3 == this.f25503c && iB4 == this.d && iB5 == this.f25504e && iB6 == this.f25505f) {
                        EGLConfig[] eGLConfigArr2 = {eGLConfig3};
                        for (int i6 = i2; i6 <= 0; i6++) {
                            EGLConfig eGLConfig4 = eGLConfigArr2[i2];
                            b(egl10, eGLDisplay, eGLConfig4, 12325);
                            b(egl10, eGLDisplay, eGLConfig4, 12326);
                            b(egl10, eGLDisplay, eGLConfig4, 12324);
                            b(egl10, eGLDisplay, eGLConfig4, 12323);
                            b(egl10, eGLDisplay, eGLConfig4, 12322);
                            b(egl10, eGLDisplay, eGLConfig4, 12321);
                        }
                        return eGLConfig3;
                    }
                }
                i5++;
                eGLConfig2 = eGLConfig;
                i3 = i2;
            }
            EGLConfig eGLConfig5 = eGLConfig2;
            md.n("No config chosen");
            return eGLConfig5;
        }

        public final int b(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2) {
            int[] iArr = this.g;
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, iArr)) {
                return iArr[0];
            }
            return 0;
        }
    }

    public PixelBuffer(int i2, int i3, EGLContext eGLContext, EGLConfigChooser eGLConfigChooser, boolean z) {
        IntBuffer intBufferAllocate = IntBuffer.allocate(4);
        this.f25490b = i2;
        this.f25491c = i3;
        int[] iArr = new int[2];
        int[] iArr2 = {12375, i2, 12374, i3, 12344};
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.d = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f25492e = eGLDisplayEglGetDisplay;
        if (z) {
            try {
                if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                    OpenGlUtils.g();
                    throw new IllegalStateException("EGL_NO_DISPLAY");
                }
                OpenGlUtils.a();
            } catch (RuntimeException e2) {
                this.d.eglTerminate(this.f25492e);
                OpenGlUtils.g();
                throw e2;
            }
        }
        boolean zEglInitialize = egl10.eglInitialize(eGLDisplayEglGetDisplay, iArr);
        if (z) {
            if (!zEglInitialize) {
                OpenGlUtils.g();
                throw new IllegalStateException("eglInitialize");
            }
            OpenGlUtils.a();
        }
        EGLConfig eGLConfigA = eGLConfigChooser.a(egl10, eGLDisplayEglGetDisplay, z);
        this.f25493f = eGLConfigA;
        EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfigA, eGLContext, new int[]{12440, 2, 12344});
        this.g = eGLContextEglCreateContext;
        EGLContext eGLContext2 = EGL10.EGL_NO_CONTEXT;
        try {
            if (z) {
                if (eGLContextEglCreateContext == eGLContext2) {
                    OpenGlUtils.g();
                    throw new IllegalStateException("EGL_NO_CONTEXT");
                }
                OpenGlUtils.a();
            }
            EGLSurface eGLSurfaceEglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfigA, iArr2);
            this.f25494h = eGLSurfaceEglCreatePbufferSurface;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            try {
                if (z) {
                    if (eGLSurfaceEglCreatePbufferSurface == eGLSurface) {
                        OpenGlUtils.g();
                        throw new IllegalStateException("EGL_NO_SURFACE");
                    }
                    OpenGlUtils.a();
                }
                boolean zEglMakeCurrent = egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext);
                if (z) {
                    try {
                        if (!zEglMakeCurrent) {
                            OpenGlUtils.g();
                            throw new IllegalStateException("eglMakeCurrent");
                        }
                        OpenGlUtils.a();
                    } catch (RuntimeException e3) {
                        this.d.eglMakeCurrent(this.f25492e, eGLSurface, eGLSurface, eGLContext2);
                        OpenGlUtils.g();
                        throw e3;
                    }
                }
                this.f25495i = (GL10) eGLContextEglCreateContext.getGL();
                GLES20.glGetIntegerv(2978, intBufferAllocate);
                IntBuffer intBufferAllocate2 = IntBuffer.allocate(1);
                GLES20.glGetIntegerv(36006, intBufferAllocate2);
                intBufferAllocate2.get(0);
                this.f25496j = Thread.currentThread().getName();
            } catch (RuntimeException e4) {
                this.d.eglDestroySurface(this.f25492e, this.f25494h);
                OpenGlUtils.g();
                throw e4;
            }
        } catch (RuntimeException e5) {
            this.d.eglDestroyContext(this.f25492e, this.g);
            OpenGlUtils.g();
            throw e5;
        }
    }

    public final void a() {
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        EGL10 egl10 = this.d;
        EGLDisplay eGLDisplay = this.f25492e;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        egl10.eglDestroySurface(eGLDisplay, this.f25494h);
        egl10.eglDestroyContext(eGLDisplay, this.g);
        egl10.eglTerminate(eGLDisplay);
    }

    public PixelBuffer(int i2, int i3, EGLContext eGLContext) {
        this(i2, i3, eGLContext, EGLConfigChooser.f25497a, false);
    }
}

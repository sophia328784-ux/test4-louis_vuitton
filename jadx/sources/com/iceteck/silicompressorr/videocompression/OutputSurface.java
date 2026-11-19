package com.iceteck.silicompressorr.videocompression;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.ct0;
import defpackage.v7;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class OutputSurface implements SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EGL10 f35767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EGLDisplay f35768c;
    public EGLContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EGLSurface f35769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SurfaceTexture f35770f;
    public Surface g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f35771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f35772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextureRenderer f35773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f35774k;

    public OutputSurface(int i2, int i3, int i4) {
        this.f35768c = null;
        this.d = null;
        this.f35769e = null;
        this.f35771h = new Object();
        this.f35774k = 0;
        if (i2 <= 0 || i3 <= 0) {
            ct0.c();
            throw null;
        }
        this.f35774k = i4;
        ByteBuffer.allocateDirect(i2 * i3 * 4).order(ByteOrder.LITTLE_ENDIAN);
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f35767b = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f35768c = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            v7.h("unable to get EGL10 display");
            throw null;
        }
        if (!this.f35767b.eglInitialize(eGLDisplayEglGetDisplay, null)) {
            this.f35768c = null;
            v7.h("unable to initialize EGL10");
            throw null;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!this.f35767b.eglChooseConfig(this.f35768c, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
            v7.h("unable to find RGB888+pbuffer EGL config");
            throw null;
        }
        this.d = this.f35767b.eglCreateContext(this.f35768c, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        b();
        if (this.d == null) {
            v7.h("null context");
            throw null;
        }
        this.f35769e = this.f35767b.eglCreatePbufferSurface(this.f35768c, eGLConfigArr[0], new int[]{12375, i2, 12374, i3, 12344});
        b();
        if (this.f35769e == null) {
            v7.h("surface was null");
            throw null;
        }
        if (this.f35767b == null) {
            v7.h("not configured for makeCurrent");
            throw null;
        }
        b();
        EGL10 egl11 = this.f35767b;
        EGLDisplay eGLDisplay = this.f35768c;
        EGLSurface eGLSurface = this.f35769e;
        if (egl11.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.d)) {
            e();
        } else {
            v7.h("eglMakeCurrent failed");
            throw null;
        }
    }

    public final void a() {
        synchronized (this.f35771h) {
            while (!this.f35772i) {
                try {
                    this.f35771h.wait(LiveTranslationEntity.DefaultSentenceTimeOut);
                    if (!this.f35772i) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f35772i = false;
        }
        this.f35773j.getClass();
        TextureRenderer.a("before updateTexImage");
        this.f35770f.updateTexImage();
    }

    public final void b() {
        if (this.f35767b.eglGetError() == 12288) {
            return;
        }
        v7.h("EGL error encountered (see log)");
    }

    public final void c() {
        TextureRenderer textureRenderer = this.f35773j;
        SurfaceTexture surfaceTexture = this.f35770f;
        FloatBuffer floatBuffer = textureRenderer.f35778a;
        TextureRenderer.a("onDrawFrame start");
        float[] fArr = textureRenderer.f35780c;
        surfaceTexture.getTransformMatrix(fArr);
        GLES20.glUseProgram(textureRenderer.d);
        TextureRenderer.a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, textureRenderer.f35781e);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(textureRenderer.f35783h, 3, 5126, false, 20, (Buffer) textureRenderer.f35778a);
        TextureRenderer.a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(textureRenderer.f35783h);
        TextureRenderer.a("glEnableVertexAttribArray maPositionHandle");
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(textureRenderer.f35784i, 2, 5126, false, 20, (Buffer) textureRenderer.f35778a);
        TextureRenderer.a("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(textureRenderer.f35784i);
        TextureRenderer.a("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(textureRenderer.g, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(textureRenderer.f35782f, 1, false, textureRenderer.f35779b, 0);
        GLES20.glDrawArrays(5, 0, 4);
        TextureRenderer.a("glDrawArrays");
        GLES20.glFinish();
    }

    public final void d() {
        EGL10 egl10 = this.f35767b;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.d)) {
                EGL10 egl11 = this.f35767b;
                EGLDisplay eGLDisplay = this.f35768c;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl11.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f35767b.eglDestroySurface(this.f35768c, this.f35769e);
            this.f35767b.eglDestroyContext(this.f35768c, this.d);
        }
        this.g.release();
        this.f35768c = null;
        this.d = null;
        this.f35769e = null;
        this.f35767b = null;
        this.f35773j = null;
        this.g = null;
        this.f35770f = null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0016  */
    public final void e() {
        int iB;
        int iGlCreateProgram;
        TextureRenderer textureRenderer = new TextureRenderer(this.f35774k);
        this.f35773j = textureRenderer;
        int iB2 = TextureRenderer.b(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
        if (iB2 == 0 || (iB = TextureRenderer.b(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n")) == 0) {
            iGlCreateProgram = 0;
        } else {
            iGlCreateProgram = GLES20.glCreateProgram();
            TextureRenderer.a("glCreateProgram");
            if (iGlCreateProgram == 0) {
                iGlCreateProgram = 0;
            } else {
                GLES20.glAttachShader(iGlCreateProgram, iB2);
                TextureRenderer.a("glAttachShader");
                GLES20.glAttachShader(iGlCreateProgram, iB);
                TextureRenderer.a("glAttachShader");
                GLES20.glLinkProgram(iGlCreateProgram);
                int[] iArr = new int[1];
                GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
                if (iArr[0] != 1) {
                    GLES20.glDeleteProgram(iGlCreateProgram);
                    iGlCreateProgram = 0;
                }
            }
        }
        textureRenderer.d = iGlCreateProgram;
        if (iGlCreateProgram == 0) {
            v7.h("failed creating program");
            return;
        }
        textureRenderer.f35783h = GLES20.glGetAttribLocation(iGlCreateProgram, "aPosition");
        TextureRenderer.a("glGetAttribLocation aPosition");
        if (textureRenderer.f35783h == -1) {
            v7.h("Could not get attrib location for aPosition");
            return;
        }
        textureRenderer.f35784i = GLES20.glGetAttribLocation(textureRenderer.d, "aTextureCoord");
        TextureRenderer.a("glGetAttribLocation aTextureCoord");
        if (textureRenderer.f35784i == -1) {
            v7.h("Could not get attrib location for aTextureCoord");
            return;
        }
        textureRenderer.f35782f = GLES20.glGetUniformLocation(textureRenderer.d, "uMVPMatrix");
        TextureRenderer.a("glGetUniformLocation uMVPMatrix");
        if (textureRenderer.f35782f == -1) {
            v7.h("Could not get attrib location for uMVPMatrix");
            return;
        }
        textureRenderer.g = GLES20.glGetUniformLocation(textureRenderer.d, "uSTMatrix");
        TextureRenderer.a("glGetUniformLocation uSTMatrix");
        if (textureRenderer.g == -1) {
            v7.h("Could not get attrib location for uSTMatrix");
            return;
        }
        int[] iArr2 = new int[1];
        GLES20.glGenTextures(1, iArr2, 0);
        int i2 = iArr2[0];
        textureRenderer.f35781e = i2;
        GLES20.glBindTexture(36197, i2);
        TextureRenderer.a("glBindTexture mTextureID");
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        TextureRenderer.a("glTexParameter");
        Matrix.setIdentityM(textureRenderer.f35779b, 0);
        int i3 = textureRenderer.f35785j;
        if (i3 != 0) {
            Matrix.rotateM(textureRenderer.f35779b, 0, i3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f35773j.f35781e);
        this.f35770f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.g = new Surface(this.f35770f);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f35771h) {
            try {
                if (this.f35772i) {
                    throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
                }
                this.f35772i = true;
                this.f35771h.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public OutputSurface() {
        this.f35768c = null;
        this.d = null;
        this.f35769e = null;
        this.f35771h = new Object();
        this.f35774k = 0;
        e();
    }
}

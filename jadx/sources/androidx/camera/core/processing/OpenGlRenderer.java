package androidx.camera.core.processing;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.processing.util.GLUtils;
import androidx.camera.core.processing.util.GraphicDeviceInfo;
import androidx.camera.core.processing.util.OutputSurface;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.ct0;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class OpenGlRenderer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Thread f2543c;
    public EGLConfig g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Surface f2547i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2541a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f2542b = new HashMap();
    public EGLDisplay d = EGL14.EGL_NO_DISPLAY;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EGLContext f2544e = EGL14.EGL_NO_CONTEXT;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f2545f = GLUtils.f2617a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EGLSurface f2546h = EGL14.EGL_NO_SURFACE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map f2548j = Collections.EMPTY_MAP;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public GLUtils.Program2D f2549k = null;
    public GLUtils.InputFormat l = GLUtils.InputFormat.UNKNOWN;
    public int m = -1;

    public final void a(DynamicRange dynamicRange, GraphicDeviceInfo.Builder builder) {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.d = eGLDisplayEglGetDisplay;
        if (Objects.equals(eGLDisplayEglGetDisplay, EGL14.EGL_NO_DISPLAY)) {
            md.k("Unable to get EGL14 display");
            return;
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.d, iArr, 0, iArr, 1)) {
            this.d = EGL14.EGL_NO_DISPLAY;
            md.k("Unable to initialize EGL14");
            return;
        }
        if (builder != null) {
            builder.c(iArr[0] + FileUtils.HIDDEN_PREFIX + iArr[1]);
        }
        int i2 = dynamicRange.a() ? 10 : 8;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(this.d, new int[]{12324, i2, 12323, i2, 12322, i2, 12321, dynamicRange.a() ? 2 : 8, 12325, 0, 12326, 0, 12352, dynamicRange.a() ? 64 : 4, 12610, dynamicRange.a() ? -1 : 1, 12339, 5, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            md.k("Unable to find a suitable EGLConfig");
            return;
        }
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.d, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, dynamicRange.a() ? 3 : 2, 12344}, 0);
        GLUtils.a("eglCreateContext");
        this.g = eGLConfig;
        this.f2544e = eGLContextEglCreateContext;
        EGL14.eglQueryContext(this.d, eGLContextEglCreateContext, 12440, new int[1], 0);
    }

    public final OutputSurface b(Surface surface) {
        try {
            EGLDisplay eGLDisplay = this.d;
            EGLConfig eGLConfig = this.g;
            Objects.requireNonNull(eGLConfig);
            EGLSurface eGLSurfaceH = GLUtils.h(eGLDisplay, eGLConfig, surface, this.f2545f);
            EGLDisplay eGLDisplay2 = this.d;
            int[] iArr = new int[1];
            EGL14.eglQuerySurface(eGLDisplay2, eGLSurfaceH, 12375, iArr, 0);
            int i2 = iArr[0];
            int[] iArr2 = new int[1];
            EGL14.eglQuerySurface(eGLDisplay2, eGLSurfaceH, 12374, iArr2, 0);
            Size size = new Size(i2, iArr2[0]);
            return OutputSurface.d(eGLSurfaceH, size.getWidth(), size.getHeight());
        } catch (IllegalArgumentException | IllegalStateException e2) {
            e2.getMessage();
            Logger.c(5, "OpenGlRenderer");
            return null;
        }
    }

    public final void c() {
        EGLDisplay eGLDisplay = this.d;
        EGLConfig eGLConfig = this.g;
        Objects.requireNonNull(eGLConfig);
        int[] iArr = GLUtils.f2617a;
        EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, new int[]{12375, 1, 12374, 1, 12344}, 0);
        GLUtils.a("eglCreatePbufferSurface");
        if (eGLSurfaceEglCreatePbufferSurface != null) {
            this.f2546h = eGLSurfaceEglCreatePbufferSurface;
        } else {
            md.k("surface was null");
        }
    }

    public final Pair d(DynamicRange dynamicRange) {
        GLUtils.d(this.f2541a, false);
        try {
            a(dynamicRange, null);
            c();
            f(this.f2546h);
            String strGlGetString = GLES20.glGetString(7939);
            String strEglQueryString = EGL14.eglQueryString(this.d, 12373);
            if (strGlGetString == null) {
                strGlGetString = "";
            }
            if (strEglQueryString == null) {
                strEglQueryString = "";
            }
            return new Pair(strGlGetString, strEglQueryString);
        } catch (IllegalStateException e2) {
            e2.getMessage();
            Logger.c(5, "OpenGlRenderer");
            return new Pair("", "");
        } finally {
            h();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GraphicDeviceInfo e(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        AtomicBoolean atomicBoolean = this.f2541a;
        GLUtils.d(atomicBoolean, false);
        GraphicDeviceInfo.Builder builderA = GraphicDeviceInfo.a();
        try {
            if (dynamicRange.a()) {
                Pair pairD = d(dynamicRange);
                String str = (String) pairD.f12138a;
                str.getClass();
                String str2 = (String) pairD.f12139b;
                str2.getClass();
                if (!str.contains("GL_EXT_YUV_target")) {
                    Logger.c(5, "OpenGlRenderer");
                    dynamicRange = DynamicRange.d;
                }
                int[] iArr = GLUtils.f2617a;
                if (dynamicRange.f1918a == 3) {
                    if (str2.contains("EGL_EXT_gl_colorspace_bt2020_hlg")) {
                        iArr = GLUtils.f2618b;
                    } else {
                        Logger.c(5, "GLUtils");
                    }
                }
                this.f2545f = iArr;
                builderA.d(str);
                builderA.b(str2);
            }
            a(dynamicRange, builderA);
            c();
            f(this.f2546h);
            builderA.e(GLUtils.i());
            this.f2548j = GLUtils.f(dynamicRange);
            int iG = GLUtils.g();
            this.m = iG;
            k(iG);
            this.f2543c = Thread.currentThread();
            atomicBoolean.set(true);
            return builderA.a();
        } catch (IllegalArgumentException | IllegalStateException e2) {
            h();
            throw e2;
        }
    }

    public final void f(EGLSurface eGLSurface) {
        this.d.getClass();
        this.f2544e.getClass();
        if (EGL14.eglMakeCurrent(this.d, eGLSurface, eGLSurface, this.f2544e)) {
            return;
        }
        md.k("eglMakeCurrent failed");
    }

    public final void g(Surface surface) {
        GLUtils.d(this.f2541a, true);
        GLUtils.c(this.f2543c);
        HashMap map = this.f2542b;
        if (map.containsKey(surface)) {
            return;
        }
        map.put(surface, GLUtils.f2624j);
    }

    public final void h() {
        Iterator it = this.f2548j.values().iterator();
        while (it.hasNext()) {
            GLES20.glDeleteProgram(((GLUtils.Program2D) it.next()).f2625a);
        }
        this.f2548j = Collections.EMPTY_MAP;
        this.f2549k = null;
        if (!Objects.equals(this.d, EGL14.EGL_NO_DISPLAY)) {
            EGLDisplay eGLDisplay = this.d;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            HashMap map = this.f2542b;
            for (OutputSurface outputSurface : map.values()) {
                if (!Objects.equals(outputSurface.a(), EGL14.EGL_NO_SURFACE) && !EGL14.eglDestroySurface(this.d, outputSurface.a())) {
                    try {
                        GLUtils.a("eglDestroySurface");
                    } catch (IllegalStateException e2) {
                        e2.toString();
                        Logger.b("GLUtils");
                    }
                }
            }
            map.clear();
            if (!Objects.equals(this.f2546h, EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.d, this.f2546h);
                this.f2546h = EGL14.EGL_NO_SURFACE;
            }
            if (!Objects.equals(this.f2544e, EGL14.EGL_NO_CONTEXT)) {
                EGL14.eglDestroyContext(this.d, this.f2544e);
                this.f2544e = EGL14.EGL_NO_CONTEXT;
            }
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.d);
            this.d = EGL14.EGL_NO_DISPLAY;
        }
        this.g = null;
        this.m = -1;
        this.l = GLUtils.InputFormat.UNKNOWN;
        this.f2547i = null;
        this.f2543c = null;
    }

    public final void i(Surface surface, boolean z) {
        if (this.f2547i == surface) {
            this.f2547i = null;
            f(this.f2546h);
        }
        HashMap map = this.f2542b;
        OutputSurface outputSurface = z ? (OutputSurface) map.remove(surface) : (OutputSurface) map.put(surface, GLUtils.f2624j);
        if (outputSurface == null || outputSurface == GLUtils.f2624j) {
            return;
        }
        try {
            EGL14.eglDestroySurface(this.d, outputSurface.a());
        } catch (RuntimeException e2) {
            e2.getMessage();
            Logger.c(5, "OpenGlRenderer");
        }
    }

    public final void j(long j2, float[] fArr, Surface surface) {
        GLUtils.d(this.f2541a, true);
        GLUtils.c(this.f2543c);
        HashMap map = this.f2542b;
        Preconditions.f("The surface is not registered.", map.containsKey(surface));
        OutputSurface outputSurfaceB = (OutputSurface) map.get(surface);
        Objects.requireNonNull(outputSurfaceB);
        if (outputSurfaceB == GLUtils.f2624j) {
            outputSurfaceB = b(surface);
            if (outputSurfaceB == null) {
                return;
            } else {
                map.put(surface, outputSurfaceB);
            }
        }
        if (surface != this.f2547i) {
            f(outputSurfaceB.a());
            this.f2547i = surface;
            GLES20.glViewport(0, 0, outputSurfaceB.c(), outputSurfaceB.b());
            GLES20.glScissor(0, 0, outputSurfaceB.c(), outputSurfaceB.b());
        }
        GLUtils.Program2D program2D = this.f2549k;
        program2D.getClass();
        if (program2D instanceof GLUtils.SamplerShaderProgram) {
            GLES20.glUniformMatrix4fv(((GLUtils.SamplerShaderProgram) program2D).f2629f, 1, false, fArr, 0);
            GLUtils.b("glUniformMatrix4fv");
        }
        GLES20.glDrawArrays(5, 0, 4);
        GLUtils.b("glDrawArrays");
        EGLExt.eglPresentationTimeANDROID(this.d, outputSurfaceB.a(), j2);
        if (EGL14.eglSwapBuffers(this.d, outputSurfaceB.a())) {
            return;
        }
        Integer.toHexString(EGL14.eglGetError());
        Logger.c(5, "OpenGlRenderer");
        i(surface, false);
    }

    public final void k(int i2) {
        GLUtils.Program2D program2D = (GLUtils.Program2D) this.f2548j.get(this.l);
        if (program2D == null) {
            ct0.o(this.l, "Unable to configure program for input format: ");
            return;
        }
        if (this.f2549k != program2D) {
            this.f2549k = program2D;
            program2D.b();
            Objects.toString(this.l);
            Objects.toString(this.f2549k);
        }
        GLES20.glActiveTexture(33984);
        GLUtils.b("glActiveTexture");
        GLES20.glBindTexture(36197, i2);
        GLUtils.b("glBindTexture");
    }
}

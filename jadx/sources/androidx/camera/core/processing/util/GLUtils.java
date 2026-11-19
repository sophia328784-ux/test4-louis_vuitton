package androidx.camera.core.processing.util;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.processing.ShaderProvider;
import androidx.core.util.Preconditions;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.az;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import defpackage.tr;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class GLUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f2617a = {12344};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2618b = {12445, 13632, 12344};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f2619c;
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ShaderProvider f2620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ShaderProvider f2621f;
    public static final ShaderProvider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FloatBuffer f2622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FloatBuffer f2623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final OutputSurface f2624j;

    /* JADX INFO: renamed from: androidx.camera.core.processing.util.GLUtils$1, reason: invalid class name */
    public class AnonymousClass1 implements ShaderProvider {
        @Override // androidx.camera.core.processing.ShaderProvider
        public final String a() {
            Locale locale = Locale.US;
            return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uAlphaScale;\nvoid main() {\n    vec4 src = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = vec4(src.rgb, src.a * uAlphaScale);\n}\n";
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.processing.util.GLUtils$2, reason: invalid class name */
    public class AnonymousClass2 implements ShaderProvider {
        @Override // androidx.camera.core.processing.ShaderProvider
        public final String a() {
            Locale locale = Locale.US;
            return "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float uAlphaScale;\nin vec2 vTextureCoord;\nout vec4 outColor;\n\nvoid main() {\n  vec4 src = texture(sTexture, vTextureCoord);\n  outColor = vec4(src.rgb, src.a * uAlphaScale);\n}";
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.processing.util.GLUtils$3, reason: invalid class name */
    public class AnonymousClass3 implements ShaderProvider {
        @Override // androidx.camera.core.processing.ShaderProvider
        public final String a() {
            Locale locale = Locale.US;
            return "#version 300 es\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\nuniform __samplerExternal2DY2YEXT sTexture;\nuniform float uAlphaScale;\nin vec2 vTextureCoord;\nout vec4 outColor;\n\nvec3 yuvToRgb(vec3 yuv) {\n  const vec3 yuvOffset = vec3(0.0625, 0.5, 0.5);\n  const mat3 yuvToRgbColorMat = mat3(\n    1.1689f, 1.1689f, 1.1689f,\n    0.0000f, -0.1881f, 2.1502f,\n    1.6853f, -0.6530f, 0.0000f\n  );\n  return clamp(yuvToRgbColorMat * (yuv - yuvOffset), 0.0, 1.0);\n}\n\nvoid main() {\n  vec3 srcYuv = texture(sTexture, vTextureCoord).xyz;\n  vec3 srcRgb = yuvToRgb(srcYuv);\n  outColor = vec4(srcRgb, uAlphaScale);\n}";
        }
    }

    public static class BlankShaderProgram extends Program2D {
        public BlankShaderProgram() {
            super("uniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n}\n", "precision mediump float;\nuniform float uAlphaScale;\nvoid main() {\n    gl_FragColor = vec4(0.0, 0.0, 0.0, uAlphaScale);\n}\n");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InputFormat {
        private static final /* synthetic */ InputFormat[] $VALUES;
        public static final InputFormat DEFAULT;
        public static final InputFormat UNKNOWN;
        public static final InputFormat YUV;

        static {
            InputFormat inputFormat = new InputFormat("UNKNOWN", 0);
            UNKNOWN = inputFormat;
            InputFormat inputFormat2 = new InputFormat("DEFAULT", 1);
            DEFAULT = inputFormat2;
            InputFormat inputFormat3 = new InputFormat("YUV", 2);
            YUV = inputFormat3;
            $VALUES = new InputFormat[]{inputFormat, inputFormat2, inputFormat3};
        }

        public static InputFormat valueOf(String str) {
            return (InputFormat) Enum.valueOf(InputFormat.class, str);
        }

        public static InputFormat[] values() {
            return (InputFormat[]) $VALUES.clone();
        }
    }

    public static abstract class Program2D {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2625a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2626b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2627c = -1;
        public int d = -1;

        /* JADX WARN: Code duplicated, block: B:24:0x006d  */
        /* JADX WARN: Code duplicated, block: B:26:0x0072  */
        /* JADX WARN: Code duplicated, block: B:28:0x0077  */
        public Program2D(String str, String str2) throws Throwable {
            int iJ;
            int iJ2;
            int iGlCreateProgram;
            try {
                iJ = GLUtils.j(35633, str);
                try {
                    iJ2 = GLUtils.j(35632, str2);
                    try {
                        iGlCreateProgram = GLES20.glCreateProgram();
                        try {
                            GLUtils.b("glCreateProgram");
                            GLES20.glAttachShader(iGlCreateProgram, iJ);
                            GLUtils.b("glAttachShader");
                            GLES20.glAttachShader(iGlCreateProgram, iJ2);
                            GLUtils.b("glAttachShader");
                            GLES20.glLinkProgram(iGlCreateProgram);
                            int[] iArr = new int[1];
                            GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
                            if (iArr[0] == 1) {
                                this.f2625a = iGlCreateProgram;
                                a();
                            } else {
                                throw new IllegalStateException("Could not link program: " + GLES20.glGetProgramInfoLog(iGlCreateProgram));
                            }
                        } catch (IllegalArgumentException | IllegalStateException e2) {
                            e = e2;
                            if (iJ != -1) {
                                GLES20.glDeleteShader(iJ);
                            }
                            if (iJ2 != -1) {
                                GLES20.glDeleteShader(iJ2);
                            }
                            if (iGlCreateProgram != -1) {
                                GLES20.glDeleteProgram(iGlCreateProgram);
                            }
                            throw e;
                        }
                    } catch (IllegalArgumentException | IllegalStateException e3) {
                        e = e3;
                        iGlCreateProgram = -1;
                    }
                } catch (IllegalArgumentException | IllegalStateException e4) {
                    e = e4;
                    iJ2 = -1;
                    iGlCreateProgram = iJ2;
                    if (iJ != -1) {
                        GLES20.glDeleteShader(iJ);
                    }
                    if (iJ2 != -1) {
                        GLES20.glDeleteShader(iJ2);
                    }
                    if (iGlCreateProgram != -1) {
                        GLES20.glDeleteProgram(iGlCreateProgram);
                    }
                    throw e;
                }
            } catch (IllegalArgumentException | IllegalStateException e5) {
                e = e5;
                iJ = -1;
                iJ2 = -1;
            }
        }

        public final void a() {
            int i2 = this.f2625a;
            int iGlGetAttribLocation = GLES20.glGetAttribLocation(i2, "aPosition");
            this.d = iGlGetAttribLocation;
            GLUtils.e(iGlGetAttribLocation, "aPosition");
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(i2, "uTransMatrix");
            this.f2626b = iGlGetUniformLocation;
            GLUtils.e(iGlGetUniformLocation, "uTransMatrix");
            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(i2, "uAlphaScale");
            this.f2627c = iGlGetUniformLocation2;
            GLUtils.e(iGlGetUniformLocation2, "uAlphaScale");
        }

        public void b() {
            GLES20.glUseProgram(this.f2625a);
            GLUtils.b("glUseProgram");
            GLES20.glEnableVertexAttribArray(this.d);
            GLUtils.b("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) GLUtils.f2622h);
            GLUtils.b("glVertexAttribPointer");
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            GLES20.glUniformMatrix4fv(this.f2626b, 1, false, fArr, 0);
            GLUtils.b("glUniformMatrix4fv");
            GLES20.glUniform1f(this.f2627c, 1.0f);
            GLUtils.b("glUniform1f");
        }
    }

    static {
        Locale locale = Locale.US;
        f2619c = "uniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        d = "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nuniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uTransMatrix * aPosition;\n  vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        f2620e = new AnonymousClass1();
        f2621f = new AnonymousClass2();
        g = new AnonymousClass3();
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(32);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        floatBufferAsFloatBuffer.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
        floatBufferAsFloatBuffer.position(0);
        f2622h = floatBufferAsFloatBuffer;
        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f};
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(32);
        byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer2 = byteBufferAllocateDirect2.asFloatBuffer();
        floatBufferAsFloatBuffer2.put(fArr);
        floatBufferAsFloatBuffer2.position(0);
        f2623i = floatBufferAsFloatBuffer2;
        f2624j = new AutoValue_OutputSurface(EGL14.EGL_NO_SURFACE, 0, 0);
    }

    public static void a(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        az.n(Integer.toHexString(iEglGetError), n00.u(str, ": EGL error: 0x"));
    }

    public static void b(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        az.n(Integer.toHexString(iGlGetError), n00.u(str, ": GL error 0x"));
    }

    public static void c(Thread thread) {
        Preconditions.f("Method call must be called on the GL thread.", thread == Thread.currentThread());
    }

    public static void d(AtomicBoolean atomicBoolean, boolean z) {
        Preconditions.f(z ? "OpenGlRenderer is not initialized" : "OpenGlRenderer is already initialized", z == atomicBoolean.get());
    }

    public static void e(int i2, String str) {
        if (i2 >= 0) {
            return;
        }
        md.k(fc.h("Unable to locate '", str, "' in program"));
    }

    public static HashMap f(DynamicRange dynamicRange) {
        Object samplerShaderProgram;
        InputFormat inputFormat;
        Map map = Collections.EMPTY_MAP;
        HashMap map2 = new HashMap();
        InputFormat[] inputFormatArrValues = InputFormat.values();
        int length = inputFormatArrValues.length;
        for (int i2 = 0; i2 < length; i2++) {
            InputFormat inputFormat2 = inputFormatArrValues[i2];
            ShaderProvider shaderProvider = (ShaderProvider) map.get(inputFormat2);
            if (shaderProvider != null) {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, shaderProvider);
            } else if (inputFormat2 == InputFormat.YUV || inputFormat2 == (inputFormat = InputFormat.DEFAULT)) {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, inputFormat2);
            } else {
                Preconditions.f("Unhandled input format: " + inputFormat2, inputFormat2 == InputFormat.UNKNOWN);
                if (dynamicRange.a()) {
                    samplerShaderProgram = new BlankShaderProgram();
                } else {
                    ShaderProvider shaderProvider2 = (ShaderProvider) map.get(inputFormat);
                    samplerShaderProgram = shaderProvider2 != null ? new SamplerShaderProgram(dynamicRange, shaderProvider2) : new SamplerShaderProgram(dynamicRange, inputFormat);
                }
            }
            Objects.toString(inputFormat2);
            samplerShaderProgram.toString();
            map2.put(inputFormat2, samplerShaderProgram);
        }
        return map2;
    }

    public static int g() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        b("glGenTextures");
        int i2 = iArr[0];
        GLES20.glBindTexture(36197, i2);
        b("glBindTexture " + i2);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        b("glTexParameter");
        return i2;
    }

    public static EGLSurface h(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Surface surface, int[] iArr) {
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr, 0);
        a("eglCreateWindowSurface");
        if (eGLSurfaceEglCreateWindowSurface != null) {
            return eGLSurfaceEglCreateWindowSurface;
        }
        md.k("surface was null");
        return null;
    }

    public static String i() {
        Matcher matcher = Pattern.compile("OpenGL ES ([0-9]+)\\.([0-9]+).*").matcher(GLES20.glGetString(7938));
        if (!matcher.find()) {
            return "0.0";
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        strGroup2.getClass();
        return tr.h(strGroup, FileUtils.HIDDEN_PREFIX, strGroup2);
    }

    public static int j(int i2, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i2);
        b("glCreateShader type=" + i2);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        Logger.c(5, "GLUtils");
        String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        throw new IllegalStateException("Could not compile shader type " + i2 + ":" + strGlGetShaderInfoLog);
    }

    public static class SamplerShaderProgram extends Program2D {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f2628e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f2629f;
        public final int g;

        /* JADX WARN: Illegal instructions before constructor call */
        public SamplerShaderProgram(DynamicRange dynamicRange, ShaderProvider shaderProvider) {
            String str = dynamicRange.a() ? GLUtils.d : GLUtils.f2619c;
            try {
                String strA = shaderProvider.a();
                if (strA == null || !strA.contains("vTextureCoord") || !strA.contains("sTexture")) {
                    throw new IllegalArgumentException("Invalid fragment shader");
                }
                super(str, strA);
                this.f2628e = -1;
                this.f2629f = -1;
                this.g = -1;
                a();
                int i2 = this.f2625a;
                int iGlGetUniformLocation = GLES20.glGetUniformLocation(i2, "sTexture");
                this.f2628e = iGlGetUniformLocation;
                GLUtils.e(iGlGetUniformLocation, "sTexture");
                int iGlGetAttribLocation = GLES20.glGetAttribLocation(i2, "aTextureCoord");
                this.g = iGlGetAttribLocation;
                GLUtils.e(iGlGetAttribLocation, "aTextureCoord");
                int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(i2, "uTexMatrix");
                this.f2629f = iGlGetUniformLocation2;
                GLUtils.e(iGlGetUniformLocation2, "uTexMatrix");
            } catch (Throwable th) {
                if (th instanceof IllegalArgumentException) {
                    throw th;
                }
                r81.j("Unable retrieve fragment shader source", th);
                throw null;
            }
        }

        @Override // androidx.camera.core.processing.util.GLUtils.Program2D
        public final void b() {
            super.b();
            GLES20.glUniform1i(this.f2628e, 0);
            GLES20.glEnableVertexAttribArray(this.g);
            GLUtils.b("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.g, 2, 5126, false, 0, (Buffer) GLUtils.f2623i);
            GLUtils.b("glVertexAttribPointer");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public SamplerShaderProgram(DynamicRange dynamicRange, InputFormat inputFormat) {
            ShaderProvider shaderProvider;
            if (dynamicRange.a()) {
                Preconditions.b(inputFormat != InputFormat.UNKNOWN, "No default sampler shader available for" + inputFormat);
                if (inputFormat == InputFormat.YUV) {
                    shaderProvider = GLUtils.g;
                } else {
                    shaderProvider = GLUtils.f2621f;
                }
            } else {
                shaderProvider = GLUtils.f2620e;
            }
            this(dynamicRange, shaderProvider);
        }
    }
}

package com.cyberlink.clgpuimage;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.GLES20;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.Scanner;
import java.util.concurrent.ConcurrentLinkedQueue;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class GPUImageFilter {
    public static final String NO_FILTER_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";
    public static final String NO_FILTER_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentLinkedQueue f25441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f25442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f25443c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f25445f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f25446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f25447i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f25448j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25449k;
    public int l;
    public final float[] m;
    public int mGLProgId;
    public final float[] n;

    public GPUImageFilter(String str, String str2) {
        this.f25448j = false;
        this.f25449k = 0;
        this.l = 0;
        this.m = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.n = new float[]{1.0f, 1.0f};
        this.f25441a = new ConcurrentLinkedQueue();
        this.f25442b = str;
        this.f25443c = str2;
    }

    public static String loadShader(String str, Context context) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            Scanner scanner = new Scanner(inputStreamOpen);
            scanner.useDelimiter("\\A");
            String next = scanner.hasNext() ? scanner.next() : "";
            scanner.close();
            inputStreamOpen.close();
            return next;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public void SetProcessRange(float f2, float f3, float f4) {
        float fMin;
        float fMin2;
        float fMin3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fMin4 = 1.0f;
        if (f4 == 180.0f) {
            fMin2 = 1.0f - Math.min(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM), f3);
            fMin = 1.0f - Math.min(Math.max(f2, f3), 1.0f);
        } else {
            if (f4 == 90.0f) {
                float fMin5 = 1.0f - Math.min(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM), f3);
                fMin3 = 1.0f - Math.min(Math.max(f2, f3), 1.0f);
                fMin = 0.0f;
                fMin4 = fMin5;
            } else if (f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float fMin6 = Math.min(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM), f3);
                fMin2 = Math.min(Math.max(f2, f3), 1.0f);
                fMin = fMin6;
            } else if (f4 == 270.0f) {
                float fMin7 = Math.min(Math.max(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM), f3);
                fMin4 = Math.min(Math.max(f2, f3), 1.0f);
                fMin = 0.0f;
                fMin3 = fMin7;
            } else {
                fMin = 0.0f;
                fMin2 = 1.0f;
            }
            fMin2 = 1.0f;
        }
        float[] fArr = this.m;
        fArr[0] = fMin3;
        fArr[1] = fMin;
        float[] fArr2 = this.n;
        fArr2[0] = fMin4;
        fArr2[1] = fMin2;
    }

    public void c(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        onDraw(i2, floatBuffer, floatBuffer2);
    }

    public void d() {
    }

    public final void destroy() {
        this.f25447i = false;
        GLES20.glDeleteProgram(this.mGLProgId);
        onDestroy();
    }

    public final void e(Runnable runnable) {
        this.f25441a.add(runnable);
    }

    public void f() {
        synchronized (this.f25441a) {
            while (!this.f25441a.isEmpty()) {
                try {
                    ((Runnable) this.f25441a.poll()).run();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void g(final float[] fArr, final int i2) {
        e(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageFilter.3
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform2fv(i2, 1, FloatBuffer.wrap(fArr));
            }
        });
    }

    public int getAttribPosition() {
        return this.d;
    }

    public int getAttribTextureCoordinate() {
        return this.f25445f;
    }

    public int getOutputHeight() {
        return this.f25446h;
    }

    public int getOutputWidth() {
        return this.g;
    }

    public int getProgram() {
        return this.mGLProgId;
    }

    public int getUniformTexture() {
        return this.f25444e;
    }

    public final void h(final int i2, final int i3) {
        e(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageFilter.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1i(i2, i3);
            }
        });
    }

    public final void i(final int i2, final PointF pointF) {
        e(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageFilter.7
            @Override // java.lang.Runnable
            public void run() {
                PointF pointF2 = pointF;
                GLES20.glUniform2fv(i2, 1, new float[]{pointF2.x, pointF2.y}, 0);
            }
        });
    }

    public final void init(int i2, int i3) {
        this.f25448j = true;
        this.f25449k = i2;
        this.l = i3;
        onInit();
        this.f25447i = true;
        onInitialized();
    }

    public boolean isInitialized() {
        return this.f25447i;
    }

    public void onDestroy() {
    }

    public void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        GLES20.glUseProgram(this.mGLProgId);
        f();
        if (this.f25447i) {
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.d);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.f25445f);
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i2);
                GLES20.glUniform1i(this.f25444e, 0);
            }
            d();
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glDisableVertexAttribArray(this.f25445f);
            GLES20.glBindTexture(3553, 0);
        }
    }

    public void onInit() {
        int i2;
        int i3;
        if (!this.f25448j || (i2 = this.f25449k) == 0 || (i3 = this.l) == 0) {
            this.mGLProgId = OpenGlUtils.d(this.f25442b, this.f25443c);
        } else {
            int[] iArr = new int[1];
            int i4 = 0;
            if (i2 != 0 && i3 != 0) {
                int iGlCreateProgram = GLES20.glCreateProgram();
                GLES20.glAttachShader(iGlCreateProgram, i2);
                GLES20.glAttachShader(iGlCreateProgram, i3);
                GLES20.glLinkProgram(iGlCreateProgram);
                GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
                if (iArr[0] > 0) {
                    i4 = iGlCreateProgram;
                }
            }
            this.mGLProgId = i4;
        }
        this.d = GLES20.glGetAttribLocation(this.mGLProgId, "position");
        this.f25444e = GLES20.glGetUniformLocation(this.mGLProgId, "inputImageTexture");
        this.f25445f = GLES20.glGetAttribLocation(this.mGLProgId, "inputTextureCoordinate");
        this.f25447i = true;
    }

    public void onInitialized() {
    }

    public void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }

    public void setFloat(final int i2, final float f2) {
        e(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageFilter.2
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glUniform1f(i2, f2);
            }
        });
    }

    public void setScaleType(GPUImage.ScaleType scaleType) {
    }

    public void setShaders(String str, String str2) {
        this.f25442b = str;
        this.f25443c = str2;
    }

    public void setWoringSize(int i2, int i3) {
    }

    public final void init() {
        this.f25448j = false;
        onInit();
        this.f25447i = true;
        onInitialized();
    }

    public GPUImageFilter() {
        this(NO_FILTER_VERTEX_SHADER, NO_FILTER_FRAGMENT_SHADER);
    }
}

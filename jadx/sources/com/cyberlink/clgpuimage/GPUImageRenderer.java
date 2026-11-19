package com.cyberlink.clgpuimage;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.cyberlink.clgpuimage.util.TextureRotationUtil;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class GPUImageRenderer implements GLSurfaceView.Renderer {
    public static final float[] M = {-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};
    public static final Factory N = Factory.f25479a;
    public static volatile boolean O;
    public GPUImage.ScaleType A;
    public Runnable B;
    public int C;
    public int D;
    public ByteBuffer E;
    public ByteBuffer F;
    public final float[] G;
    public volatile boolean H;
    public float I;
    public int J;
    public long K;
    public boolean L;
    public final boolean d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile GlInvalidator f25465f;
    public GPUImageFilter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CLYuvToRgbFilter f25466h;
    public volatile boolean l;
    public final FloatBuffer n;
    public final FloatBuffer o;
    public final FloatBuffer p;
    public final FloatBuffer q;
    public volatile int r;
    public volatile int s;
    public int t;
    public int u;
    public final ConcurrentLinkedQueue v;
    public final ConcurrentLinkedQueue w;
    public Rotation x;
    public boolean y;
    public boolean z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f25462b = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f25463c = new int[4];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f25464e = new int[4];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f25467i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f25468j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f25469k = new Object();
    public int m = -1;

    public interface Buffer {
    }

    public interface Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Factory f25479a = new AnonymousClass1();

        /* JADX INFO: renamed from: com.cyberlink.clgpuimage.GPUImageRenderer$Factory$1, reason: invalid class name */
        class AnonymousClass1 implements Factory {
        }
    }

    public interface FilterListener {
    }

    public interface OnFrameAvailableListener<T> {
        void a(Object obj);
    }

    public interface RenderFrameRateListener {
    }

    public interface RenderListener {
    }

    public GPUImageRenderer(GPUImageFilter gPUImageFilter, boolean z) {
        GPUImage.ScaleType scaleType = GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER;
        this.A = scaleType;
        this.C = -1;
        this.D = -1;
        this.G = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.J = 0;
        this.K = 0L;
        this.g = gPUImageFilter;
        if (gPUImageFilter != null) {
            gPUImageFilter.setScaleType(scaleType);
        }
        this.d = z;
        this.v = new ConcurrentLinkedQueue();
        this.w = new ConcurrentLinkedQueue();
        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(32));
        this.n = floatBufferV;
        float[] fArr = M;
        floatBufferV.put(fArr).position(0);
        this.o = fc.v(ByteBuffer.allocateDirect(32));
        i(Rotation.NORMAL, false, false);
        this.f25466h = new CLYuvToRgbFilter();
        FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect(32));
        this.p = floatBufferV2;
        floatBufferV2.put(fArr).position(0);
        FloatBuffer floatBufferV3 = fc.v(ByteBuffer.allocateDirect(32));
        this.q = floatBufferV3;
        floatBufferV3.put(TextureRotationUtil.f25839a).position(0);
    }

    public static void b(ConcurrentLinkedQueue concurrentLinkedQueue) {
        while (true) {
            Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
            if (runnable == null) {
                return;
            } else {
                runnable.run();
            }
        }
    }

    public final void a(Runnable runnable) {
        if (this.H) {
            return;
        }
        this.v.add(runnable);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:58:0x0190  */
    /* JADX WARN: Code duplicated, block: B:60:0x0198  */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    public final void c() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (!this.d) {
            float[] fArr = this.G;
            GLES20.glClearColor(fArr[0], fArr[1], fArr[2], fArr[3]);
            GLES20.glClear(16640);
        }
        b(this.v);
        GPUImage.ScaleType scaleType = this.A;
        int i8 = -1;
        if (scaleType == GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.CENTER_INSIDE_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER) {
            synchronized (this.f25468j) {
                try {
                    ByteBuffer byteBuffer = this.E;
                    if (byteBuffer != null) {
                        this.C = OpenGlUtils.c(byteBuffer, this.t, this.u, this.C);
                        int iB = OpenGlUtils.b(this.F, this.t, this.u, this.D);
                        this.D = iB;
                        Runnable runnable = this.B;
                        this.B = null;
                        if (this.C != -1 && iB != -1) {
                            if (runnable != null) {
                                runnable.run();
                            }
                            if (this.d) {
                                GLES20.glGetIntegerv(2978, this.f25464e, 0);
                            }
                            int[] iArr = this.f25463c;
                            GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
                            CLYuvToRgbFilter cLYuvToRgbFilter = this.f25466h;
                            int i9 = this.C;
                            int i10 = this.D;
                            FloatBuffer floatBuffer = this.n;
                            FloatBuffer floatBuffer2 = this.o;
                            int[] iArr2 = cLYuvToRgbFilter.u;
                            if (!cLYuvToRgbFilter.isInitialized() || cLYuvToRgbFilter.q == null || cLYuvToRgbFilter.r == null) {
                                i2 = 36160;
                            } else {
                                GLES20.glGetIntegerv(36006, iArr2, 0);
                                GLES20.glBindFramebuffer(36160, cLYuvToRgbFilter.q[0]);
                                GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                GLES20.glUseProgram(cLYuvToRgbFilter.mGLProgId);
                                cLYuvToRgbFilter.f();
                                if (cLYuvToRgbFilter.isInitialized()) {
                                    floatBuffer.position(0);
                                    i2 = 36160;
                                    GLES20.glVertexAttribPointer(cLYuvToRgbFilter.d, 2, 5126, false, 0, (java.nio.Buffer) floatBuffer);
                                    GLES20.glEnableVertexAttribArray(cLYuvToRgbFilter.d);
                                    floatBuffer2.position(0);
                                    GLES20.glVertexAttribPointer(cLYuvToRgbFilter.f25445f, 2, 5126, false, 0, (java.nio.Buffer) floatBuffer2);
                                    GLES20.glEnableVertexAttribArray(cLYuvToRgbFilter.f25445f);
                                    if (i9 != -1) {
                                        GLES20.glActiveTexture(33984);
                                        GLES20.glBindTexture(3553, i9);
                                        GLES20.glUniform1i(cLYuvToRgbFilter.f25444e, 0);
                                    }
                                    if (i10 != -1) {
                                        GLES20.glActiveTexture(33987);
                                        GLES20.glBindTexture(3553, i10);
                                        GLES20.glUniform1i(cLYuvToRgbFilter.o, 3);
                                    }
                                    GLES20.glUniform1i(cLYuvToRgbFilter.p, cLYuvToRgbFilter.s);
                                    GLES20.glDrawArrays(5, 0, 4);
                                    GLES20.glDisableVertexAttribArray(cLYuvToRgbFilter.d);
                                    GLES20.glDisableVertexAttribArray(cLYuvToRgbFilter.f25445f);
                                    GLES20.glBindTexture(3553, 0);
                                    GLES20.glBindFramebuffer(36160, iArr2[0]);
                                    i8 = cLYuvToRgbFilter.r[0];
                                } else {
                                    i2 = 36160;
                                }
                            }
                            this.m = i8;
                            if (this.d) {
                                int[] iArr3 = this.f25464e;
                                i3 = iArr3[0];
                                i4 = iArr3[1];
                                i5 = iArr3[2];
                                i6 = iArr3[3];
                            } else {
                                GLES20.glBindFramebuffer(i2, 0);
                                int[] iArr4 = this.f25462b;
                                i3 = iArr4[0];
                                i4 = iArr4[r4];
                                i5 = iArr4[r3];
                                i6 = iArr4[3];
                            }
                            GLES20.glViewport(i3, i4, i5, i6);
                            this.g.onDraw(this.m, this.p, this.q);
                            this.f25466h.t.j();
                        }
                        b(this.w);
                        if (this.L) {
                            i7 = this.J + 1;
                            this.J = i7;
                            if (i7 == 5) {
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                this.I = 1.0f / (((jCurrentTimeMillis - this.K) / 1000.0f) / 5.0f);
                                this.K = jCurrentTimeMillis;
                                this.J = 0;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            int i11 = this.m;
            if (i11 != -1) {
                this.g.onDraw(i11, this.n, this.o);
            }
        }
        b(this.w);
        if (this.L) {
            i7 = this.J + 1;
            this.J = i7;
            if (i7 == 5) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                this.I = 1.0f / (((jCurrentTimeMillis2 - this.K) / 1000.0f) / 5.0f);
                this.K = jCurrentTimeMillis2;
                this.J = 0;
            }
        }
    }

    public final void d() {
        Rotation rotation;
        boolean z;
        boolean z2;
        GPUImage.ScaleType scaleType = this.A;
        if (scaleType == GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.CENTER_INSIDE_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER) {
            rotation = this.x;
            z = this.y;
            z2 = !this.z;
        } else {
            rotation = Rotation.NORMAL;
            z = this.y;
            z2 = this.z;
        }
        float[] fArrB = TextureRotationUtil.b(rotation, z, z2);
        e();
        FloatBuffer floatBuffer = this.n;
        floatBuffer.clear();
        floatBuffer.put(M).position(0);
        FloatBuffer floatBuffer2 = this.o;
        floatBuffer2.clear();
        floatBuffer2.put(fArrB).position(0);
    }

    public final void e() {
        int i2;
        int i3;
        int iRound;
        int iRound2;
        Rotation rotation = this.x;
        if (rotation == Rotation.ROTATION_270 || rotation == Rotation.ROTATION_90) {
            i2 = this.u;
            i3 = this.t;
        } else {
            i2 = this.t;
            i3 = this.u;
        }
        GPUImageFilter gPUImageFilter = this.g;
        if (gPUImageFilter != null) {
            gPUImageFilter.onOutputSizeChanged(i2, i3);
        }
        this.f25466h.onOutputSizeChanged(i2, i3);
        int[] iArr = this.f25463c;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = i2;
        iArr[3] = i3;
        GPUImage.ScaleType scaleType = this.A;
        if (scaleType == GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER) {
            float f2 = i2 / i3;
            if (f2 > this.r / this.s) {
                iRound = this.s;
                iRound2 = Math.round(iRound * f2);
            } else {
                int i4 = this.r;
                iRound = Math.round(i4 / f2);
                iRound2 = i4;
            }
            this.f25462b[0] = (this.r - iRound2) / 2;
            this.f25462b[1] = (this.s - iRound) / 2;
            int[] iArr2 = this.f25462b;
            iArr2[2] = iRound2;
            iArr2[3] = iRound;
            return;
        }
        if (scaleType == GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER) {
            int[] iArr3 = this.f25462b;
            iArr3[0] = 0;
            iArr3[1] = 0;
            iArr3[2] = this.r;
            this.f25462b[3] = this.s;
            return;
        }
        float f3 = this.r / this.s;
        float f4 = i2;
        float f5 = i3;
        float f6 = f4 / f5;
        int[] iArr4 = this.f25462b;
        if (f3 > f6) {
            iArr4[1] = 0;
            iArr4[3] = this.s;
            int i5 = this.s / 2;
            int i6 = this.r / 2;
            int[] iArr5 = this.f25462b;
            iArr5[0] = i6 - ((int) (i5 * f6));
            iArr5[2] = (int) (this.s * f6);
            return;
        }
        iArr4[0] = 0;
        iArr4[2] = this.r;
        float f7 = f5 / f4;
        int i7 = this.s / 2;
        int i8 = this.r / 2;
        int[] iArr6 = this.f25462b;
        iArr6[1] = i7 - ((int) (i8 * f7));
        iArr6[3] = (int) (this.r * f7);
    }

    public final void f() {
        a(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.4
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glDeleteTextures(1, new int[]{GPUImageRenderer.this.m}, 0);
                GPUImageRenderer.this.m = -1;
            }
        });
    }

    public final void g() {
        this.H = true;
        b(this.v);
        b(this.w);
        synchronized (this.f25468j) {
            this.E = null;
            this.F = null;
        }
        this.f25466h.destroy();
        this.g.destroy();
        int i2 = this.C;
        if (i2 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            this.C = -1;
        }
        int i3 = this.D;
        if (i3 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i3}, 0);
            this.D = -1;
        }
    }

    public final void h(final GPUImageFilter gPUImageFilter) {
        a(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.3
            @Override // java.lang.Runnable
            public void run() {
                GPUImageFilter gPUImageFilter2;
                int i2;
                int i3;
                GPUImageRenderer gPUImageRenderer = GPUImageRenderer.this;
                GPUImageFilter gPUImageFilter3 = gPUImageRenderer.g;
                gPUImageRenderer.g = gPUImageFilter;
                if (gPUImageFilter3 != null) {
                    gPUImageFilter3.destroy();
                }
                GPUImageRenderer.this.g.init();
                GPUImageRenderer gPUImageRenderer2 = GPUImageRenderer.this;
                gPUImageRenderer2.g.setScaleType(gPUImageRenderer2.A);
                GLES20.glUseProgram(GPUImageRenderer.this.g.getProgram());
                GPUImageRenderer gPUImageRenderer3 = GPUImageRenderer.this;
                GPUImage.ScaleType scaleType = gPUImageRenderer3.A;
                if (scaleType == GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.CENTER_INSIDE_CAMERA_YUV_BUFFER || scaleType == GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER) {
                    Rotation rotation = gPUImageRenderer3.x;
                    if (rotation == Rotation.ROTATION_270 || rotation == Rotation.ROTATION_90) {
                        gPUImageFilter2 = gPUImageRenderer3.g;
                        i2 = gPUImageRenderer3.u;
                        i3 = gPUImageRenderer3.t;
                    } else {
                        gPUImageFilter2 = gPUImageRenderer3.g;
                        i2 = gPUImageRenderer3.t;
                        i3 = gPUImageRenderer3.u;
                    }
                    gPUImageFilter2.onOutputSizeChanged(i2, i3);
                } else {
                    gPUImageRenderer3.g.onOutputSizeChanged(gPUImageRenderer3.r, GPUImageRenderer.this.s);
                }
                GPUImageRenderer.this.getClass();
            }
        });
    }

    public final void i(Rotation rotation, boolean z, boolean z2) {
        this.y = z;
        this.z = z2;
        this.x = rotation;
        a(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.7
            @Override // java.lang.Runnable
            public void run() {
                GPUImageRenderer gPUImageRenderer = GPUImageRenderer.this;
                float[] fArr = GPUImageRenderer.M;
                gPUImageRenderer.d();
            }
        });
    }

    public final void j(GPUImage.ScaleType scaleType) {
        this.A = scaleType;
        GPUImageFilter gPUImageFilter = this.g;
        if (gPUImageFilter != null) {
            gPUImageFilter.setScaleType(scaleType);
        }
        a(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.6
            @Override // java.lang.Runnable
            public void run() {
                GPUImageRenderer gPUImageRenderer = GPUImageRenderer.this;
                GPUImage.ScaleType scaleType2 = gPUImageRenderer.A;
                if (scaleType2 == GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER || scaleType2 == GPUImage.ScaleType.CENTER_INSIDE_CAMERA_YUV_BUFFER || scaleType2 == GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER) {
                    gPUImageRenderer.e();
                    return;
                }
                GPUImageFilter gPUImageFilter2 = gPUImageRenderer.g;
                if (gPUImageFilter2 != null) {
                    gPUImageFilter2.onOutputSizeChanged(gPUImageRenderer.r, GPUImageRenderer.this.s);
                }
                GLES20.glViewport(0, 0, GPUImageRenderer.this.r, GPUImageRenderer.this.s);
            }
        });
    }

    public final void k(final YUVBuffer yUVBuffer, final OnFrameAvailableListener onFrameAvailableListener) {
        if (this.H) {
            return;
        }
        synchronized (this.f25468j) {
            try {
                if (this.E == null || this.t != yUVBuffer.f25481b || this.u != yUVBuffer.f25482c) {
                    this.E = ByteBuffer.allocateDirect(yUVBuffer.f25481b * yUVBuffer.f25482c).order(ByteOrder.nativeOrder());
                    this.F = ByteBuffer.allocateDirect((yUVBuffer.f25481b * yUVBuffer.f25482c) / 2).order(ByteOrder.nativeOrder());
                    this.t = yUVBuffer.f25481b;
                    this.u = yUVBuffer.f25482c;
                    a(new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int i2 = GPUImageRenderer.this.C;
                            if (i2 != -1) {
                                GLES20.glDeleteTextures(1, new int[]{i2}, 0);
                                GPUImageRenderer.this.C = -1;
                            }
                            int i3 = GPUImageRenderer.this.D;
                            if (i3 != -1) {
                                GLES20.glDeleteTextures(1, new int[]{i3}, 0);
                                GPUImageRenderer.this.D = -1;
                            }
                            GPUImageRenderer gPUImageRenderer = GPUImageRenderer.this;
                            CLYuvToRgbFilter cLYuvToRgbFilter = gPUImageRenderer.f25466h;
                            int i4 = gPUImageRenderer.t;
                            int i5 = gPUImageRenderer.u;
                            cLYuvToRgbFilter.getClass();
                            if (i4 < 576 || i5 < 576) {
                                cLYuvToRgbFilter.s = 0;
                            } else {
                                cLYuvToRgbFilter.s = 1;
                            }
                            GPUImageRenderer.this.d();
                        }
                    });
                }
                this.E.clear();
                this.E.put(yUVBuffer.f25480a, 0, yUVBuffer.f25481b * yUVBuffer.f25482c);
                this.E.position(0);
                this.F.clear();
                ByteBuffer byteBuffer = this.F;
                byte[] bArr = yUVBuffer.f25480a;
                int i2 = yUVBuffer.f25481b * yUVBuffer.f25482c;
                byteBuffer.put(bArr, i2, i2 / 2);
                this.F.position(0);
                if (onFrameAvailableListener != null) {
                    this.B = new Runnable() { // from class: com.cyberlink.clgpuimage.GPUImageRenderer.2
                        @Override // java.lang.Runnable
                        public void run() {
                            onFrameAvailableListener.a(yUVBuffer);
                        }
                    };
                } else {
                    this.B = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f25465f != null) {
            this.f25465f.invalidate();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        if (this.H) {
            return;
        }
        if (!this.l) {
            c();
            return;
        }
        synchronized (this.f25469k) {
            c();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i2, int i3) {
        if (this.H) {
            return;
        }
        this.r = i2;
        this.s = i3;
        GLES20.glViewport(0, 0, i2, i3);
        GLES20.glUseProgram(this.g.getProgram());
        d();
        synchronized (this.f25467i) {
            this.f25467i.notifyAll();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        if (this.H) {
            return;
        }
        this.m = -1;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        egl10.eglGetCurrentContext();
        egl10.eglGetCurrentDisplay();
        GLES20.glDisable(2929);
        this.g.init();
        this.f25466h.init();
    }

    public static final class YUVBuffer implements Buffer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f25480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25481b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25482c;
        public final long d;

        public YUVBuffer(Builder builder) {
            this.f25480a = builder.f25483a;
            this.f25481b = builder.f25484b;
            this.f25482c = builder.f25485c;
            this.d = builder.d;
        }

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public byte[] f25483a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f25484b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f25485c;
            public long d;

            public Builder(YUVBuffer yUVBuffer) {
                this.d = -1L;
                this.f25483a = yUVBuffer.f25480a;
                this.f25484b = yUVBuffer.f25481b;
                this.f25485c = yUVBuffer.f25482c;
                this.d = yUVBuffer.d;
            }

            public Builder() {
                this.d = -1L;
            }
        }
    }
}

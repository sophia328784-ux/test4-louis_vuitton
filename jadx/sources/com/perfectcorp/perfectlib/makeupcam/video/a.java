package com.perfectcorp.perfectlib.makeupcam.video;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.OpenGlUtils;
import com.cyberlink.clgpuimage.Rotation;
import com.cyberlink.clgpuimage.util.TextureRotationUtil;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.util.r;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.gpuimage.GLImageBlender;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends CLMakeupLivePluginFilter implements GPUImageRenderer.OnFrameAvailableListener<GPUImageRenderer.YUVBuffer>, GLImageBlender.Renderer {
    public final AtomicInteger A;
    public l[] B;
    public d C;
    public com.perfectcorp.perfectlib.makeupcam.video.e D;
    public com.perfectcorp.perfectlib.makeupcam.video.e E;
    public volatile boolean F;
    public final Iterable G;
    public final int[] H;
    public final int[] I;
    public i p;
    public RunnableC0132a q;
    public Thread r;
    public HandlerThread s;
    public int[] t;
    public int[] u;
    public final AtomicLong v;
    public final AtomicLong w;
    public final AtomicLong x;
    public final AtomicLong y;
    public final AtomicLong z;

    public static final class b extends TimeoutException {
    }

    public static class c {
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41008a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f41009b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f41010c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f41011e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f41012f;
        public int g;

        public d(e eVar) {
            this.f41008a = eVar.f41013a;
            this.f41009b = eVar.f41014b;
            this.f41010c = eVar.f41015c;
            this.d = eVar.d;
            this.f41011e = eVar.f41016e;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f41014b = 3000000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f41015c = 64000;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f41016e;
    }

    public interface f {
        void a(Exception exc);

        void b(Exception exc);

        void c(IllegalStateException illegalStateException);

        void d(Exception exc);

        void e(Exception exc);
    }

    public interface g {
        void a(long j2);
    }

    public class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final j f41017a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g f41018b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f f41019c;

        public i(a aVar, Looper looper, c cVar, g gVar, f fVar) {
            this.f41018b = gVar;
            this.f41019c = fVar;
            this.f41017a = aVar.new j(looper, null, gVar, fVar);
        }
    }

    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f41029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaCodec.BufferInfo f41030b;

        public k(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            this.f41030b = bufferInfo2;
            int i2 = bufferInfo.flags;
            bufferInfo2.flags = i2;
            if ((i2 & 4) != 0) {
                this.f41029a = ByteBuffer.allocateDirect(1);
                bufferInfo2.offset = 0;
                bufferInfo2.size = 0;
                bufferInfo2.presentationTimeUs = 0L;
                return;
            }
            bufferInfo2.offset = 0;
            int i3 = bufferInfo.size;
            bufferInfo2.size = i3;
            bufferInfo2.presentationTimeUs = bufferInfo.presentationTimeUs;
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3);
            this.f41029a = byteBufferAllocateDirect;
            byteBufferAllocateDirect.position(0);
            byteBufferAllocateDirect.limit(bufferInfo2.size);
            int iPosition = byteBuffer.position();
            int iLimit = byteBuffer.limit();
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            byteBufferAllocateDirect.put(byteBuffer);
            byteBuffer.position(iPosition);
            byteBuffer.limit(iLimit);
        }
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f41031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f41032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f41033c;
        public boolean d;

        public l(int i2, int i3) {
            this.f41031a = i2;
            this.f41032b = i3;
        }

        public final synchronized void a() {
            this.d = false;
            notifyAll();
        }
    }

    public static class m {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final float[] f41034k = {-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public EGLDisplay f41035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public EGLContext f41036b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public EGLSurface f41037c;
        public Surface d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f41038e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f41039f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f41040h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final FloatBuffer f41041i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final FloatBuffer f41042j;

        public m(EGLContext eGLContext, Surface surface) {
            this.f41035a = EGL14.EGL_NO_DISPLAY;
            this.f41036b = EGL14.EGL_NO_CONTEXT;
            this.f41037c = EGL14.EGL_NO_SURFACE;
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            this.f41035a = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay != EGL14.EGL_NO_DISPLAY && EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (EGL14.eglChooseConfig(this.f41035a, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                    EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.f41035a, eGLConfigArr[0], eGLContext, new int[]{12440, 2, 12344}, 0);
                    this.f41036b = eGLContextEglCreateContext;
                    if (eGLContextEglCreateContext == EGL14.EGL_NO_CONTEXT) {
                        return;
                    }
                    EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.f41035a, eGLConfigArr[0], surface, new int[]{12344}, 0);
                    this.f41037c = eGLSurfaceEglCreateWindowSurface;
                    if (eGLSurfaceEglCreateWindowSurface == EGL14.EGL_NO_SURFACE) {
                        return;
                    }
                    this.d = surface;
                    if (EGL14.eglMakeCurrent(this.f41035a, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.f41036b)) {
                        int iD = OpenGlUtils.d(GPUImageFilter.NO_FILTER_VERTEX_SHADER, GPUImageFilter.NO_FILTER_FRAGMENT_SHADER);
                        this.f41038e = iD;
                        if (iD == 0) {
                            return;
                        }
                        this.f41039f = GLES20.glGetAttribLocation(iD, "position");
                        this.g = GLES20.glGetAttribLocation(iD, "inputTextureCoordinate");
                        this.f41040h = GLES20.glGetUniformLocation(iD, "inputImageTexture");
                        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(32));
                        this.f41041i = floatBufferV;
                        floatBufferV.put(f41034k).position(0);
                        FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect(32));
                        this.f41042j = floatBufferV2;
                        floatBufferV2.put(TextureRotationUtil.f25839a).position(0);
                    }
                }
            }
        }

        public final void a(int i2) {
            Rotation rotation;
            if (i2 == 0) {
                rotation = Rotation.NORMAL;
            } else if (i2 == 90) {
                rotation = Rotation.ROTATION_90;
            } else if (i2 == 180) {
                rotation = Rotation.ROTATION_180;
            } else if (i2 != 270) {
                if (i2 != 360) {
                    md.k(cj.d(i2, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"));
                    return;
                }
                rotation = Rotation.NORMAL;
            } else {
                rotation = Rotation.ROTATION_270;
            }
            this.f41042j.put(TextureRotationUtil.b(rotation, false, false)).position(0);
        }

        public final void b() {
            synchronized (this) {
                try {
                    EGLSurface eGLSurface = this.f41037c;
                    if (eGLSurface != EGL14.EGL_NO_SURFACE) {
                        EGL14.eglDestroySurface(this.f41035a, eGLSurface);
                        this.f41037c = EGL14.EGL_NO_SURFACE;
                    }
                    EGLDisplay eGLDisplay = this.f41035a;
                    if (eGLDisplay != EGL14.EGL_NO_DISPLAY && this.f41036b != EGL14.EGL_NO_CONTEXT) {
                        EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
                        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
                        EGL14.eglDestroyContext(this.f41035a, this.f41036b);
                        EGL14.eglReleaseThread();
                        EGL14.eglTerminate(this.f41035a);
                    }
                    Surface surface = this.d;
                    if (surface != null) {
                        surface.release();
                        this.d = null;
                    }
                    this.f41035a = EGL14.EGL_NO_DISPLAY;
                    this.f41036b = EGL14.EGL_NO_CONTEXT;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void c(int i2) {
            GLES20.glUseProgram(this.f41038e);
            this.f41041i.position(0);
            GLES20.glVertexAttribPointer(this.f41039f, 2, 5126, false, 0, (Buffer) this.f41041i);
            int i3 = this.f41039f;
            GLES20.glEnableVertexAttribArray(i3);
            this.f41042j.position(0);
            GLES20.glVertexAttribPointer(this.g, 2, 5126, false, 0, (Buffer) this.f41042j);
            int i4 = this.g;
            GLES20.glEnableVertexAttribArray(i4);
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i2);
                GLES20.glUniform1i(this.f41040h, 0);
            }
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(i3);
            GLES20.glDisableVertexAttribArray(i4);
            GLES20.glBindTexture(3553, 0);
        }

        public final void finalize() throws Throwable {
            try {
                b();
            } finally {
                super.finalize();
            }
        }
    }

    public a() {
        super(GPUImageFilter.NO_FILTER_VERTEX_SHADER, GPUImageFilter.NO_FILTER_FRAGMENT_SHADER);
        this.v = new AtomicLong(-1L);
        this.w = new AtomicLong(0L);
        this.x = new AtomicLong(-1L);
        this.y = new AtomicLong(-1L);
        this.z = new AtomicLong(0L);
        this.A = new AtomicInteger(2);
        this.H = new int[4];
        this.I = new int[1];
        SetEnabled(true);
        bz bzVar = ImmutableList.f42200c;
        this.G = new ImmutableList.Builder().i();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageRenderer.OnFrameAvailableListener
    public final void a(Object obj) {
        this.w.set(((GPUImageRenderer.YUVBuffer) obj).d);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter, com.perfectcorp.perfectlib.gpuimage.GLImageBlender.Renderer
    public final void c(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        super.onDraw(i2, floatBuffer, floatBuffer2);
    }

    public final void j() {
        synchronized (this.A) {
            this.A.set(0);
            this.y.set(System.nanoTime() / 1000);
            AtomicLong atomicLong = this.z;
            atomicLong.set(atomicLong.addAndGet(this.y.get() - this.x.get()));
        }
    }

    public final void k() {
        l[] lVarArr = this.B;
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                synchronized (lVar) {
                    while (lVar.d) {
                        try {
                            lVar.wait();
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        int[] iArr = this.u;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.u = null;
        }
        int[] iArr2 = this.t;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.t = null;
        }
        this.B = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        k();
        bz bzVarListIterator = ((ImmutableList) this.G).listIterator(0);
        while (bzVarListIterator.hasNext()) {
            ((GLImageBlender) bzVarListIterator.next()).a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c5 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:4:0x0006, B:6:0x000f, B:8:0x001b, B:9:0x001d, B:16:0x003f, B:19:0x0044, B:21:0x0049, B:29:0x0059, B:30:0x0099, B:32:0x009c, B:33:0x009d, B:34:0x00be, B:38:0x00c2, B:24:0x0050, B:40:0x00c4, B:41:0x00c5, B:42:0x00d0, B:44:0x00d6, B:31:0x009a, B:10:0x001e, B:12:0x002a, B:15:0x003e), top: B:49:0x0006, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d6 A[Catch: all -> 0x0053, LOOP:1: B:42:0x00d0->B:44:0x00d6, LOOP_END, TryCatch #1 {all -> 0x0053, blocks: (B:4:0x0006, B:6:0x000f, B:8:0x001b, B:9:0x001d, B:16:0x003f, B:19:0x0044, B:21:0x0049, B:29:0x0059, B:30:0x0099, B:32:0x009c, B:33:0x009d, B:34:0x00be, B:38:0x00c2, B:24:0x0050, B:40:0x00c4, B:41:0x00c5, B:42:0x00d0, B:44:0x00d6, B:31:0x009a, B:10:0x001e, B:12:0x002a, B:15:0x003e), top: B:49:0x0006, inners: #0, #2 }] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        bz bzVarListIterator;
        l lVar;
        f();
        synchronized (this.A) {
            try {
                if (this.A.get() != 0 || this.w.get() < 0) {
                    super.onDraw(i2, floatBuffer, floatBuffer2);
                    bzVarListIterator = ((ImmutableList) this.G).listIterator(0);
                    while (bzVarListIterator.hasNext()) {
                        ((GLImageBlender) bzVarListIterator.next()).b(this);
                    }
                } else {
                    synchronized (this.v) {
                        try {
                            if (this.v.get() == -1) {
                                this.v.set(this.w.get());
                                this.z.set(0L);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (this.B == null) {
                        lVar = null;
                        break;
                    }
                    int i3 = 0;
                    while (true) {
                        l[] lVarArr = this.B;
                        if (i3 >= lVarArr.length) {
                            lVar = null;
                            break;
                        }
                        lVar = lVarArr[i3];
                        if (!lVar.d) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (lVar != null) {
                        GLES20.glGetIntegerv(2978, this.H, 0);
                        GLES20.glGetIntegerv(36006, this.I, 0);
                        GLES20.glBindFramebuffer(36160, lVar.f41031a);
                        d dVar = this.C;
                        GLES20.glViewport(0, 0, dVar.f41012f, dVar.g);
                        super.onDraw(i2, floatBuffer, floatBuffer2);
                        GLES20.glFinish();
                        GLES20.glBindFramebuffer(36160, this.I[0]);
                        int[] iArr = this.H;
                        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
                        super.onDraw(i2, floatBuffer, floatBuffer2);
                        synchronized (lVar) {
                            lVar.d = true;
                        }
                        lVar.f41033c = (this.w.get() - this.v.get()) - this.z.get();
                        j jVar = this.p.f41017a;
                        jVar.sendMessage(jVar.obtainMessage(3, lVar));
                    } else {
                        super.onDraw(i2, floatBuffer, floatBuffer2);
                        bzVarListIterator = ((ImmutableList) this.G).listIterator(0);
                        while (bzVarListIterator.hasNext()) {
                            ((GLImageBlender) bzVarListIterator.next()).b(this);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        bz bzVarListIterator = ((ImmutableList) this.G).listIterator(0);
        while (bzVarListIterator.hasNext()) {
            ((GLImageBlender) bzVarListIterator.next()).c();
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        Log.g(3, "LiveRecordingFilter", o60.h(i2, i3, "onOutputSizeChanged width ", " height "));
        this.g = i2;
        this.f25446h = i3;
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.video.a$a, reason: collision with other inner class name */
    public class RunnableC0132a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AudioRecord f40999a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private MediaCodec f41000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ByteBuffer[] f41001c;
        private ByteBuffer[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final d f41002e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f41003f;
        private long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f41004h = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final f f41005i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f41006j;

        public RunnableC0132a(d dVar, f fVar) {
            this.f41002e = dVar;
            this.f41005i = fVar;
        }

        private int a(int i2, int i3, int i4, long j2) {
            int minBufferSize = AudioRecord.getMinBufferSize(i2, i3, i4);
            long jA = a(minBufferSize, i3 == 16 ? 1 : 2, i2, i4);
            int i5 = minBufferSize;
            for (long j3 = jA; j3 < j2; j3 += jA) {
                i5 += minBufferSize;
            }
            return i5;
        }

        private void b() {
            try {
                AudioRecord audioRecord = this.f40999a;
                if (audioRecord != null) {
                    audioRecord.stop();
                    this.f40999a.release();
                    this.f40999a = null;
                }
                MediaCodec mediaCodec = this.f41000b;
                if (mediaCodec != null) {
                    mediaCodec.stop();
                    this.f41000b.release();
                    this.f41000b = null;
                }
            } catch (IllegalStateException e2) {
                Log.e("LiveRecordingFilter", "stopRecording audio", e2);
            }
        }

        private void c() throws b {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z = false;
            while (this.f41004h) {
                if (a.this.A.get() == 2) {
                    this.f41004h = false;
                }
                int iDequeueInputBuffer = this.f41000b.dequeueInputBuffer(1000L);
                int i2 = -3;
                boolean z2 = true;
                if (iDequeueInputBuffer >= 0) {
                    ByteBuffer byteBuffer = this.f41001c[iDequeueInputBuffer];
                    byteBuffer.clear();
                    while (true) {
                        int i3 = this.f40999a.read(byteBuffer, this.f41003f);
                        if (i3 != -3 && i3 != -2) {
                            if (a.this.A.get() != 1 && a.this.F) {
                                this.f41002e.getClass();
                                long jA = a(i3, 1, 44100, 2);
                                this.f41000b.queueInputBuffer(iDequeueInputBuffer, 0, i3, this.g, 0);
                                this.g += jA;
                                i2 = -3;
                                z = true;
                                z2 = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                boolean z3 = false;
                while (true) {
                    int iDequeueOutputBuffer = this.f41000b.dequeueOutputBuffer(bufferInfo, 1000L);
                    if (iDequeueOutputBuffer == -1) {
                        z3 = z2;
                    } else if (iDequeueOutputBuffer == i2) {
                        this.d = this.f41000b.getOutputBuffers();
                    } else if (iDequeueOutputBuffer == -2) {
                        i iVar = a.this.p;
                        MediaFormat outputFormat = this.f41000b.getOutputFormat();
                        j jVar = iVar.f41017a;
                        jVar.sendMessage(jVar.obtainMessage(5, outputFormat));
                    } else if (iDequeueOutputBuffer >= 0) {
                        int i4 = bufferInfo.flags;
                        if ((i4 & 4) == 0) {
                            if ((i4 & 2) != 0) {
                                bufferInfo.size = 0;
                            }
                            if (bufferInfo.size == 0) {
                                break;
                            }
                            ByteBuffer byteBuffer2 = this.d[iDequeueOutputBuffer];
                            byteBuffer2.position(bufferInfo.offset);
                            byteBuffer2.limit(bufferInfo.offset + bufferInfo.size);
                            k kVar = new k(byteBuffer2, bufferInfo);
                            j jVar2 = a.this.p.f41017a;
                            jVar2.sendMessage(jVar2.obtainMessage(4, kVar));
                            this.f41000b.releaseOutputBuffer(iDequeueOutputBuffer, false);
                        } else {
                            break;
                        }
                    }
                    if (z3) {
                        if (System.currentTimeMillis() - jCurrentTimeMillis <= HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD || a.this.q.a() || z) {
                            break;
                        }
                        this.f41006j = z2;
                        throw new b();
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            RunnableC0132a runnableC0132a;
            RunnableC0132a runnableC0132a2;
            try {
                try {
                    this.f41002e.getClass();
                    try {
                        runnableC0132a2 = this;
                        try {
                            runnableC0132a2.f41003f = a(44100, 16, 2, r.x);
                            runnableC0132a2.f41002e.getClass();
                            int iA = runnableC0132a2.a(44100, 16, 2, 80000L);
                            runnableC0132a2.f41002e.getClass();
                            runnableC0132a2.f40999a = new AudioRecord(1, 44100, 16, 2, iA);
                            runnableC0132a2.f41002e.getClass();
                            runnableC0132a2.f41000b = MediaCodec.createEncoderByType("audio/mp4a-latm");
                            MediaFormat mediaFormat = new MediaFormat();
                            runnableC0132a2.f41002e.getClass();
                            mediaFormat.setString("mime", "audio/mp4a-latm");
                            mediaFormat.setInteger("bitrate", runnableC0132a2.f41002e.f41010c);
                            runnableC0132a2.f41002e.getClass();
                            mediaFormat.setInteger("sample-rate", 44100);
                            mediaFormat.setInteger("channel-count", 1);
                            mediaFormat.setInteger("aac-profile", 2);
                            mediaFormat.setInteger("max-input-size", runnableC0132a2.f41003f);
                            runnableC0132a2.f41000b.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                            runnableC0132a2.f41000b.start();
                            runnableC0132a2.f41001c = runnableC0132a2.f41000b.getInputBuffers();
                            runnableC0132a2.d = runnableC0132a2.f41000b.getOutputBuffers();
                            runnableC0132a2.f40999a.startRecording();
                            runnableC0132a2.c();
                            runnableC0132a2.b();
                        } catch (b e2) {
                            e = e2;
                            b bVar = e;
                            f fVar = runnableC0132a2.f41005i;
                            if (fVar != null) {
                                fVar.b(bVar);
                            }
                            runnableC0132a2.b();
                        } catch (Exception e3) {
                            e = e3;
                            Exception exc = e;
                            if (runnableC0132a2.f41005i != null) {
                                AudioRecord audioRecord = runnableC0132a2.f40999a;
                                if (audioRecord == null || audioRecord.getState() == 0) {
                                    runnableC0132a2.f41005i.b(exc);
                                } else {
                                    runnableC0132a2.f41005i.e(exc);
                                }
                            }
                            runnableC0132a2.b();
                        }
                    } catch (b e4) {
                        e = e4;
                        runnableC0132a2 = this;
                    } catch (Exception e5) {
                        e = e5;
                        runnableC0132a2 = this;
                    } catch (Throwable th) {
                        th = th;
                        runnableC0132a = this;
                        Throwable th2 = th;
                        runnableC0132a.b();
                        throw th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (b e6) {
                e = e6;
                runnableC0132a2 = this;
            } catch (Exception e7) {
                e = e7;
                runnableC0132a2 = this;
            } catch (Throwable th4) {
                th = th4;
                runnableC0132a = this;
            }
        }

        private static long a(int i2, int i3, int i4, int i5) {
            return (long) ((((double) i2) / ((double) ((i3 * i4) * (i5 != 2 ? 1 : 2)))) * 1000000.0d);
        }

        public final boolean a() {
            AudioRecord audioRecord = this.f40999a;
            return audioRecord != null && audioRecord.getRecordingState() == 3;
        }
    }

    public class j extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MediaCodec f41020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private MediaMuxer f41021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private MediaFormat f41022c;
        private MediaFormat d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Queue<k> f41023e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Queue<k> f41024f;
        private final c g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f41025h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f41026i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f41027j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private m f41028k;
        private boolean l;
        private final g m;
        private final f n;
        private Integer o;

        public j(Looper looper, c cVar, g gVar, f fVar) {
            super(looper);
            this.f41023e = new LinkedList();
            this.f41024f = new LinkedList();
            this.f41026i = -1;
            this.f41027j = -1;
            this.m = gVar;
            this.n = fVar;
        }

        private MediaCodec a(MediaFormat mediaFormat, EGLContext eGLContext) throws Exception {
            MediaCodec mediaCodec = null;
            try {
                a.this.C.getClass();
                MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
                try {
                    mediaCodecCreateEncoderByType.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                    a.this.C.f41012f = mediaFormat.getInteger("width");
                    a.this.C.g = mediaFormat.getInteger("height");
                    m mVar = new m(eGLContext, mediaCodecCreateEncoderByType.createInputSurface());
                    this.f41028k = mVar;
                    Integer num = this.o;
                    if (num != null) {
                        mVar.a(num.intValue());
                    }
                    mediaCodecCreateEncoderByType.start();
                    return mediaCodecCreateEncoderByType;
                } catch (Exception e2) {
                    e = e2;
                    mediaCodec = mediaCodecCreateEncoderByType;
                    Log.e("LiveRecordingFilter", "createEncoder", e);
                    d dVar = a.this.C;
                    dVar.f41012f = -1;
                    dVar.g = -1;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (Exception e3) {
                e = e3;
            }
        }

        private void b() {
            MediaMuxer mediaMuxer;
            MediaFormat mediaFormat;
            if (this.f41025h || (mediaMuxer = this.f41021b) == null || (mediaFormat = this.d) == null || this.f41022c == null) {
                return;
            }
            this.f41026i = mediaMuxer.addTrack(mediaFormat);
            if (!a.this.q.f41006j) {
                this.f41027j = this.f41021b.addTrack(this.f41022c);
            }
            this.f41021b.start();
            this.f41025h = true;
            while (!this.f41023e.isEmpty()) {
                k kVarPoll = this.f41023e.poll();
                this.f41021b.writeSampleData(this.f41026i, kVarPoll.f41029a, kVarPoll.f41030b);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2;
            int i2 = message.what;
            if (i2 == 0) {
                a((EGLContext) message.obj, message.arg1, message.arg2, false);
                return;
            }
            if (i2 == 2) {
                MediaCodec mediaCodec = this.f41020a;
                if (mediaCodec != null) {
                    try {
                        mediaCodec.signalEndOfInputStream();
                    } catch (IllegalStateException e2) {
                        Log.e("LiveRecordingFilter", "onStopRecording signalEndOfInputStream", e2);
                    }
                    try {
                        this.f41020a.stop();
                    } catch (Throwable th) {
                        Log.e("LiveRecordingFilter", "onStopRecording stop", th);
                    }
                    try {
                        this.f41020a.release();
                    } catch (Throwable th2) {
                        Log.e("LiveRecordingFilter", "onStopRecording release", th2);
                    }
                    this.f41020a = null;
                }
                MediaMuxer mediaMuxer = this.f41021b;
                if (mediaMuxer != null) {
                    try {
                        mediaMuxer.stop();
                    } catch (IllegalStateException e3) {
                        Log.e("LiveRecordingFilter", "MediaMuxer.stop(): Muxer doesn't have any data?", e3);
                    }
                    try {
                        this.f41021b.release();
                    } catch (IllegalStateException e4) {
                        Log.e("LiveRecordingFilter", "MediaMuxer.release(): Muxer doesn't have any data?", e4);
                    }
                    this.f41021b = null;
                }
                m mVar = this.f41028k;
                if (mVar != null) {
                    mVar.b();
                    this.f41028k = null;
                }
                Looper looperMyLooper = Looper.myLooper();
                Objects.requireNonNull(looperMyLooper);
                looperMyLooper.quit();
                return;
            }
            if (i2 != 3) {
                if (i2 == 4) {
                    this.f41024f.offer((k) message.obj);
                    return;
                }
                if (i2 == 5) {
                    this.f41022c = (MediaFormat) message.obj;
                    return;
                }
                if (i2 != 6) {
                    return;
                }
                Integer num = (Integer) message.obj;
                this.o = num;
                m mVar2 = this.f41028k;
                if (mVar2 != null) {
                    mVar2.a(num.intValue());
                    return;
                }
                return;
            }
            if (this.l) {
                l lVar = (l) message.obj;
                try {
                    ByteBuffer[] outputBuffers = this.f41020a.getOutputBuffers();
                    MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                    boolean z = lVar == null;
                    if (z) {
                        try {
                            this.f41020a.signalEndOfInputStream();
                        } catch (IllegalStateException e5) {
                            Log.e("LiveRecordingFilter", "onVideoSampleAvailable", e5);
                        }
                    }
                    boolean z2 = false;
                    do {
                        int iDequeueOutputBuffer = this.f41020a.dequeueOutputBuffer(bufferInfo, z ? 3000000L : 1000L);
                        if (iDequeueOutputBuffer == -1) {
                            z2 = true;
                        } else if (iDequeueOutputBuffer == -3) {
                            outputBuffers = this.f41020a.getOutputBuffers();
                        } else if (iDequeueOutputBuffer == -2) {
                            this.d = this.f41020a.getOutputFormat();
                        } else if (iDequeueOutputBuffer >= 0) {
                            int i3 = bufferInfo.flags;
                            if ((i3 & 4) == 0) {
                                if ((i3 & 2) != 0) {
                                    bufferInfo.size = 0;
                                }
                                if (bufferInfo.size != 0) {
                                    ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                                    byteBuffer.position(bufferInfo.offset);
                                    byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                                    if (this.f41025h) {
                                        this.f41021b.writeSampleData(this.f41026i, byteBuffer, bufferInfo);
                                        g gVar = this.m;
                                        if (gVar != null) {
                                            gVar.a(bufferInfo.presentationTimeUs);
                                        }
                                    } else {
                                        this.f41023e.offer(new k(byteBuffer, bufferInfo));
                                    }
                                }
                            }
                            this.f41020a.releaseOutputBuffer(iDequeueOutputBuffer, false);
                        }
                        if (z2) {
                            break;
                        }
                    } while ((bufferInfo.flags & 4) == 0);
                    b();
                    if (this.f41025h) {
                        while (!this.f41024f.isEmpty()) {
                            k kVarPoll = this.f41024f.poll();
                            this.f41021b.writeSampleData(this.f41027j, kVarPoll.f41029a, kVarPoll.f41030b);
                        }
                    }
                    if (lVar != null) {
                        this.f41028k.c(lVar.f41032b);
                        m mVar3 = this.f41028k;
                        long j2 = lVar.f41033c * 1000;
                        EGLDisplay eGLDisplay = mVar3.f41035a;
                        if (eGLDisplay != EGL14.EGL_NO_DISPLAY && (eGLSurface = mVar3.f41037c) != EGL14.EGL_NO_SURFACE) {
                            EGLExt.eglPresentationTimeANDROID(eGLDisplay, eGLSurface, j2);
                        }
                        m mVar4 = this.f41028k;
                        EGLDisplay eGLDisplay2 = mVar4.f41035a;
                        if (eGLDisplay2 != EGL14.EGL_NO_DISPLAY && (eGLSurface2 = mVar4.f41037c) != EGL14.EGL_NO_SURFACE) {
                            EGL14.eglSwapBuffers(eGLDisplay2, eGLSurface2);
                        }
                        lVar.a();
                    }
                } catch (IllegalStateException e6) {
                    if (lVar != null) {
                        lVar.a();
                    }
                    f fVar = this.n;
                    if (fVar != null) {
                        fVar.c(e6);
                    }
                }
            }
        }

        private MediaMuxer a() throws Exception {
            MediaMuxer mediaMuxer;
            Exception e2;
            try {
                mediaMuxer = new MediaMuxer(a.this.C.f41008a, 0);
                try {
                    a.this.C.getClass();
                    mediaMuxer.setOrientationHint(0);
                    return mediaMuxer;
                } catch (Exception e3) {
                    e2 = e3;
                    Log.e("LiveRecordingFilter", "createMuxer", e2);
                    f fVar = this.n;
                    if (fVar != null) {
                        fVar.a(e2);
                    }
                    if (mediaMuxer != null) {
                        try {
                            mediaMuxer.release();
                        } catch (Exception e4) {
                            Log.e("LiveRecordingFilter", "createMuxer MediaMuxer.release()", e4);
                        }
                    }
                    throw e2;
                }
            } catch (Exception e5) {
                mediaMuxer = null;
                e2 = e5;
            }
        }

        private void a(EGLContext eGLContext, int i2, int i3) {
            a.this.C.getClass();
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i2, i3);
            mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
            mediaFormatCreateVideoFormat.setInteger("bitrate", a.this.C.f41009b);
            a.this.C.getClass();
            mediaFormatCreateVideoFormat.setInteger("frame-rate", 24);
            a.this.C.getClass();
            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
            this.f41020a = a(mediaFormatCreateVideoFormat, eGLContext);
            this.f41021b = a();
        }

        public final void a(EGLContext eGLContext, int i2, int i3, boolean z) {
            this.l = false;
            try {
                a(eGLContext, i2, i3);
                if (z) {
                    this.l = true;
                }
            } catch (Exception e2) {
                f fVar = this.n;
                if (fVar != null) {
                    fVar.d(e2);
                }
            }
        }
    }
}

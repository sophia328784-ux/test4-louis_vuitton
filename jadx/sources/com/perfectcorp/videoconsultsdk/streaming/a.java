package com.perfectcorp.videoconsultsdk.streaming;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.perfectcorp.common.utility.Log;
import com.sightcall.uvc.Camera;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends CLMakeupLivePluginFilter implements GPUImageRenderer.OnFrameAvailableListener<GPUImageRenderer.YUVBuffer> {
    public static final float[] z = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public final AtomicInteger p;
    public int[] q;
    public int[] r;
    public final AtomicLong s;
    public final AtomicLong t;
    public c[] u;
    public long v;
    public final int[] w;
    public final int[] x;
    public final C0232a y;

    /* JADX INFO: renamed from: com.perfectcorp.videoconsultsdk.streaming.a$a, reason: collision with other inner class name */
    public static final class C0232a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f43283c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f43284e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f43285f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float[] f43281a = new float[8];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FloatBuffer f43282b = (FloatBuffer) ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer().put(a.z).position(0);
        public final float[] g = new float[8];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final float[] f43286h = new float[8];

        public static float a(float f2, float f3) {
            return f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? f3 : 1.0f - f3;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f43287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f43288b;

        public c(int i2, int i3) {
            this.f43287a = i2;
        }
    }

    public a() {
        super(GPUImageFilter.NO_FILTER_VERTEX_SHADER, GPUImageFilter.NO_FILTER_FRAGMENT_SHADER);
        this.p = new AtomicInteger(2);
        this.s = new AtomicLong(-1L);
        this.t = new AtomicLong(0L);
        this.w = new int[4];
        this.x = new int[1];
        this.y = new C0232a();
        SetEnabled(true);
    }

    @Override // com.cyberlink.clgpuimage.GPUImageRenderer.OnFrameAvailableListener
    public final void a(Object obj) {
        this.t.set(((GPUImageRenderer.YUVBuffer) obj).d);
    }

    public final void j(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        float f2;
        int[] iArr = this.w;
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = this.g;
        int i6 = this.f25446h;
        C0232a c0232a = this.y;
        FloatBuffer floatBuffer3 = c0232a.f43282b;
        float[] fArr = c0232a.f43286h;
        float[] fArr2 = c0232a.f43281a;
        floatBuffer2.position(0);
        float[] fArr3 = c0232a.g;
        floatBuffer2.get(fArr3, 0, fArr3.length);
        floatBuffer2.position(0);
        boolean z2 = (c0232a.f43283c == i3 && c0232a.d == i4 && c0232a.f43284e == i5 && c0232a.f43285f == i6 && Arrays.equals(fArr3, fArr)) ? false : true;
        if (z2) {
            c0232a.f43283c = i3;
            c0232a.d = i4;
            c0232a.f43284e = i5;
            c0232a.f43285f = i6;
            System.arraycopy(fArr3, 0, fArr, 0, fArr3.length);
        }
        if (z2) {
            float f3 = i5;
            float f4 = i6;
            float f5 = f3 / f4;
            float f6 = i3;
            float f7 = i4;
            float f8 = f6 / f7;
            float f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f5 > f8) {
                float f10 = ((f3 - ((f4 * f6) / f7)) / 2.0f) / f3;
                f2 = 0.0f;
                f9 = f10;
            } else {
                f2 = ((f4 - ((f3 * f7) / f6)) / 2.0f) / f4;
            }
            fArr2[0] = C0232a.a(fArr3[0], f9);
            fArr2[1] = C0232a.a(fArr3[1], f2);
            fArr2[2] = C0232a.a(fArr3[2], f9);
            fArr2[3] = C0232a.a(fArr3[3], f2);
            fArr2[4] = C0232a.a(fArr3[4], f9);
            fArr2[5] = C0232a.a(fArr3[5], f2);
            fArr2[6] = C0232a.a(fArr3[6], f9);
            fArr2[7] = C0232a.a(fArr3[7], f2);
            floatBuffer3.put(fArr2).position(0);
        }
        super.onDraw(i2, floatBuffer, floatBuffer3);
    }

    public final void k() {
        c[] cVarArr = this.u;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                synchronized (cVar) {
                    while (cVar.f43288b) {
                        try {
                            cVar.wait();
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        int[] iArr = this.r;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.r = null;
        }
        int[] iArr2 = this.q;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.q = null;
        }
        this.u = null;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        k();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        c cVar;
        f();
        GLES20.glGetIntegerv(2978, this.w, 0);
        synchronized (this.p) {
            try {
                if (this.p.get() != 0 || this.t.get() < 0) {
                    j(i2, floatBuffer, floatBuffer2);
                } else {
                    synchronized (this.s) {
                        try {
                            if (this.s.get() == -1) {
                                this.s.set(this.t.get());
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (this.u == null) {
                        cVar = null;
                        break;
                    }
                    int i3 = 0;
                    while (true) {
                        c[] cVarArr = this.u;
                        if (i3 >= cVarArr.length) {
                            cVar = null;
                            break;
                        }
                        cVar = cVarArr[i3];
                        if (!cVar.f43288b) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (cVar != null) {
                        this.v = System.currentTimeMillis();
                        GLES20.glGetIntegerv(36006, this.x, 0);
                        GLES20.glBindFramebuffer(36160, cVar.f43287a);
                        GLES20.glViewport(0, 0, 368, Camera.DEFAULT_PREVIEW_WIDTH);
                        super.onDraw(i2, floatBuffer, floatBuffer2);
                        GLES20.glFinish();
                        GLES20.glBindFramebuffer(36160, this.x[0]);
                        int[] iArr = this.w;
                        GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
                        j(i2, floatBuffer, floatBuffer2);
                        synchronized (cVar) {
                            cVar.f43288b = true;
                        }
                        this.t.get();
                    } else {
                        if (this.v != 0 && System.currentTimeMillis() - this.v > HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD) {
                            Log.g(4, "VideoConsultationStreamingFilter", "Encoder stuck!");
                            this.v = 0L;
                        }
                        j(i2, floatBuffer, floatBuffer2);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        k();
        this.q = new int[5];
        this.r = new int[5];
        this.u = new c[5];
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        GLES20.glGenFramebuffers(5, this.q, 0);
        GLES20.glGenTextures(5, this.r, 0);
        for (int i2 = 0; i2 < 5; i2++) {
            GLES20.glBindTexture(3553, this.r[i2]);
            GLES20.glTexImage2D(3553, 0, 6408, 368, Camera.DEFAULT_PREVIEW_WIDTH, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindFramebuffer(36160, this.q[i2]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.r[i2], 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, iArr[0]);
            this.u[i2] = new c(this.q[i2], this.r[i2]);
        }
    }
}

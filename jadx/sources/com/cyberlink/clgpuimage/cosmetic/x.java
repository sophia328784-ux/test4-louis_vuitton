package com.cyberlink.clgpuimage.cosmetic;

import android.graphics.PointF;
import android.opengl.GLES20;
import com.cyberlink.clgpuimage.GPUImageFilter;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.util.TextureRotationUtil;
import defpackage.fc;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends GPUImageFilter {
    public int A;
    public ArrayList o;
    public int p = 90;
    public int q = 90;
    public final CLMakeupLiveFilter.LiveDynamicRangeMetadata r = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
    public final b s = new b();
    public final CLMakeupLiveHairDyeFilter.HairDyeData t = new CLMakeupLiveHairDyeFilter.HairDyeData();
    public int[] u = new int[2];
    public int[] v = new int[2];
    public final FloatBuffer w;
    public final FloatBuffer x;
    public int y;
    public int z;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25826a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25827b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f25828c;
        public final CLMakeupLiveFilter.LiveDynamicRangeMetadata d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final b f25829e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CLMakeupLiveHairDyeFilter.HairDyeData f25830f;

        public a() {
            new ArrayList();
            this.d = new CLMakeupLiveFilter.LiveDynamicRangeMetadata();
            this.f25829e = new b();
            this.f25830f = new CLMakeupLiveHairDyeFilter.HairDyeData();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PointF f25831a = new PointF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PointF f25832b = new PointF();

        public final void a(b bVar) {
            bVar.getClass();
            PointF pointF = bVar.f25831a;
            float f2 = pointF.x;
            PointF pointF2 = this.f25831a;
            pointF2.x = f2;
            pointF2.y = pointF.y;
            PointF pointF3 = bVar.f25832b;
            float f3 = pointF3.x;
            PointF pointF4 = this.f25832b;
            pointF4.x = f3;
            pointF4.y = pointF3.y;
        }
    }

    public x() {
        float[] fArr = GPUImageRenderer.M;
        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(32));
        this.w = floatBufferV;
        floatBufferV.put(fArr).position(0);
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        float[] fArr2 = TextureRotationUtil.f25839a;
        floatBufferAsFloatBuffer.put(fArr2).position(0);
        FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect(32));
        this.x = floatBufferV2;
        floatBufferV2.put(fArr2).position(0);
        this.o = new ArrayList();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
    }

    public final a j() {
        a aVar = new a();
        aVar.f25826a = this.y;
        aVar.f25827b = this.z;
        new ArrayList(this.o);
        aVar.d.Copy(this.r);
        aVar.f25829e.a(this.s);
        aVar.f25830f.Copy(this.t);
        int i2 = this.y;
        int i3 = this.z;
        aVar.f25828c = new int[i2 * i3];
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((i2 * i3) << 2);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        byteBufferAllocateDirect.position(0);
        GLES20.glBindFramebuffer(36160, this.A);
        GLES20.glReadPixels(0, 0, this.y, this.z, 6408, 5121, byteBufferAllocateDirect);
        byteBufferAllocateDirect.asIntBuffer().get(aVar.f25828c);
        for (int i4 = 0; i4 < this.y * this.z; i4++) {
            int[] iArr = aVar.f25828c;
            int i5 = iArr[i4];
            iArr[i4] = ((i5 >> 16) & 255) | ((-16711936) & i5) | ((i5 & 255) << 16);
        }
        return aVar;
    }

    public final void k() {
        int[] iArr = this.v;
        if (iArr != null) {
            GLES20.glDeleteTextures(iArr.length, iArr, 0);
            this.v = null;
        }
        int[] iArr2 = this.u;
        if (iArr2 != null) {
            GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
            this.u = null;
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        k();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        int i3;
        float[] fArr;
        GLES20.glUseProgram(this.mGLProgId);
        f();
        if (isInitialized()) {
            GLES20.glFinish();
            IntBuffer intBufferAllocate = IntBuffer.allocate(1);
            GLES20.glGetIntegerv(36006, intBufferAllocate);
            IntBuffer intBufferAllocate2 = IntBuffer.allocate(4);
            GLES20.glGetIntegerv(2978, intBufferAllocate2);
            k();
            int i4 = this.p;
            if (i4 == 90 || i4 == 270) {
                this.y = this.g;
                i3 = this.f25446h;
            } else {
                this.y = this.f25446h;
                i3 = this.g;
            }
            this.z = i3;
            int i5 = this.y;
            int i6 = this.z;
            int[] iArr = new int[1];
            this.u = iArr;
            this.v = new int[1];
            GLES20.glGenFramebuffers(1, iArr, 0);
            GLES20.glGenTextures(1, this.v, 0);
            GLES20.glBindTexture(3553, this.v[0]);
            GLES20.glTexImage2D(3553, 0, 6408, i5, i6, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindFramebuffer(36160, this.u[0]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.v[0], 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, 0);
            this.A = this.u[0];
            GLES20.glBindFramebuffer(36160, intBufferAllocate.get(0));
            GLES20.glViewport(intBufferAllocate2.get(0), intBufferAllocate2.get(1), intBufferAllocate2.get(2), intBufferAllocate2.get(3));
            GLES20.glBindTexture(3553, 0);
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
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glDisableVertexAttribArray(this.f25445f);
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) this.w);
            GLES20.glEnableVertexAttribArray(this.d);
            FloatBuffer floatBuffer3 = this.x;
            floatBuffer3.clear();
            int i7 = this.p;
            int i8 = this.q;
            int i9 = (i8 + 90) % 360;
            float[] fArr2 = TextureRotationUtil.f25839a;
            if (i7 == i9) {
                fArr = new float[]{fArr2[4], fArr2[5], fArr2[0], fArr2[1], fArr2[6], fArr2[7], fArr2[2], fArr2[3]};
            } else if (i7 == (i8 + Sink.ORIENTATION_180) % 360) {
                fArr = new float[]{fArr2[6], fArr2[7], fArr2[4], fArr2[5], fArr2[2], fArr2[3], fArr2[0], fArr2[1]};
            } else {
                fArr = i7 == (i8 + Sink.ORIENTATION_270) % 360 ? new float[]{fArr2[2], fArr2[3], fArr2[6], fArr2[7], fArr2[0], fArr2[1], fArr2[4], fArr2[5]} : new float[]{fArr2[0], fArr2[1], fArr2[2], fArr2[3], fArr2[4], fArr2[5], fArr2[6], fArr2[7]};
            }
            floatBuffer3.put(new float[]{fArr[4], fArr[5], fArr[6], fArr[7], fArr[0], fArr[1], fArr[2], fArr[3]});
            floatBuffer3.position(0);
            GLES20.glVertexAttribPointer(this.f25445f, 2, 5126, false, 0, (Buffer) this.x);
            GLES20.glEnableVertexAttribArray(this.f25445f);
            IntBuffer intBufferAllocate3 = IntBuffer.allocate(1);
            GLES20.glGetIntegerv(36006, intBufferAllocate3);
            IntBuffer intBufferAllocate4 = IntBuffer.allocate(4);
            GLES20.glGetIntegerv(2978, intBufferAllocate4);
            GLES20.glBindFramebuffer(36160, this.A);
            GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            GLES20.glViewport(0, 0, this.y, this.z);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glDisableVertexAttribArray(this.f25445f);
            GLES20.glBindFramebuffer(36160, intBufferAllocate3.get(0));
            GLES20.glViewport(intBufferAllocate4.get(0), intBufferAllocate4.get(1), intBufferAllocate4.get(2), intBufferAllocate4.get(3));
            GLES20.glBindTexture(3553, 0);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
    }
}

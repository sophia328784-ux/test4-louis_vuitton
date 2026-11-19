package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLiveDecode;
import com.cyberlink.clgpuimage.GPUImageFilter;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class k extends GPUImageFilter {
    public static final char[] v = {137, 139, 254, 252, 242, 140, 242, 136, 247, 232, 246, 254, 253, 242, 142, 246, 137, 232, 255, 245, 136, 250, 141, 162, 194, 143, 250, 139, 130, 242, 247, 240, 232, 143, 254, 252, 169, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 162, 194, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 140, 250, 246, 137, 245, 254, 139, 169, 187, 232, 254, 129, 137, 136, 140, 142, 139, 254, 248, 141, 250, 251, 245, 254, 162, 194, 142, 247, 242, 255, 136, 139, 246, 232, 242, 247, 141, 232, 137, 136, 140, 242, 141, 242, 143, 254, 248, 254, 129, 137, 136, 140, 142, 139, 254, 162, 194, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 251, 250, 140, 254, 248, 143, 250, 245, 142, 254, 232, 164, 232, 151, 149, 151, 168, 162, 194, 252, 136, 247, 140, 141, 232, 255, 245, 136, 250, 141, 232, 139, 250, 141, 242, 136, 248, 139, 250, 247, 240, 254, 232, 164, 232, 168, 149, 170, 172, 162, 194, 194, 143, 136, 242, 253, 232, 246, 250, 242, 247, 159, 144, 194, 132, 194, 143, 254, 252, 171, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 242, 247, 137, 142, 141, 176, 246, 250, 240, 254, 237, 254, 129, 141, 142, 139, 254, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 162, 194, 143, 254, 252, 170, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 245, 136, 139, 149, 139, 240, 251, 162, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 140, 139, 252, 248, 252, 136, 245, 136, 139, 162, 194, 143, 254, 252, 169, 232, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 232, 164, 232, 143, 254, 252, 169, 159, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 149, 139, 232, 145, 232, 169, 172, 172, 149, 151, 232, 146, 232, 151, 149, 172, 144, 232, 150, 232, 169, 172, 173, 149, 151, 147, 232, 151, 149, 172, 144, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 139, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 129, 137, 136, 140, 142, 139, 254, 248, 141, 250, 251, 245, 254, 147, 232, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 149, 240, 232, 145, 232, 169, 172, 172, 149, 151, 232, 146, 232, 151, 149, 172, 144, 232, 150, 232, 169, 172, 173, 149, 151, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 240, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 129, 137, 136, 140, 142, 139, 254, 248, 141, 250, 251, 245, 254, 147, 232, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 149, 129, 232, 164, 232, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 149, 251, 232, 145, 232, 169, 172, 172, 149, 151, 232, 146, 232, 151, 149, 172, 144, 232, 150, 232, 169, 172, 173, 149, 151, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 149, 251, 232, 164, 232, 141, 254, 129, 141, 142, 139, 254, 169, 187, 159, 254, 129, 137, 136, 140, 142, 139, 254, 248, 141, 250, 251, 245, 254, 147, 232, 141, 250, 251, 245, 254, 248, 252, 136, 136, 139, 253, 242, 247, 250, 141, 254, 144, 149, 250, 162, 194, 194, 242, 255, 232, 159, 137, 136, 140, 242, 141, 242, 143, 254, 248, 254, 129, 137, 136, 140, 142, 139, 254, 232, 164, 164, 232, 168, 144, 194, 132, 194, 143, 254, 252, 170, 232, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 232, 164, 232, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 146, 232, 251, 250, 140, 254, 248, 143, 250, 245, 142, 254, 144, 232, 150, 232, 159, 140, 139, 252, 248, 252, 136, 245, 136, 139, 232, 146, 232, 251, 250, 140, 254, 248, 143, 250, 245, 142, 254, 144, 162, 194, 255, 245, 136, 250, 141, 232, 246, 250, 129, 248, 139, 250, 141, 242, 136, 232, 164, 232, 246, 242, 247, 159, 246, 242, 247, 159, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 149, 139, 147, 232, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 149, 240, 144, 147, 232, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 149, 251, 144, 232, 145, 232, 139, 250, 141, 242, 136, 248, 139, 250, 247, 240, 254, 162, 194, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 232, 164, 232, 246, 242, 247, 159, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 147, 232, 143, 254, 252, 170, 159, 246, 250, 129, 248, 139, 250, 141, 242, 136, 144, 144, 162, 194, 143, 254, 252, 170, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 169, 232, 164, 232, 159, 
    140, 139, 252, 248, 252, 136, 245, 136, 139, 232, 146, 232, 251, 250, 140, 254, 248, 143, 250, 245, 142, 254, 144, 232, 145, 232, 252, 136, 245, 136, 139, 248, 139, 250, 141, 242, 136, 232, 148, 232, 251, 250, 140, 254, 248, 143, 250, 245, 142, 254, 162, 194, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 164, 232, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 232, 146, 232, 253, 140, 141, 248, 252, 136, 245, 136, 139, 169, 144, 232, 145, 232, 151, 149, 172, 162, 194, 134, 194, 240, 245, 248, 189, 139, 250, 240, 186, 136, 245, 136, 139, 232, 164, 232, 143, 254, 252, 171, 159, 253, 140, 141, 248, 252, 136, 245, 136, 139, 147, 232, 141, 254, 129, 141, 142, 139, 254, 186, 136, 245, 136, 139, 149, 250, 144, 162, 194, 134, 232, 194};
    public float o;
    public int p;
    public int q;
    public int r;
    public final Object s;
    public boolean t;
    public final ByteBuffer u;

    public k() {
        super(GPUImageFilter.NO_FILTER_VERTEX_SHADER, CLMakeupLiveDecode.a(v));
        this.q = -1;
        this.s = new Object();
        this.u = ByteBuffer.allocate(256);
        this.o = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static float j(float f2, float f3) {
        if (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return f2;
        }
        float fPow = f2 * ((float) Math.pow(2.0d, f3));
        return ((((1.0f - ((float) Math.exp(((double) fPow) * (-4.0d)))) / (1.0f - ((float) Math.exp(-4.0d)))) - fPow) * (f3 < 4.0f ? f3 / 4.0f : 1.0f)) + fPow;
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void d() {
        synchronized (this.s) {
            try {
                int i2 = this.q;
                if (i2 == -1) {
                    int[] iArr = new int[1];
                    GLES20.glGenTextures(1, iArr, 0);
                    int i3 = iArr[0];
                    this.q = i3;
                    GLES20.glBindTexture(3553, i3);
                    GLES20.glTexParameterf(3553, 10240, 9729.0f);
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                    GLES20.glTexImage2D(3553, 0, 6406, 256, 1, 0, 6406, 5121, this.u);
                } else {
                    GLES20.glBindTexture(3553, i2);
                    GLES20.glTexImage2D(3553, 0, 6406, 256, 1, 0, 6406, 5121, this.u);
                }
                if (this.q != -1) {
                    GLES20.glActiveTexture(33988);
                    GLES20.glBindTexture(3553, this.q);
                    GLES20.glUniform1i(this.r, 4);
                }
                boolean z = this.t;
                int i4 = this.p;
                if (z) {
                    GLES20.glUniform1i(i4, 1);
                } else {
                    GLES20.glUniform1i(i4, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        int i2 = this.q;
        if (i2 != -1) {
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            this.q = -1;
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDraw(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        GLES20.glUseProgram(this.mGLProgId);
        f();
        if (isInitialized()) {
            d();
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
            GLES20.glBindTexture(3553, 0);
        }
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.p = GLES20.glGetUniformLocation(getProgram(), "positive_exposure");
        this.r = GLES20.glGetUniformLocation(getProgram(), "exposure_table");
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInitialized() {
        boolean z;
        float f2;
        float fPow;
        float f3;
        float f4;
        double d;
        float fPow2;
        double d2;
        super.onInitialized();
        float f5 = -4.0f;
        float fMax = Math.max(-4.0f, Math.min(this.o, 4.0f));
        this.o = fMax;
        double d3 = fMax;
        double d4 = 2.0d;
        float fPow3 = (float) Math.pow(2.0d, d3);
        int i2 = (fMax > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : (fMax == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : -1));
        boolean z2 = i2 > 0;
        if (z2) {
            f4 = 0.65f;
            float f6 = 0.65f / fPow3;
            double d5 = -4.0d;
            if (fMax <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                z = z2;
                d2 = -4.0d;
                f2 = 1.0f;
            } else {
                float fPow4 = (float) Math.pow(2.0d, d3);
                float f7 = fMax * 0.25f;
                float f8 = fPow4 * (-4.0f);
                f2 = 1.0f;
                float fExp = 1.0f - ((float) Math.exp(-4.0d));
                int i3 = 0;
                while (true) {
                    if (i3 < 5) {
                        float fJ = j(f6, fMax) - 0.65f;
                        if (Math.abs(fJ) >= 1.0E-4f) {
                            d2 = d5;
                            z = z2;
                            float fExp2 = ((1.0f - f7) * fPow4) - (((((float) Math.exp(f8 * f6)) * f8) * f7) / fExp);
                            if (Math.abs(fExp2) < 1.0E-5f) {
                                break;
                            }
                            f6 -= fJ / fExp2;
                            i3++;
                            d5 = d2;
                            z2 = z;
                        }
                    }
                    z = z2;
                    d2 = d5;
                    break;
                }
                f4 = f6;
            }
            float fJ2 = j(f4, fMax);
            float f9 = 0.25f * fMax;
            float f10 = fPow3 * f5;
            float fExp3 = ((f2 - f9) * fPow3) - (((f10 * ((float) Math.exp(f10 * f4))) * f9) / (f2 - ((float) Math.exp(d2))));
            float f11 = f2 - f4;
            float f12 = f2 - fJ2;
            f3 = (f11 / f12) * fExp3;
            fPow = f12 / ((float) Math.pow(f11, f3));
        } else {
            f5 = -4.0f;
            i2 = i2;
            z = z2;
            f2 = 1.0f;
            fPow = 1.0f;
            f3 = 1.0f;
            f4 = 1.0f;
        }
        float[] fArr = new float[256];
        int i4 = 0;
        for (int i5 = 256; i4 < i5; i5 = 256) {
            float fExp4 = i4 * 0.003921569f;
            if (z) {
                fPow2 = fExp4 > f4 ? f2 - (((float) Math.pow(1.0d - ((double) fExp4), f3)) * fPow) : j(fExp4, fMax);
                d = d4;
                f3 = f3;
            } else {
                if (i2 >= 0) {
                    d = d4;
                } else {
                    float fPow5 = ((float) Math.pow(d4, d3)) * fExp4;
                    d = d4;
                    fExp4 = (((((((float) Math.exp(((double) fExp4) * d)) - f2) / (((float) Math.exp(d)) - f2)) * fPow5) - fPow5) * (fMax > f5 ? fMax / f5 : f2)) + fPow5;
                }
                fPow2 = fExp4;
            }
            fArr[i4] = fPow2 * 255.0f;
            i4++;
            f3 = f3;
            d4 = d;
        }
        if (z) {
            int i6 = 255;
            while (true) {
                if (i6 <= 0) {
                    i6 = 0;
                    break;
                } else if (fArr[i6] - fArr[i6 - 1] > 3.0f) {
                    break;
                } else {
                    i6--;
                }
            }
            if (i6 > 0) {
                float f13 = fArr[i6];
                for (int i7 = i6 - 1; i7 >= 0; i7--) {
                    fArr[i7] = ((i7 - i6) * 3.0f) + f13;
                }
            }
        }
        synchronized (this.s) {
            try {
                this.u.clear();
                int i8 = 0;
                this.u.position(0);
                this.t = z;
                int i9 = 0;
                while (i9 < 256) {
                    this.u.put((byte) Math.min(Math.max(Math.round(fArr[i9]), i8), 255));
                    i9++;
                    i8 = 0;
                }
                this.u.position(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

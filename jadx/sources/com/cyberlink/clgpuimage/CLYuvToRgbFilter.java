package com.cyberlink.clgpuimage;

import android.opengl.GLES20;
import com.perfectcorp.perfectlib.gpuimage.GLImageBlender;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class CLYuvToRgbFilter extends GPUImageFilter {
    public int o;
    public int p;
    public int[] q;
    public int[] r;
    public int s;
    public final DeveloperModeLabelFilter t;
    public final int[] u;

    /* JADX INFO: loaded from: classes3.dex */
    public static class DeveloperModeLabelFilter extends GPUImageFilter implements GLImageBlender.Renderer {
        public static final DeveloperModeLabelFilter p = new AnonymousClass1();
        public final GLImageBlender.DeveloperModeLabel o = new GLImageBlender.DeveloperModeLabel();

        /* JADX INFO: renamed from: com.cyberlink.clgpuimage.CLYuvToRgbFilter$DeveloperModeLabelFilter$1, reason: invalid class name */
        class AnonymousClass1 extends DeveloperModeLabelFilter {
            @Override // com.cyberlink.clgpuimage.GPUImageFilter, com.perfectcorp.perfectlib.gpuimage.GLImageBlender.Renderer
            public final void c(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
            }

            @Override // com.cyberlink.clgpuimage.CLYuvToRgbFilter.DeveloperModeLabelFilter
            public final void j() {
            }

            @Override // com.cyberlink.clgpuimage.CLYuvToRgbFilter.DeveloperModeLabelFilter, com.cyberlink.clgpuimage.GPUImageFilter
            public final void onDestroy() {
            }

            @Override // com.cyberlink.clgpuimage.CLYuvToRgbFilter.DeveloperModeLabelFilter, com.cyberlink.clgpuimage.GPUImageFilter
            public final void onInit() {
            }

            @Override // com.cyberlink.clgpuimage.CLYuvToRgbFilter.DeveloperModeLabelFilter, com.cyberlink.clgpuimage.GPUImageFilter
            public final void onOutputSizeChanged(int i2, int i3) {
            }
        }

        public void j() {
            this.o.b(this);
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public void onDestroy() {
            this.o.a();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public void onInit() {
            super.onInit();
            this.o.c();
        }

        @Override // com.cyberlink.clgpuimage.GPUImageFilter
        public void onOutputSizeChanged(int i2, int i3) {
            float f2;
            float f3;
            GLImageBlender.DeveloperModeLabel developerModeLabel = this.o;
            FloatBuffer floatBuffer = developerModeLabel.f40171b;
            developerModeLabel.f40173e = i2;
            developerModeLabel.f40174f = i3;
            if (i2 == 0 || i3 == 0) {
                return;
            }
            floatBuffer.clear();
            int i4 = developerModeLabel.f40173e;
            int i5 = developerModeLabel.f40174f;
            if (i4 < i5) {
                f2 = (((i4 * 0.63f) / 7.0f) * 2.0f) / i5;
                f3 = 0.37f;
            } else {
                float f4 = i5;
                float f5 = 0.63f * f4;
                float f6 = i4;
                float f7 = (f6 - f5) / f6;
                f2 = ((f5 / 7.0f) * 2.0f) / f4;
                f3 = f7;
            }
            float f8 = f3 - 1.0f;
            float f9 = 1.0f - f3;
            float f10 = (1.7f - f2) - 1.0f;
            floatBuffer.put(new float[]{f8, 0.7f, f9, 0.7f, f8, f10, f9, f10}).position(0);
        }
    }

    public CLYuvToRgbFilter() {
        super("attribute vec4 position; \nattribute vec2 inputTextureCoordinate; \n \nvarying vec2 texture_coordinate; \n \nvoid main() \n{ \n    gl_Position = position; \n    texture_coordinate = inputTextureCoordinate; \n} \n", "precision mediump float; \n \nvarying vec2 texture_coordinate; \n \nuniform sampler2D inputImageTexture; \nuniform sampler2D inputImageTexture2; \nuniform int isHD; \n \nconst mat3 yuv2rgb_forHD = mat3( \n        1,        1,         1, \n        0,       -0.343,     1.765, \n        1.400,   -0.711,     0 \n        ); \n \nconst mat3 yuv2rgb_forSD = mat3( \n        1,        1,         1, \n        0,       -0.344,     1.772, \n        1.402,   -0.714,     0 \n        ); \n \nvoid main() \n{ \n    vec3 yuv; \n    yuv.x = texture2D(inputImageTexture, texture_coordinate).r; \n    yuv.yz = texture2D(inputImageTexture2, texture_coordinate).ar; \n    vec3 rgb; \n    if (isHD == 1) \n        rgb = yuv2rgb_forHD * (yuv - vec3(0.0, 0.5, 0.5)); \n    else \n        rgb = yuv2rgb_forSD * (yuv - vec3(0.0, 0.5, 0.5)); \n    gl_FragColor = vec4(rgb, 1.0); \n} \n");
        this.q = null;
        this.r = null;
        this.s = 1;
        this.t = GPUImageRenderer.O ? new DeveloperModeLabelFilter() : DeveloperModeLabelFilter.p;
        this.u = new int[1];
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onDestroy() {
        this.t.destroy();
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
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onInit() {
        super.onInit();
        this.o = GLES20.glGetUniformLocation(getProgram(), "inputImageTexture2");
        this.p = GLES20.glGetUniformLocation(getProgram(), "isHD");
        this.q = new int[1];
        this.r = new int[1];
        this.t.onInit();
    }

    @Override // com.cyberlink.clgpuimage.GPUImageFilter
    public final void onOutputSizeChanged(int i2, int i3) {
        this.g = i2;
        this.f25446h = i3;
        if (this.q != null) {
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
        }
        this.q = new int[1];
        this.r = new int[1];
        this.t.onOutputSizeChanged(i2, i3);
        GLES20.glGenFramebuffers(1, this.q, 0);
        GLES20.glGenTextures(1, this.r, 0);
        GLES20.glBindTexture(3553, this.r[0]);
        GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindFramebuffer(36160, this.q[0]);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.r[0], 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glBindFramebuffer(36160, 0);
    }
}

package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.util.TextureAlignmentUtil;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes2.dex */
final class ag implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Buffer f25757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f25758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ int f25759c;
    private /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ TextureAlignmentUtil.AlignMode f25760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ GPUImageBackgroundFilter f25761f;

    public ag(GPUImageBackgroundFilter gPUImageBackgroundFilter, Buffer buffer, int i2, int i3, boolean z, TextureAlignmentUtil.AlignMode alignMode) {
        this.f25761f = gPUImageBackgroundFilter;
        this.f25757a = buffer;
        this.f25758b = i2;
        this.f25759c = i3;
        this.d = z;
        this.f25760e = alignMode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.f25761f;
        boolean z = gPUImageBackgroundFilter.K;
        gPUImageBackgroundFilter.L = true;
        if (this.f25761f.y == -1) {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.f25761f.y = iArr[0];
        }
        GLES20.glBindTexture(3553, this.f25761f.y);
        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = this.f25761f;
        int i3 = gPUImageBackgroundFilter2.Y;
        int i4 = this.f25758b;
        if (i3 == i4) {
            int i5 = gPUImageBackgroundFilter2.X;
            i2 = i4;
            int i6 = this.f25759c;
            if (i5 == i6) {
                GLES20.glTexSubImage2D(3553, 0, 0, 0, i6, i2, 6408, 5121, this.f25757a.rewind());
            }
            GPUImageBackgroundFilter gPUImageBackgroundFilter3 = this.f25761f;
            gPUImageBackgroundFilter3.X = this.f25759c;
            gPUImageBackgroundFilter3.Y = this.f25758b;
            gPUImageBackgroundFilter3.P = this.d;
            gPUImageBackgroundFilter3.k(0, this.f25760e);
        }
        i2 = i4;
        GLES20.glTexImage2D(3553, 0, 6408, this.f25759c, i2, 0, 6408, 5121, this.f25757a.rewind());
        GPUImageBackgroundFilter gPUImageBackgroundFilter4 = this.f25761f;
        gPUImageBackgroundFilter4.X = this.f25759c;
        gPUImageBackgroundFilter4.Y = this.f25758b;
        gPUImageBackgroundFilter4.P = this.d;
        gPUImageBackgroundFilter4.k(0, this.f25760e);
    }
}

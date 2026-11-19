package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.util.TextureAlignmentUtil;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes2.dex */
final class ah implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Buffer f25762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f25763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ int f25764c;
    private /* synthetic */ TextureAlignmentUtil.AlignMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ boolean f25765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ GPUImageBackgroundFilter f25766f;

    public ah(GPUImageBackgroundFilter gPUImageBackgroundFilter, Buffer buffer, int i2, int i3, TextureAlignmentUtil.AlignMode alignMode, boolean z) {
        this.f25766f = gPUImageBackgroundFilter;
        this.f25762a = buffer;
        this.f25763b = i2;
        this.f25764c = i3;
        this.d = alignMode;
        this.f25765e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.f25766f;
        boolean z = gPUImageBackgroundFilter.K;
        gPUImageBackgroundFilter.M = true;
        if (this.f25766f.z == -1) {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.f25766f.z = iArr[0];
        }
        GLES20.glBindTexture(3553, this.f25766f.z);
        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = this.f25766f;
        int i3 = gPUImageBackgroundFilter2.a0;
        int i4 = this.f25763b;
        if (i3 == i4) {
            int i5 = gPUImageBackgroundFilter2.Z;
            i2 = i4;
            int i6 = this.f25764c;
            if (i5 == i6) {
                GLES20.glTexSubImage2D(3553, 0, 0, 0, i6, i2, 6408, 5121, this.f25762a.rewind());
            }
            GPUImageBackgroundFilter gPUImageBackgroundFilter3 = this.f25766f;
            gPUImageBackgroundFilter3.Z = this.f25764c;
            gPUImageBackgroundFilter3.a0 = this.f25763b;
            TextureAlignmentUtil.AlignMode alignMode = this.d;
            gPUImageBackgroundFilter3.b0 = alignMode;
            gPUImageBackgroundFilter3.Q = this.f25765e;
            gPUImageBackgroundFilter3.k(1, alignMode);
        }
        i2 = i4;
        GLES20.glTexImage2D(3553, 0, 6408, this.f25764c, i2, 0, 6408, 5121, this.f25762a.rewind());
        GPUImageBackgroundFilter gPUImageBackgroundFilter4 = this.f25766f;
        gPUImageBackgroundFilter4.Z = this.f25764c;
        gPUImageBackgroundFilter4.a0 = this.f25763b;
        TextureAlignmentUtil.AlignMode alignMode2 = this.d;
        gPUImageBackgroundFilter4.b0 = alignMode2;
        gPUImageBackgroundFilter4.Q = this.f25765e;
        gPUImageBackgroundFilter4.k(1, alignMode2);
    }
}

package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class ai implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f25767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f25768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ ByteBuffer f25769c;
    private /* synthetic */ GPUImageBackgroundFilter d;

    public ai(GPUImageBackgroundFilter gPUImageBackgroundFilter, int i2, int i3, ByteBuffer byteBuffer) {
        this.d = gPUImageBackgroundFilter;
        this.f25767a = i2;
        this.f25768b = i3;
        this.f25769c = byteBuffer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        if (this.d.B == -1) {
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            this.d.B = iArr[0];
        }
        GLES20.glBindTexture(3553, this.d.B);
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.d;
        int i3 = gPUImageBackgroundFilter.W;
        int i4 = this.f25767a;
        if (i3 == i4) {
            int i5 = gPUImageBackgroundFilter.V;
            i2 = i4;
            int i6 = this.f25768b;
            if (i5 == i6) {
                GLES20.glTexSubImage2D(3553, 0, 0, 0, i6, i2, 6409, 5121, this.f25769c);
                return;
            }
        } else {
            i2 = i4;
        }
        gPUImageBackgroundFilter.W = i2;
        int i7 = this.f25768b;
        gPUImageBackgroundFilter.V = i7;
        GLES20.glTexImage2D(3553, 0, 6409, i7, i2, 0, 6409, 5121, this.f25769c);
    }
}

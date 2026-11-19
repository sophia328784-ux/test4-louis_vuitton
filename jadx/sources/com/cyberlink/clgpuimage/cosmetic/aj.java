package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
final class aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ GPUImageBackgroundFilter f25770a;

    public aj(GPUImageBackgroundFilter gPUImageBackgroundFilter) {
        this.f25770a = gPUImageBackgroundFilter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glDeleteTextures(1, new int[]{this.f25770a.y}, 0);
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.f25770a;
        gPUImageBackgroundFilter.y = -1;
        gPUImageBackgroundFilter.L = false;
        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = this.f25770a;
        boolean z = gPUImageBackgroundFilter2.K;
        gPUImageBackgroundFilter2.X = 0;
        gPUImageBackgroundFilter2.Y = 0;
    }
}

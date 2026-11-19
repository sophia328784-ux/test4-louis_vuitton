package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
final class ak implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ GPUImageBackgroundFilter f25771a;

    public ak(GPUImageBackgroundFilter gPUImageBackgroundFilter) {
        this.f25771a = gPUImageBackgroundFilter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glDeleteTextures(1, new int[]{this.f25771a.z}, 0);
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.f25771a;
        gPUImageBackgroundFilter.z = -1;
        gPUImageBackgroundFilter.M = false;
        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = this.f25771a;
        boolean z = gPUImageBackgroundFilter2.K;
        gPUImageBackgroundFilter2.Z = 0;
        gPUImageBackgroundFilter2.a0 = 0;
    }
}

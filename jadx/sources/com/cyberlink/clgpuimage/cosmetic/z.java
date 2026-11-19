package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float[] f25835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveHairDyeFilter f25836b;

    public z(CLMakeupLiveHairDyeFilter cLMakeupLiveHairDyeFilter, float[] fArr) {
        this.f25836b = cLMakeupLiveHairDyeFilter;
        this.f25835a = fArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glUniform1fv(this.f25836b.N, 4, FloatBuffer.wrap(this.f25835a));
    }
}

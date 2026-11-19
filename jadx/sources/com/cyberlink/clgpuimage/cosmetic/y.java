package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float[] f25833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveHairDyeFilter f25834b;

    public y(CLMakeupLiveHairDyeFilter cLMakeupLiveHairDyeFilter, float[] fArr) {
        this.f25834b = cLMakeupLiveHairDyeFilter;
        this.f25833a = fArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glUniform3fv(this.f25834b.M, 4, FloatBuffer.wrap(this.f25833a));
    }
}

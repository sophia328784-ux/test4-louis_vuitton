package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class aa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ float[] f25736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveHairDyeFilter f25737b;

    public aa(CLMakeupLiveHairDyeFilter cLMakeupLiveHairDyeFilter, float[] fArr) {
        this.f25737b = cLMakeupLiveHairDyeFilter;
        this.f25736a = fArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glUniform1fv(this.f25737b.O, 4, FloatBuffer.wrap(this.f25736a));
    }
}

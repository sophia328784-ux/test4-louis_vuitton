package com.google.android.filament.gltfio;

import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public class Animator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28626a;

    private static native void nApplyAnimation(long j2, int i2, float f2);

    private static native int nGetAnimationCount(long j2);

    private static native float nGetAnimationDuration(long j2, int i2);

    private static native void nUpdateBoneMatrices(long j2);

    public final void a(float f2) {
        nApplyAnimation(d(), 0, f2);
    }

    public final int b() {
        return nGetAnimationCount(d());
    }

    public final float c() {
        return nGetAnimationDuration(d(), 0);
    }

    public final long d() {
        long j2 = this.f28626a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Using Animator on destroyed asset");
        return 0L;
    }

    public final void e() {
        nUpdateBoneMatrices(d());
    }
}

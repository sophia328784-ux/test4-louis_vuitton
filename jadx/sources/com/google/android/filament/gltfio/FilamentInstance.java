package com.google.android.filament.gltfio;

/* JADX INFO: loaded from: classes2.dex */
public class FilamentInstance {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Animator f28632b;

    private static native long nGetAnimator(long j2);

    public final Animator a() {
        Animator animator = this.f28632b;
        if (animator != null) {
            return animator;
        }
        long jNGetAnimator = nGetAnimator(this.f28631a);
        Animator animator2 = new Animator();
        animator2.f28626a = jNGetAnimator;
        this.f28632b = animator2;
        return animator2;
    }
}

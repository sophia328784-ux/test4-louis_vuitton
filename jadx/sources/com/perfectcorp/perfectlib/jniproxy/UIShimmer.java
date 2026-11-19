package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class UIShimmer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40414b;

    public UIShimmer(int i2, int i3, int i4, int i5) {
        long jNew_UIShimmer = UIMakeupJNI.new_UIShimmer(i2, i3, i4, i5);
        this.f40414b = true;
        this.f40413a = jNew_UIShimmer;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j2 = this.f40413a;
                if (j2 != 0) {
                    if (this.f40414b) {
                        this.f40414b = false;
                        UIMakeupJNI.delete_UIShimmer(j2);
                    }
                    this.f40413a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

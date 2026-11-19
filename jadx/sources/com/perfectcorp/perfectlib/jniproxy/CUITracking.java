package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUITracking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40403b;

    public CUITracking(String str) {
        long jNew_CUITracking = UITrackingJNI.new_CUITracking(str);
        this.f40403b = true;
        this.f40402a = jNew_CUITracking;
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40402a;
            if (j2 != 0) {
                if (this.f40403b) {
                    this.f40403b = false;
                    UITrackingJNI.delete_CUITracking(j2);
                }
                this.f40402a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }
}

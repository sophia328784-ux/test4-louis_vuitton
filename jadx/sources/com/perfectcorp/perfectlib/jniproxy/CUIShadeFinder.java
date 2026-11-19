package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUIShadeFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40401b;

    public CUIShadeFinder(String str) {
        long jNew_CUIShadeFinder = UIShadeFinderJNI.new_CUIShadeFinder(str);
        this.f40401b = true;
        this.f40400a = jNew_CUIShadeFinder;
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40400a;
            if (j2 != 0) {
                if (this.f40401b) {
                    this.f40401b = false;
                    UIShadeFinderJNI.delete_CUIShadeFinder(j2);
                }
                this.f40400a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }
}

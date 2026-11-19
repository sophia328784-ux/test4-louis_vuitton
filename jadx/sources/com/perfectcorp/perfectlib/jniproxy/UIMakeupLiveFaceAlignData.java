package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class UIMakeupLiveFaceAlignData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40412b;

    public UIMakeupLiveFaceAlignData(int i2, int i3) {
        long jNew_UIMakeupLiveFaceAlignData = UITrackingJNI.new_UIMakeupLiveFaceAlignData(i2, i3);
        this.f40412b = true;
        this.f40411a = jNew_UIMakeupLiveFaceAlignData;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j2 = this.f40411a;
                if (j2 != 0) {
                    if (this.f40412b) {
                        this.f40412b = false;
                        UITrackingJNI.delete_UIMakeupLiveFaceAlignData(j2);
                    }
                    this.f40411a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

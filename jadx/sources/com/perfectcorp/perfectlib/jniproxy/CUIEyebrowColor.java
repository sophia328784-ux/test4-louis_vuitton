package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUIEyebrowColor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40393b;

    public CUIEyebrowColor(String str) {
        long jNew_CUIEyebrowColor = UIEyebrowColorJNI.new_CUIEyebrowColor(str);
        this.f40393b = true;
        this.f40392a = jNew_CUIEyebrowColor;
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40392a;
            if (j2 != 0) {
                if (this.f40393b) {
                    this.f40393b = false;
                    UIEyebrowColorJNI.delete_CUIEyebrowColor(j2);
                }
                this.f40392a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }
}

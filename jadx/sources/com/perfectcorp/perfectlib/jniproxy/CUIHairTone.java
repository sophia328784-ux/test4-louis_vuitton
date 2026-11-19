package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUIHairTone {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40397b;

    public CUIHairTone(String str) {
        long jNew_CUIHairTone = UIHairToneJNI.new_CUIHairTone(str);
        this.f40397b = true;
        this.f40396a = jNew_CUIHairTone;
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40396a;
            if (j2 != 0) {
                if (this.f40397b) {
                    this.f40397b = false;
                    UIHairToneJNI.delete_CUIHairTone(j2);
                }
                this.f40396a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }
}

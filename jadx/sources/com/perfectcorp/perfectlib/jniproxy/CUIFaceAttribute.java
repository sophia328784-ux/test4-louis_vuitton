package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUIFaceAttribute {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40395b;

    public CUIFaceAttribute(String str, String str2) {
        long jNew_CUIFaceAttribute = UIFaceAttributeJNI.new_CUIFaceAttribute(str, str2);
        this.f40395b = true;
        this.f40394a = jNew_CUIFaceAttribute;
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40394a;
            if (j2 != 0) {
                if (this.f40395b) {
                    this.f40395b = false;
                    UIFaceAttributeJNI.delete_CUIFaceAttribute(j2);
                }
                this.f40394a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }
}

package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CUIMakeupLive {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40399b;

    public CUIMakeupLive(String str) {
        long jNew_CUIMakeupLive = UIMakeupJNI.new_CUIMakeupLive(str);
        this.f40399b = true;
        this.f40398a = jNew_CUIMakeupLive;
    }

    public final boolean a(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_Get3DEyebrowModelVersion(this.f40398a, this, objArr);
    }

    public final boolean b(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_Get3DFaceartModelVersion(this.f40398a, this, objArr);
    }

    public final boolean c(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_GetBackgroundModelVersion(this.f40398a, this, objArr);
    }

    public final boolean d(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_GetFace3DPoseModelVersion(this.f40398a, this, objArr);
    }

    public final boolean e(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_GetHairColorModelVersion(this.f40398a, this, objArr);
    }

    public final boolean f(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_GetInternalModelVersion(this.f40398a, this, objArr);
    }

    public final void finalize() {
        m();
    }

    public final boolean g(Object[] objArr) {
        return UIMakeupJNI.CUIMakeupLive_GetInternalModelVersionLV(this.f40398a, this, objArr);
    }

    public final boolean h(String str) {
        return UIMakeupJNI.CUIMakeupLive_Set3DEyebrowModelPath(this.f40398a, this, str);
    }

    public final boolean i(String str) {
        return UIMakeupJNI.CUIMakeupLive_Set3DFaceartModelPath(this.f40398a, this, str);
    }

    public final boolean j(String str) {
        return UIMakeupJNI.CUIMakeupLive_SetBackgroundModelPath(this.f40398a, this, str);
    }

    public final boolean k(String str) {
        return UIMakeupJNI.CUIMakeupLive_SetFace3DPoseModelPath(this.f40398a, this, str);
    }

    public final boolean l(String str) {
        return UIMakeupJNI.CUIMakeupLive_SetHairColorModelPath(this.f40398a, this, str);
    }

    public final synchronized void m() {
        try {
            long j2 = this.f40398a;
            if (j2 != 0) {
                if (this.f40399b) {
                    this.f40399b = false;
                    UIMakeupJNI.delete_CUIMakeupLive(j2);
                }
                this.f40398a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}

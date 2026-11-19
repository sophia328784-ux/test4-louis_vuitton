package androidx.camera.core;

import android.view.Surface;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceRequest_Result extends SurfaceRequest.Result {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Surface f1878b;

    public AutoValue_SurfaceRequest_Result(int i2, Surface surface) {
        this.f1877a = i2;
        if (surface != null) {
            this.f1878b = surface;
        } else {
            r81.d("Null surface");
            throw null;
        }
    }

    @Override // androidx.camera.core.SurfaceRequest.Result
    public final int a() {
        return this.f1877a;
    }

    @Override // androidx.camera.core.SurfaceRequest.Result
    public final Surface b() {
        return this.f1878b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceRequest.Result)) {
            return false;
        }
        AutoValue_SurfaceRequest_Result autoValue_SurfaceRequest_Result = (AutoValue_SurfaceRequest_Result) ((SurfaceRequest.Result) obj);
        return this.f1877a == autoValue_SurfaceRequest_Result.f1877a && this.f1878b.equals(autoValue_SurfaceRequest_Result.f1878b);
    }

    public final int hashCode() {
        return this.f1878b.hashCode() ^ ((this.f1877a ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "Result{resultCode=" + this.f1877a + ", surface=" + this.f1878b + "}";
    }
}

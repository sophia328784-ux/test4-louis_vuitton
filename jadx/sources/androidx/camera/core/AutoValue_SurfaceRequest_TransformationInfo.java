package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceRequest_TransformationInfo extends SurfaceRequest.TransformationInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f1879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1881c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Matrix f1882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1883f;

    public AutoValue_SurfaceRequest_TransformationInfo(Rect rect, int i2, int i3, boolean z, Matrix matrix, boolean z2) {
        if (rect == null) {
            r81.d("Null getCropRect");
            throw null;
        }
        this.f1879a = rect;
        this.f1880b = i2;
        this.f1881c = i3;
        this.d = z;
        if (matrix == null) {
            r81.d("Null getSensorToBufferTransform");
            throw null;
        }
        this.f1882e = matrix;
        this.f1883f = z2;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final Rect a() {
        return this.f1879a;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final int b() {
        return this.f1880b;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final Matrix c() {
        return this.f1882e;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final int d() {
        return this.f1881c;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final boolean e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceRequest.TransformationInfo) {
            AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo = (AutoValue_SurfaceRequest_TransformationInfo) ((SurfaceRequest.TransformationInfo) obj);
            if (this.f1879a.equals(autoValue_SurfaceRequest_TransformationInfo.f1879a) && this.f1880b == autoValue_SurfaceRequest_TransformationInfo.f1880b && this.f1881c == autoValue_SurfaceRequest_TransformationInfo.f1881c && this.d == autoValue_SurfaceRequest_TransformationInfo.d && this.f1882e.equals(autoValue_SurfaceRequest_TransformationInfo.f1882e) && this.f1883f == autoValue_SurfaceRequest_TransformationInfo.f1883f) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfo
    public final boolean f() {
        return this.f1883f;
    }

    public final int hashCode() {
        return ((((((((((this.f1879a.hashCode() ^ 1000003) * 1000003) ^ this.f1880b) * 1000003) ^ this.f1881c) * 1000003) ^ (this.d ? 1231 : 1237)) * 1000003) ^ this.f1882e.hashCode()) * 1000003) ^ (this.f1883f ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransformationInfo{getCropRect=");
        sb.append(this.f1879a);
        sb.append(", getRotationDegrees=");
        sb.append(this.f1880b);
        sb.append(", getTargetRotation=");
        sb.append(this.f1881c);
        sb.append(", hasCameraTransform=");
        sb.append(this.d);
        sb.append(", getSensorToBufferTransform=");
        sb.append(this.f1882e);
        sb.append(", isMirroring=");
        return defpackage.a.p(sb, this.f1883f, "}");
    }
}

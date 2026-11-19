package androidx.camera.core;

import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.impl.CameraInternal;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceOutput_CameraInputInfo extends SurfaceOutput.CameraInputInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Size f1872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f1873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraInternal f1874c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1875e;

    public AutoValue_SurfaceOutput_CameraInputInfo(Size size, Rect rect, CameraInternal cameraInternal, int i2, boolean z) {
        if (size == null) {
            r81.d("Null inputSize");
            throw null;
        }
        this.f1872a = size;
        if (rect == null) {
            r81.d("Null inputCropRect");
            throw null;
        }
        this.f1873b = rect;
        this.f1874c = cameraInternal;
        this.d = i2;
        this.f1875e = z;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public final CameraInternal a() {
        return this.f1874c;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public final Rect b() {
        return this.f1873b;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public final Size c() {
        return this.f1872a;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public final boolean d() {
        return this.f1875e;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public final int e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceOutput.CameraInputInfo)) {
            return false;
        }
        SurfaceOutput.CameraInputInfo cameraInputInfo = (SurfaceOutput.CameraInputInfo) obj;
        if (!this.f1872a.equals(cameraInputInfo.c()) || !this.f1873b.equals(cameraInputInfo.b())) {
            return false;
        }
        CameraInternal cameraInternal = this.f1874c;
        if (cameraInternal == null) {
            if (cameraInputInfo.a() != null) {
                return false;
            }
        } else if (!cameraInternal.equals(cameraInputInfo.a())) {
            return false;
        }
        return this.d == cameraInputInfo.e() && this.f1875e == cameraInputInfo.d();
    }

    public final int hashCode() {
        int iHashCode = (((this.f1872a.hashCode() ^ 1000003) * 1000003) ^ this.f1873b.hashCode()) * 1000003;
        CameraInternal cameraInternal = this.f1874c;
        return (this.f1875e ? 1231 : 1237) ^ ((((iHashCode ^ (cameraInternal == null ? 0 : cameraInternal.hashCode())) * 1000003) ^ this.d) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CameraInputInfo{inputSize=");
        sb.append(this.f1872a);
        sb.append(", inputCropRect=");
        sb.append(this.f1873b);
        sb.append(", cameraInternal=");
        sb.append(this.f1874c);
        sb.append(", rotationDegrees=");
        sb.append(this.d);
        sb.append(", mirroring=");
        return defpackage.a.p(sb, this.f1875e, "}");
    }
}

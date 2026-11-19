package androidx.media3.common;

import android.view.Surface;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Surface f13945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13947c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f13948e;

    public SurfaceInfo(Surface surface, int i2, int i3, int i4, boolean z) {
        Preconditions.h(i4 == 0 || i4 == 90 || i4 == 180 || i4 == 270, "orientationDegrees must be 0, 90, 180, or 270");
        this.f13945a = surface;
        this.f13946b = i2;
        this.f13947c = i3;
        this.d = i4;
        this.f13948e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceInfo)) {
            return false;
        }
        SurfaceInfo surfaceInfo = (SurfaceInfo) obj;
        return this.f13946b == surfaceInfo.f13946b && this.f13947c == surfaceInfo.f13947c && this.d == surfaceInfo.d && this.f13948e == surfaceInfo.f13948e && this.f13945a.equals(surfaceInfo.f13945a);
    }

    public final int hashCode() {
        return (((((((this.f13945a.hashCode() * 31) + this.f13946b) * 31) + this.f13947c) * 31) + this.d) * 31) + (this.f13948e ? 1 : 0);
    }

    public SurfaceInfo(Surface surface, int i2, int i3, int i4) {
        this(surface, i2, i3, i4, false);
    }

    public SurfaceInfo(Surface surface, int i2, int i3) {
        this(surface, i2, i3, 0);
    }
}

package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.SurfaceEdge;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DualSurfaceProcessorNode_In extends DualSurfaceProcessorNode.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceEdge f2580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SurfaceEdge f2581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2582c;

    public AutoValue_DualSurfaceProcessorNode_In(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, ArrayList arrayList) {
        if (surfaceEdge == null) {
            r81.d("Null primarySurfaceEdge");
            throw null;
        }
        this.f2580a = surfaceEdge;
        if (surfaceEdge2 == null) {
            r81.d("Null secondarySurfaceEdge");
            throw null;
        }
        this.f2581b = surfaceEdge2;
        this.f2582c = arrayList;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public final List a() {
        return this.f2582c;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public final SurfaceEdge b() {
        return this.f2580a;
    }

    @Override // androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.In
    public final SurfaceEdge c() {
        return this.f2581b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DualSurfaceProcessorNode.In)) {
            return false;
        }
        DualSurfaceProcessorNode.In in = (DualSurfaceProcessorNode.In) obj;
        return this.f2580a.equals(in.b()) && this.f2581b.equals(in.c()) && this.f2582c.equals(in.a());
    }

    public final int hashCode() {
        return this.f2582c.hashCode() ^ ((((this.f2580a.hashCode() ^ 1000003) * 1000003) ^ this.f2581b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "In{primarySurfaceEdge=" + this.f2580a + ", secondarySurfaceEdge=" + this.f2581b + ", outConfigs=" + this.f2582c + "}";
    }
}

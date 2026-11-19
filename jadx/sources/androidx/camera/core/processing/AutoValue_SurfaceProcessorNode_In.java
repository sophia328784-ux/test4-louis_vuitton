package androidx.camera.core.processing;

import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceProcessorNode_In extends SurfaceProcessorNode.In {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceEdge f2529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2530b;

    public AutoValue_SurfaceProcessorNode_In(SurfaceEdge surfaceEdge, List list) {
        if (surfaceEdge == null) {
            r81.d("Null surfaceEdge");
            throw null;
        }
        this.f2529a = surfaceEdge;
        if (list != null) {
            this.f2530b = list;
        } else {
            r81.d("Null outConfigs");
            throw null;
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public final List a() {
        return this.f2530b;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    public final SurfaceEdge b() {
        return this.f2529a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceProcessorNode.In)) {
            return false;
        }
        SurfaceProcessorNode.In in = (SurfaceProcessorNode.In) obj;
        return this.f2529a.equals(in.b()) && this.f2530b.equals(in.a());
    }

    public final int hashCode() {
        return this.f2530b.hashCode() ^ ((this.f2529a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("In{surfaceEdge=");
        sb.append(this.f2529a);
        sb.append(", outConfigs=");
        return defpackage.a.o(sb, this.f2530b, "}");
    }
}

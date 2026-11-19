package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Scene;
import com.google.android.filament.VertexBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/MeshResources;", "", "", "entity", "Lcom/google/android/filament/VertexBuffer;", "vertexBuffer", "Lcom/google/android/filament/IndexBuffer;", "indexBuffer", "<init>", "(ILcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MeshResources {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f58513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VertexBuffer f58514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IndexBuffer f58515c;

    public MeshResources(int i2, VertexBuffer vertexBuffer, IndexBuffer indexBuffer) {
        vertexBuffer.getClass();
        indexBuffer.getClass();
        this.f58513a = i2;
        this.f58514b = vertexBuffer;
        this.f58515c = indexBuffer;
    }

    public final void a(ModelViewer modelViewer) {
        modelViewer.getClass();
        Scene scene = modelViewer.f58520h;
        int i2 = this.f58513a;
        scene.e(i2);
        Engine engine = modelViewer.f58516b;
        engine.n(i2);
        engine.w(this.f58514b);
        engine.p(this.f58515c);
        engine.f28537e.b(i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MeshResources)) {
            return false;
        }
        MeshResources meshResources = (MeshResources) obj;
        return this.f58513a == meshResources.f58513a && Intrinsics.c(this.f58514b, meshResources.f58514b) && Intrinsics.c(this.f58515c, meshResources.f58515c);
    }

    public final int hashCode() {
        return this.f58515c.hashCode() + ((this.f58514b.hashCode() + (Integer.hashCode(this.f58513a) * 31)) * 31);
    }

    public final String toString() {
        return "MeshResources(entity=" + this.f58513a + ", vertexBuffer=" + this.f58514b + ", indexBuffer=" + this.f58515c + ")";
    }
}

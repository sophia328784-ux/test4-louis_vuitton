package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/VertexUv;", "", "", "x", "y", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VertexUv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f58549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f58550b;

    public VertexUv(float f2, float f3) {
        this.f58549a = f2;
        this.f58550b = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VertexUv)) {
            return false;
        }
        VertexUv vertexUv = (VertexUv) obj;
        return Float.compare(this.f58549a, vertexUv.f58549a) == 0 && Float.compare(this.f58550b, vertexUv.f58550b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f58550b) + (Float.hashCode(this.f58549a) * 31);
    }

    public final String toString() {
        return "VertexUv(x=" + this.f58549a + ", y=" + this.f58550b + ")";
    }
}

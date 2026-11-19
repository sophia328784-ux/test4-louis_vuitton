package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import defpackage.d21;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Vertex;", "", "", "x", "y", "z", "<init>", "(FFF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Vertex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f58546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f58547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f58548c;

    public Vertex(float f2, float f3, float f4) {
        this.f58546a = f2;
        this.f58547b = f3;
        this.f58548c = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vertex)) {
            return false;
        }
        Vertex vertex = (Vertex) obj;
        return Float.compare(this.f58546a, vertex.f58546a) == 0 && Float.compare(this.f58547b, vertex.f58547b) == 0 && Float.compare(this.f58548c, vertex.f58548c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f58548c) + pq0.b(Float.hashCode(this.f58546a) * 31, 31, this.f58547b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Vertex(x=");
        sb.append(this.f58546a);
        sb.append(", y=");
        sb.append(this.f58547b);
        sb.append(", z=");
        return d21.e(this.f58548c, ")", sb);
    }
}

package com.batch.android.g0;

import java.io.Serializable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f23402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.h f23403c;
    private final d.f d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d.b f23404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d.a f23405f;

    /* JADX WARN: Multi-variable type inference failed */
    public f(List<? extends c> list, d.h hVar, d.f fVar, d.b bVar, d.a aVar) {
        list.getClass();
        fVar.getClass();
        bVar.getClass();
        this.f23402b = list;
        this.f23403c = hVar;
        this.d = fVar;
        this.f23404e = bVar;
        this.f23405f = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ f a(f fVar, List list, d.h hVar, d.f fVar2, d.b bVar, d.a aVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = fVar.f23402b;
        }
        if ((i2 & 2) != 0) {
            hVar = fVar.f23403c;
        }
        if ((i2 & 4) != 0) {
            fVar2 = fVar.d;
        }
        if ((i2 & 8) != 0) {
            bVar = fVar.f23404e;
        }
        if ((i2 & 16) != 0) {
            aVar = fVar.f23405f;
        }
        d.a aVar2 = aVar;
        d.f fVar3 = fVar2;
        return fVar.a(list, hVar, fVar3, bVar, aVar2);
    }

    public final d.h b() {
        return this.f23403c;
    }

    public final d.f c() {
        return this.d;
    }

    public final d.b d() {
        return this.f23404e;
    }

    public final d.a e() {
        return this.f23405f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.c(this.f23402b, fVar.f23402b) && Intrinsics.c(this.f23403c, fVar.f23403c) && Intrinsics.c(this.d, fVar.d) && Intrinsics.c(this.f23404e, fVar.f23404e) && Intrinsics.c(this.f23405f, fVar.f23405f);
    }

    public final d.h f() {
        return this.f23403c;
    }

    public final d.a g() {
        return this.f23405f;
    }

    public final List<c> h() {
        return this.f23402b;
    }

    public int hashCode() {
        int iHashCode = this.f23402b.hashCode() * 31;
        d.h hVar = this.f23403c;
        int iHashCode2 = (this.f23404e.hashCode() + ((this.d.hashCode() + ((iHashCode + (hVar == null ? 0 : hVar.hashCode())) * 31)) * 31)) * 31;
        d.a aVar = this.f23405f;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final d.f i() {
        return this.d;
    }

    public final d.b j() {
        return this.f23404e;
    }

    public String toString() {
        return "RootContainer(children=" + this.f23402b + ", backgroundColor=" + this.f23403c + ", margins=" + this.d + ", radius=" + this.f23404e + ", border=" + this.f23405f + ')';
    }

    public final f a(List<? extends c> list, d.h hVar, d.f fVar, d.b bVar, d.a aVar) {
        list.getClass();
        fVar.getClass();
        bVar.getClass();
        return new f(list, hVar, fVar, bVar, aVar);
    }

    public final List<c> a() {
        return this.f23402b;
    }
}

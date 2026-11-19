package com.perfectcorp.common.utility;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Triple<F, S, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f39436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f39437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f39438c;

    public Triple(F f2, S s, T t) {
        this.f39436a = f2;
        this.f39437b = s;
        this.f39438c = t;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Triple)) {
            return false;
        }
        Triple triple = (Triple) obj;
        return Objects.equals(triple.f39436a, this.f39436a) && Objects.equals(triple.f39437b, this.f39437b) && Objects.equals(triple.f39438c, this.f39438c);
    }

    public final int hashCode() {
        Object obj = this.f39436a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f39437b;
        int iHashCode2 = iHashCode ^ (obj2 == null ? 0 : obj2.hashCode());
        Object obj3 = this.f39438c;
        return iHashCode2 ^ (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Triple{");
        sb.append(this.f39436a);
        sb.append(", ");
        sb.append(this.f39437b);
        sb.append(", ");
        return defpackage.a.n(sb, this.f39438c, "}");
    }
}

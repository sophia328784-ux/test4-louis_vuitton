package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import defpackage.o60;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ApproximationBounds<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f74319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f74320b;

    public ApproximationBounds(T t, T t2) {
        this.f74319a = t;
        this.f74320b = t2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApproximationBounds)) {
            return false;
        }
        ApproximationBounds approximationBounds = (ApproximationBounds) obj;
        return Intrinsics.c(this.f74319a, approximationBounds.f74319a) && Intrinsics.c(this.f74320b, approximationBounds.f74320b);
    }

    public final int hashCode() {
        Object obj = this.f74319a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f74320b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApproximationBounds(lower=");
        sb.append(this.f74319a);
        sb.append(", upper=");
        return o60.r(sb, this.f74320b, ')');
    }
}

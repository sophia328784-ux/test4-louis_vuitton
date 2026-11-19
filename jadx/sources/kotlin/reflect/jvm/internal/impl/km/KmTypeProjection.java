package kotlin.reflect.jvm.internal.impl.km;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KmTypeProjection {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KmTypeProjection f72750c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KmVariance f72751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KmType f72752b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72750c = new KmTypeProjection(null, null);
    }

    public KmTypeProjection(KmVariance kmVariance, KmType kmType) {
        this.f72751a = kmVariance;
        this.f72752b = kmType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KmTypeProjection)) {
            return false;
        }
        KmTypeProjection kmTypeProjection = (KmTypeProjection) obj;
        return this.f72751a == kmTypeProjection.f72751a && Intrinsics.c(this.f72752b, kmTypeProjection.f72752b);
    }

    public final int hashCode() {
        KmVariance kmVariance = this.f72751a;
        int iHashCode = (kmVariance == null ? 0 : kmVariance.hashCode()) * 31;
        KmType kmType = this.f72752b;
        return iHashCode + (kmType != null ? kmType.hashCode() : 0);
    }

    public final String toString() {
        return "KmTypeProjection(variance=" + this.f72751a + ", type=" + this.f72752b + ')';
    }
}

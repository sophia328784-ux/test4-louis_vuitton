package kotlin.reflect.jvm.internal.impl.km;

import defpackage.fc;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KmFlexibleTypeUpperBound {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KmType f72715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72716b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public KmFlexibleTypeUpperBound(KmType kmType, String str) {
        kmType.getClass();
        this.f72715a = kmType;
        this.f72716b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KmFlexibleTypeUpperBound)) {
            return false;
        }
        KmFlexibleTypeUpperBound kmFlexibleTypeUpperBound = (KmFlexibleTypeUpperBound) obj;
        return Intrinsics.c(this.f72715a, kmFlexibleTypeUpperBound.f72715a) && Intrinsics.c(this.f72716b, kmFlexibleTypeUpperBound.f72716b);
    }

    public final int hashCode() {
        int iHashCode = this.f72715a.hashCode() * 31;
        String str = this.f72716b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KmFlexibleTypeUpperBound(type=");
        sb.append(this.f72715a);
        sb.append(", typeFlexibilityId=");
        return fc.l(sb, this.f72716b, ')');
    }
}

package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.d21;
import defpackage.o60;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTypeQualifiers {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f73108e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final JavaTypeQualifiers f73109f = new JavaTypeQualifiers(null, null, false, false, 8, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NullabilityQualifier f73110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutabilityQualifier f73111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f73112c;
    public final boolean d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public JavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        this.f73110a = nullabilityQualifier;
        this.f73111b = mutabilityQualifier;
        this.f73112c = z;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JavaTypeQualifiers)) {
            return false;
        }
        JavaTypeQualifiers javaTypeQualifiers = (JavaTypeQualifiers) obj;
        return this.f73110a == javaTypeQualifiers.f73110a && this.f73111b == javaTypeQualifiers.f73111b && this.f73112c == javaTypeQualifiers.f73112c && this.d == javaTypeQualifiers.d;
    }

    public final int hashCode() {
        NullabilityQualifier nullabilityQualifier = this.f73110a;
        int iHashCode = (nullabilityQualifier == null ? 0 : nullabilityQualifier.hashCode()) * 31;
        MutabilityQualifier mutabilityQualifier = this.f73111b;
        return Boolean.hashCode(this.d) + o60.b((iHashCode + (mutabilityQualifier != null ? mutabilityQualifier.hashCode() : 0)) * 31, 31, this.f73112c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JavaTypeQualifiers(nullability=");
        sb.append(this.f73110a);
        sb.append(", mutability=");
        sb.append(this.f73111b);
        sb.append(", definitelyNotNull=");
        sb.append(this.f73112c);
        sb.append(", isNullabilityQualifierForWarning=");
        return d21.q(sb, this.d, ')');
    }

    public /* synthetic */ JavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, mutabilityQualifier, z, (i2 & 8) != 0 ? false : z2);
    }
}

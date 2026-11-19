package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.d21;
import defpackage.o60;
import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaDefaultQualifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NullabilityQualifierWithMigrationStatus f72838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f72839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f72840c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f72841e;

    public JavaDefaultQualifiers(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, Collection collection, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifierWithMigrationStatus, collection, (i2 & 4) != 0 ? nullabilityQualifierWithMigrationStatus.f73114a == NullabilityQualifier.NOT_NULL : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JavaDefaultQualifiers)) {
            return false;
        }
        JavaDefaultQualifiers javaDefaultQualifiers = (JavaDefaultQualifiers) obj;
        return Intrinsics.c(this.f72838a, javaDefaultQualifiers.f72838a) && Intrinsics.c(this.f72839b, javaDefaultQualifiers.f72839b) && this.f72840c == javaDefaultQualifiers.f72840c && this.d == javaDefaultQualifiers.d && this.f72841e == javaDefaultQualifiers.f72841e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f72841e) + o60.b(o60.b((this.f72839b.hashCode() + (this.f72838a.hashCode() * 31)) * 31, 31, this.f72840c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JavaDefaultQualifiers(nullabilityQualifier=");
        sb.append(this.f72838a);
        sb.append(", qualifierApplicabilityTypes=");
        sb.append(this.f72839b);
        sb.append(", definitelyNotNull=");
        sb.append(this.f72840c);
        sb.append(", preferQualifierOverBound=");
        sb.append(this.d);
        sb.append(", preferQualifierOverSupertype=");
        return d21.q(sb, this.f72841e, ')');
    }

    public JavaDefaultQualifiers(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, Collection<? extends AnnotationQualifierApplicabilityType> collection, boolean z, boolean z2, boolean z3) {
        nullabilityQualifierWithMigrationStatus.getClass();
        collection.getClass();
        this.f72838a = nullabilityQualifierWithMigrationStatus;
        this.f72839b = collection;
        this.f72840c = z;
        this.d = z2;
        this.f72841e = z3;
    }
}

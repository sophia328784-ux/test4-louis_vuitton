package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.d21;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class NullabilityQualifierWithMigrationStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NullabilityQualifier f73114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f73115b;

    public NullabilityQualifierWithMigrationStatus(NullabilityQualifier nullabilityQualifier, boolean z) {
        nullabilityQualifier.getClass();
        this.f73114a = nullabilityQualifier;
        this.f73115b = z;
    }

    public static NullabilityQualifierWithMigrationStatus a(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, NullabilityQualifier nullabilityQualifier, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            nullabilityQualifier = nullabilityQualifierWithMigrationStatus.f73114a;
        }
        if ((i2 & 2) != 0) {
            z = nullabilityQualifierWithMigrationStatus.f73115b;
        }
        nullabilityQualifierWithMigrationStatus.getClass();
        nullabilityQualifier.getClass();
        return new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NullabilityQualifierWithMigrationStatus)) {
            return false;
        }
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = (NullabilityQualifierWithMigrationStatus) obj;
        return this.f73114a == nullabilityQualifierWithMigrationStatus.f73114a && this.f73115b == nullabilityQualifierWithMigrationStatus.f73115b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f73115b) + (this.f73114a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NullabilityQualifierWithMigrationStatus(qualifier=");
        sb.append(this.f73114a);
        sb.append(", isForWarningOnly=");
        return d21.q(sb, this.f73115b, ')');
    }

    public /* synthetic */ NullabilityQualifierWithMigrationStatus(NullabilityQualifier nullabilityQualifier, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, (i2 & 2) != 0 ? false : z);
    }
}

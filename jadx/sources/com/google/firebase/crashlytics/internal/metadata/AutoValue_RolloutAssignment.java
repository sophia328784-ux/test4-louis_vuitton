package com.google.firebase.crashlytics.internal.metadata;

import defpackage.o60;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_RolloutAssignment extends RolloutAssignment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34599c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f34600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f34601f;

    public AutoValue_RolloutAssignment(long j2, String str, String str2, String str3, String str4) {
        if (str == null) {
            r81.d("Null rolloutId");
            throw null;
        }
        this.f34598b = str;
        if (str2 == null) {
            r81.d("Null parameterKey");
            throw null;
        }
        this.f34599c = str2;
        this.d = str3;
        if (str4 == null) {
            r81.d("Null variantId");
            throw null;
        }
        this.f34600e = str4;
        this.f34601f = j2;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.RolloutAssignment
    public final String b() {
        return this.f34599c;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.RolloutAssignment
    public final String c() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.RolloutAssignment
    public final String d() {
        return this.f34598b;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.RolloutAssignment
    public final long e() {
        return this.f34601f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RolloutAssignment)) {
            return false;
        }
        RolloutAssignment rolloutAssignment = (RolloutAssignment) obj;
        return this.f34598b.equals(rolloutAssignment.d()) && this.f34599c.equals(rolloutAssignment.b()) && this.d.equals(rolloutAssignment.c()) && this.f34600e.equals(rolloutAssignment.f()) && this.f34601f == rolloutAssignment.e();
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.RolloutAssignment
    public final String f() {
        return this.f34600e;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f34598b.hashCode() ^ 1000003) * 1000003) ^ this.f34599c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f34600e.hashCode()) * 1000003;
        long j2 = this.f34601f;
        return ((int) ((j2 >>> 32) ^ j2)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.f34598b);
        sb.append(", parameterKey=");
        sb.append(this.f34599c);
        sb.append(", parameterValue=");
        sb.append(this.d);
        sb.append(", variantId=");
        sb.append(this.f34600e);
        sb.append(", templateVersion=");
        return o60.j(this.f34601f, "}", sb);
    }
}

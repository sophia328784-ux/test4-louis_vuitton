package com.google.firebase;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_StartupTime extends StartupTime {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f34325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f34326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f34327c;

    public AutoValue_StartupTime(long j2, long j3, long j4) {
        this.f34325a = j2;
        this.f34326b = j3;
        this.f34327c = j4;
    }

    @Override // com.google.firebase.StartupTime
    public final long a() {
        return this.f34326b;
    }

    @Override // com.google.firebase.StartupTime
    public final long b() {
        return this.f34325a;
    }

    @Override // com.google.firebase.StartupTime
    public final long c() {
        return this.f34327c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StartupTime)) {
            return false;
        }
        StartupTime startupTime = (StartupTime) obj;
        return this.f34325a == startupTime.b() && this.f34326b == startupTime.a() && this.f34327c == startupTime.c();
    }

    public final int hashCode() {
        long j2 = this.f34325a;
        long j3 = this.f34326b;
        int i2 = (((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j4 = this.f34327c;
        return ((int) ((j4 >>> 32) ^ j4)) ^ i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StartupTime{epochMillis=");
        sb.append(this.f34325a);
        sb.append(", elapsedRealtime=");
        sb.append(this.f34326b);
        sb.append(", uptimeMillis=");
        return o60.j(this.f34327c, "}", sb);
    }
}

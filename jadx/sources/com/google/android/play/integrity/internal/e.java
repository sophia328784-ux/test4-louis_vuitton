package com.google.android.play.integrity.internal;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
final class e extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33330a = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f33331b;

    public e(long j2) {
        this.f33331b = j2;
    }

    @Override // com.google.android.play.integrity.internal.f
    public final int a() {
        return this.f33330a;
    }

    @Override // com.google.android.play.integrity.internal.f
    public final long b() {
        return this.f33331b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f33330a == fVar.a() && this.f33331b == fVar.b();
    }

    public final int hashCode() {
        long j2 = this.f33331b;
        return ((this.f33330a ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventRecord{eventType=");
        sb.append(this.f33330a);
        sb.append(", eventTimestamp=");
        return o60.j(this.f33331b, "}", sb);
    }
}

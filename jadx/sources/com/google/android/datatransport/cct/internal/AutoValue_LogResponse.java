package com.google.android.datatransport.cct.internal;

import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_LogResponse extends LogResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27911a;

    public AutoValue_LogResponse(long j2) {
        this.f27911a = j2;
    }

    @Override // com.google.android.datatransport.cct.internal.LogResponse
    public final long b() {
        return this.f27911a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof LogResponse) && this.f27911a == ((LogResponse) obj).b();
    }

    public final int hashCode() {
        long j2 = this.f27911a;
        return ((int) ((j2 >>> 32) ^ j2)) ^ 1000003;
    }

    public final String toString() {
        return o60.j(this.f27911a, "}", new StringBuilder("LogResponse{nextRequestWaitMillis="));
    }
}

package com.google.android.datatransport.runtime.backends;

import defpackage.o60;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_BackendResponse extends BackendResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BackendResponse.Status f27994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27995b;

    public AutoValue_BackendResponse(BackendResponse.Status status, long j2) {
        if (status == null) {
            r81.d("Null status");
            throw null;
        }
        this.f27994a = status;
        this.f27995b = j2;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final long b() {
        return this.f27995b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final BackendResponse.Status c() {
        return this.f27994a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        return this.f27994a.equals(backendResponse.c()) && this.f27995b == backendResponse.b();
    }

    public final int hashCode() {
        int iHashCode = (this.f27994a.hashCode() ^ 1000003) * 1000003;
        long j2 = this.f27995b;
        return ((int) ((j2 >>> 32) ^ j2)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.f27994a);
        sb.append(", nextRequestWaitMillis=");
        return o60.j(this.f27995b, "}", sb);
    }
}

package com.google.android.datatransport.runtime.backends;

import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_BackendRequest extends BackendRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterable f27990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f27991b;

    public static final class Builder extends BackendRequest.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f27992a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f27993b;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest a() {
            String str = this.f27992a == null ? " events" : "";
            if (str.isEmpty()) {
                return new AutoValue_BackendRequest(this.f27992a, this.f27993b);
            }
            md.k("Missing required properties:".concat(str));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder b(ArrayList arrayList) {
            this.f27992a = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder c(byte[] bArr) {
            this.f27993b = bArr;
            return this;
        }
    }

    public AutoValue_BackendRequest(ArrayList arrayList, byte[] bArr) {
        this.f27990a = arrayList;
        this.f27991b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final Iterable b() {
        return this.f27990a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final byte[] c() {
        return this.f27991b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendRequest)) {
            return false;
        }
        BackendRequest backendRequest = (BackendRequest) obj;
        if (this.f27990a.equals(backendRequest.b())) {
            return Arrays.equals(this.f27991b, backendRequest instanceof AutoValue_BackendRequest ? ((AutoValue_BackendRequest) backendRequest).f27991b : backendRequest.c());
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f27991b) ^ ((this.f27990a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f27990a + ", extras=" + Arrays.toString(this.f27991b) + "}";
    }
}

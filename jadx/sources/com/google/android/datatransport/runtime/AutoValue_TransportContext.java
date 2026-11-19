package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import defpackage.md;
import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_TransportContext extends TransportContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f27956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Priority f27957c;

    public static final class Builder extends TransportContext.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27958a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f27959b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Priority f27960c;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext a() {
            String strConcat = this.f27958a == null ? " backendName" : "";
            if (this.f27960c == null) {
                strConcat = strConcat.concat(" priority");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_TransportContext(this.f27958a, this.f27959b, this.f27960c);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder b(String str) {
            if (str != null) {
                this.f27958a = str;
                return this;
            }
            r81.d("Null backendName");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder c(byte[] bArr) {
            this.f27959b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder d(Priority priority) {
            if (priority != null) {
                this.f27960c = priority;
                return this;
            }
            r81.d("Null priority");
            return null;
        }
    }

    public AutoValue_TransportContext(String str, byte[] bArr, Priority priority) {
        this.f27955a = str;
        this.f27956b = bArr;
        this.f27957c = priority;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final String b() {
        return this.f27955a;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final byte[] c() {
        return this.f27956b;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final Priority d() {
        return this.f27957c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransportContext)) {
            return false;
        }
        TransportContext transportContext = (TransportContext) obj;
        if (this.f27955a.equals(transportContext.b())) {
            return Arrays.equals(this.f27956b, transportContext instanceof AutoValue_TransportContext ? ((AutoValue_TransportContext) transportContext).f27956b : transportContext.c()) && this.f27957c.equals(transportContext.d());
        }
        return false;
    }

    public final int hashCode() {
        return this.f27957c.hashCode() ^ ((((this.f27955a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f27956b)) * 1000003);
    }
}

package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ExternalPrivacyContext extends ExternalPrivacyContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExternalPRequestContext f27885a;

    public static final class Builder extends ExternalPrivacyContext.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ExternalPRequestContext f27886a;

        @Override // com.google.android.datatransport.cct.internal.ExternalPrivacyContext.Builder
        public final ExternalPrivacyContext a() {
            return new AutoValue_ExternalPrivacyContext(this.f27886a);
        }

        @Override // com.google.android.datatransport.cct.internal.ExternalPrivacyContext.Builder
        public final ExternalPrivacyContext.Builder b(ExternalPRequestContext externalPRequestContext) {
            this.f27886a = externalPRequestContext;
            return this;
        }
    }

    public AutoValue_ExternalPrivacyContext(ExternalPRequestContext externalPRequestContext) {
        this.f27885a = externalPRequestContext;
    }

    @Override // com.google.android.datatransport.cct.internal.ExternalPrivacyContext
    public final ExternalPRequestContext b() {
        return this.f27885a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExternalPrivacyContext)) {
            return false;
        }
        ExternalPrivacyContext externalPrivacyContext = (ExternalPrivacyContext) obj;
        ExternalPRequestContext externalPRequestContext = this.f27885a;
        if (externalPRequestContext == null) {
            return externalPrivacyContext.b() == null;
        }
        return externalPRequestContext.equals(externalPrivacyContext.b());
    }

    public final int hashCode() {
        ExternalPRequestContext externalPRequestContext = this.f27885a;
        return (externalPRequestContext == null ? 0 : externalPRequestContext.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f27885a + "}";
    }
}

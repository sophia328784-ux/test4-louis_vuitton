package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ComplianceData extends ComplianceData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExternalPrivacyContext f27875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComplianceData.ProductIdOrigin f27876b;

    public static final class Builder extends ComplianceData.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ExternalPrivacyContext f27877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ComplianceData.ProductIdOrigin f27878b;

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public final ComplianceData a() {
            return new AutoValue_ComplianceData(this.f27877a, this.f27878b);
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public final ComplianceData.Builder b(ExternalPrivacyContext externalPrivacyContext) {
            this.f27877a = externalPrivacyContext;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.Builder
        public final ComplianceData.Builder c(ComplianceData.ProductIdOrigin productIdOrigin) {
            this.f27878b = productIdOrigin;
            return this;
        }
    }

    public AutoValue_ComplianceData(ExternalPrivacyContext externalPrivacyContext, ComplianceData.ProductIdOrigin productIdOrigin) {
        this.f27875a = externalPrivacyContext;
        this.f27876b = productIdOrigin;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    public final ExternalPrivacyContext b() {
        return this.f27875a;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    public final ComplianceData.ProductIdOrigin c() {
        return this.f27876b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComplianceData)) {
            return false;
        }
        ComplianceData complianceData = (ComplianceData) obj;
        ExternalPrivacyContext externalPrivacyContext = this.f27875a;
        if (externalPrivacyContext == null) {
            if (complianceData.b() != null) {
                return false;
            }
        } else if (!externalPrivacyContext.equals(complianceData.b())) {
            return false;
        }
        ComplianceData.ProductIdOrigin productIdOrigin = this.f27876b;
        if (productIdOrigin == null) {
            return complianceData.c() == null;
        }
        return productIdOrigin.equals(complianceData.c());
    }

    public final int hashCode() {
        ExternalPrivacyContext externalPrivacyContext = this.f27875a;
        int iHashCode = ((externalPrivacyContext == null ? 0 : externalPrivacyContext.hashCode()) ^ 1000003) * 1000003;
        ComplianceData.ProductIdOrigin productIdOrigin = this.f27876b;
        return iHashCode ^ (productIdOrigin != null ? productIdOrigin.hashCode() : 0);
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.f27875a + ", productIdOrigin=" + this.f27876b + "}";
    }
}

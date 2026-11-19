package com.vuitton.android.presentation.screen.certificates.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;", "", "", "isMyCertificatesEnabled", "isCertificatesMockVisionnaireLockedStatusEnabled", "<init>", "(ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f55835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f55836b;

    public /* synthetic */ CertificateFeatureFlags(boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateFeatureFlags)) {
            return false;
        }
        CertificateFeatureFlags certificateFeatureFlags = (CertificateFeatureFlags) obj;
        return this.f55835a == certificateFeatureFlags.f55835a && this.f55836b == certificateFeatureFlags.f55836b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f55836b) + (Boolean.hashCode(this.f55835a) * 31);
    }

    public final String toString() {
        return "CertificateFeatureFlags(isMyCertificatesEnabled=" + this.f55835a + ", isCertificatesMockVisionnaireLockedStatusEnabled=" + this.f55836b + ")";
    }

    public CertificateFeatureFlags(boolean z, boolean z2) {
        this.f55835a = z;
        this.f55836b = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateFeatureFlags() {
        boolean z = false;
        this(z, z, 3, null);
    }
}

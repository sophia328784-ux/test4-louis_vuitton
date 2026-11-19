package com.vuitton.foundation.model.domain.model.config;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;", "", "", "product", "orderReview", "<init>", "(ZZ)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VatIncludedConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f67282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f67283b;

    public VatIncludedConfig(boolean z, boolean z2) {
        this.f67282a = z;
        this.f67283b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VatIncludedConfig)) {
            return false;
        }
        VatIncludedConfig vatIncludedConfig = (VatIncludedConfig) obj;
        return this.f67282a == vatIncludedConfig.f67282a && this.f67283b == vatIncludedConfig.f67283b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f67283b) + (Boolean.hashCode(this.f67282a) * 31);
    }

    public final String toString() {
        return "VatIncludedConfig(product=" + this.f67282a + ", orderReview=" + this.f67283b + ")";
    }
}

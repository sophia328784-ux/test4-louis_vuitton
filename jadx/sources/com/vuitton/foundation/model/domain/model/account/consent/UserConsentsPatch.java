package com.vuitton.foundation.model.domain.model.account.consent;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;", "", "Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;", "kisa", "Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;", "marketing", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UserConsentsPatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KisaConsentsPatch f66295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MarketingConsentsPatch f66296b;

    public /* synthetic */ UserConsentsPatch(KisaConsentsPatch kisaConsentsPatch, MarketingConsentsPatch marketingConsentsPatch, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : kisaConsentsPatch, (i2 & 2) != 0 ? null : marketingConsentsPatch);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserConsentsPatch)) {
            return false;
        }
        UserConsentsPatch userConsentsPatch = (UserConsentsPatch) obj;
        return Intrinsics.c(this.f66295a, userConsentsPatch.f66295a) && Intrinsics.c(this.f66296b, userConsentsPatch.f66296b);
    }

    public final int hashCode() {
        KisaConsentsPatch kisaConsentsPatch = this.f66295a;
        int iHashCode = (kisaConsentsPatch == null ? 0 : kisaConsentsPatch.hashCode()) * 31;
        MarketingConsentsPatch marketingConsentsPatch = this.f66296b;
        return iHashCode + (marketingConsentsPatch != null ? marketingConsentsPatch.hashCode() : 0);
    }

    public final String toString() {
        return "UserConsentsPatch(kisa=" + this.f66295a + ", marketing=" + this.f66296b + ")";
    }

    public UserConsentsPatch(KisaConsentsPatch kisaConsentsPatch, MarketingConsentsPatch marketingConsentsPatch) {
        this.f66295a = kisaConsentsPatch;
        this.f66296b = marketingConsentsPatch;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserConsentsPatch() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}

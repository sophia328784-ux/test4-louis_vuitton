package com.vuitton.foundation.model.domain.model.config;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;", "", "", "dynamicYieldCampaign", "Lcom/vuitton/foundation/model/domain/model/config/Region;", "preferredServer", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/Region;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalisationConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Region f67272b;

    public PersonalisationConfig(String str, Region region) {
        region.getClass();
        this.f67271a = str;
        this.f67272b = region;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalisationConfig)) {
            return false;
        }
        PersonalisationConfig personalisationConfig = (PersonalisationConfig) obj;
        return Intrinsics.c(this.f67271a, personalisationConfig.f67271a) && this.f67272b == personalisationConfig.f67272b;
    }

    public final int hashCode() {
        String str = this.f67271a;
        return this.f67272b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "PersonalisationConfig(dynamicYieldCampaign=" + this.f67271a + ", preferredServer=" + this.f67272b + ")";
    }

    public /* synthetic */ PersonalisationConfig(String str, Region region, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, region);
    }
}

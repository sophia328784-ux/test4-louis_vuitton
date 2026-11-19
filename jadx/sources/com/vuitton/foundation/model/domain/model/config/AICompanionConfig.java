package com.vuitton.foundation.model.domain.model.config;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;", "", "", "", "suggestions", "Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;", "onboarding", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AICompanionConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionOnboarding f67222b;

    public /* synthetic */ AICompanionConfig(List list, AICompanionOnboarding aICompanionOnboarding, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : aICompanionOnboarding);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionConfig)) {
            return false;
        }
        AICompanionConfig aICompanionConfig = (AICompanionConfig) obj;
        return Intrinsics.c(this.f67221a, aICompanionConfig.f67221a) && Intrinsics.c(this.f67222b, aICompanionConfig.f67222b);
    }

    public final int hashCode() {
        List list = this.f67221a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        AICompanionOnboarding aICompanionOnboarding = this.f67222b;
        return iHashCode + (aICompanionOnboarding != null ? aICompanionOnboarding.hashCode() : 0);
    }

    public final String toString() {
        return "AICompanionConfig(suggestions=" + this.f67221a + ", onboarding=" + this.f67222b + ")";
    }

    public AICompanionConfig(List<String> list, AICompanionOnboarding aICompanionOnboarding) {
        this.f67221a = list;
        this.f67222b = aICompanionOnboarding;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AICompanionConfig() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}

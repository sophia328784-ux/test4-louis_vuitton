package com.vuitton.foundation.model.domain.model.config;

import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;", "", "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "theme", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FeedConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FeatureTheme f67260a;

    public FeedConfig(FeatureTheme featureTheme) {
        featureTheme.getClass();
        this.f67260a = featureTheme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FeedConfig) && this.f67260a == ((FeedConfig) obj).f67260a;
    }

    public final int hashCode() {
        return this.f67260a.hashCode();
    }

    public final String toString() {
        return "FeedConfig(theme=" + this.f67260a + ")";
    }
}

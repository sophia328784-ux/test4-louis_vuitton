package com.vuitton.foundation.model.domain.model.config;

import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;", "", "", "backgroundColor", "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "theme", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AICompanionOnboarding {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeatureTheme f67224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetVideo f67225c;

    public AICompanionOnboarding(String str, FeatureTheme featureTheme, AssetVideo assetVideo) {
        featureTheme.getClass();
        assetVideo.getClass();
        this.f67223a = str;
        this.f67224b = featureTheme;
        this.f67225c = assetVideo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionOnboarding)) {
            return false;
        }
        AICompanionOnboarding aICompanionOnboarding = (AICompanionOnboarding) obj;
        return Intrinsics.c(this.f67223a, aICompanionOnboarding.f67223a) && this.f67224b == aICompanionOnboarding.f67224b && Intrinsics.c(this.f67225c, aICompanionOnboarding.f67225c);
    }

    public final int hashCode() {
        String str = this.f67223a;
        int iHashCode = str == null ? 0 : str.hashCode();
        return this.f67225c.hashCode() + ((this.f67224b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "AICompanionOnboarding(backgroundColor=" + this.f67223a + ", theme=" + this.f67224b + ", video=" + this.f67225c + ")";
    }

    public /* synthetic */ AICompanionOnboarding(String str, FeatureTheme featureTheme, AssetVideo assetVideo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? FeatureTheme.LIGHT : featureTheme, assetVideo);
    }
}

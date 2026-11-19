package com.vuitton.foundation.model.domain.model.spotlight;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;", "", "", "title", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightCta {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLink f68224b;

    public SpotlightCta(String str, ContributionLink contributionLink) {
        str.getClass();
        contributionLink.getClass();
        this.f68223a = str;
        this.f68224b = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightCta)) {
            return false;
        }
        SpotlightCta spotlightCta = (SpotlightCta) obj;
        return Intrinsics.c(this.f68223a, spotlightCta.f68223a) && Intrinsics.c(this.f68224b, spotlightCta.f68224b);
    }

    public final int hashCode() {
        return this.f68224b.hashCode() + (this.f68223a.hashCode() * 31);
    }

    public final String toString() {
        return "SpotlightCta(title=" + this.f68223a + ", link=" + this.f68224b + ")";
    }
}

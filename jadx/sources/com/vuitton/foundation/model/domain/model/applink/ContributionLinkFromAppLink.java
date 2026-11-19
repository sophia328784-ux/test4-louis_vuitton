package com.vuitton.foundation.model.domain.model.applink;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.dispatch.SwapDispatch;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;", "", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;", "swapDispatch", "<init>", "(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContributionLinkFromAppLink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContributionLink f66539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SwapDispatch f66540b;

    public ContributionLinkFromAppLink(ContributionLink contributionLink, SwapDispatch swapDispatch) {
        contributionLink.getClass();
        this.f66539a = contributionLink;
        this.f66540b = swapDispatch;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkFromAppLink)) {
            return false;
        }
        ContributionLinkFromAppLink contributionLinkFromAppLink = (ContributionLinkFromAppLink) obj;
        return Intrinsics.c(this.f66539a, contributionLinkFromAppLink.f66539a) && Intrinsics.c(this.f66540b, contributionLinkFromAppLink.f66540b);
    }

    public final int hashCode() {
        int iHashCode = this.f66539a.hashCode() * 31;
        SwapDispatch swapDispatch = this.f66540b;
        return iHashCode + (swapDispatch == null ? 0 : swapDispatch.hashCode());
    }

    public final String toString() {
        return "ContributionLinkFromAppLink(link=" + this.f66539a + ", swapDispatch=" + this.f66540b + ")";
    }

    public /* synthetic */ ContributionLinkFromAppLink(ContributionLink contributionLink, SwapDispatch swapDispatch, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(contributionLink, (i2 & 2) != 0 ? null : swapDispatch);
    }
}

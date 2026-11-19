package com.vuitton.foundation.model.domain.model.booking;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;", "", "", "title", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingDisclaimerAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLink f66696b;

    public BookingDisclaimerAction(String str, ContributionLink contributionLink) {
        str.getClass();
        contributionLink.getClass();
        this.f66695a = str;
        this.f66696b = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingDisclaimerAction)) {
            return false;
        }
        BookingDisclaimerAction bookingDisclaimerAction = (BookingDisclaimerAction) obj;
        return Intrinsics.c(this.f66695a, bookingDisclaimerAction.f66695a) && Intrinsics.c(this.f66696b, bookingDisclaimerAction.f66696b);
    }

    public final int hashCode() {
        return this.f66696b.hashCode() + (this.f66695a.hashCode() * 31);
    }

    public final String toString() {
        return "BookingDisclaimerAction(title=" + this.f66695a + ", link=" + this.f66696b + ")";
    }
}

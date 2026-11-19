package com.vuitton.foundation.model.domain.model.catalog;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;", "", "", "Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SubcategoryRedirection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLink f67030c;

    public /* synthetic */ SubcategoryRedirection(List list, List list2, ContributionLink contributionLink, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : contributionLink);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryRedirection)) {
            return false;
        }
        SubcategoryRedirection subcategoryRedirection = (SubcategoryRedirection) obj;
        return Intrinsics.c(this.f67028a, subcategoryRedirection.f67028a) && Intrinsics.c(this.f67029b, subcategoryRedirection.f67029b) && Intrinsics.c(this.f67030c, subcategoryRedirection.f67030c);
    }

    public final int hashCode() {
        List list = this.f67028a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67029b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        ContributionLink contributionLink = this.f67030c;
        return iHashCode2 + (contributionLink != null ? contributionLink.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("SubcategoryRedirection(plpEntries=", ", thematicPlpEntries=", ", link=", this.f67028a, this.f67029b);
        sbS.append(this.f67030c);
        sbS.append(")");
        return sbS.toString();
    }

    public SubcategoryRedirection(List<PLPEntry> list, List<PLPEntry> list2, ContributionLink contributionLink) {
        this.f67028a = list;
        this.f67029b = list2;
        this.f67030c = contributionLink;
    }

    public SubcategoryRedirection() {
        this(null, null, null, 7, null);
    }
}

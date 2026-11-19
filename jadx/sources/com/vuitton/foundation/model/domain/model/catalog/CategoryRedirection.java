package com.vuitton.foundation.model.domain.model.catalog;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;", "", "", "Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;", "subcategoryGroups", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryRedirection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f67016c;
    public final ContributionLink d;

    public /* synthetic */ CategoryRedirection(List list, List list2, List list3, ContributionLink contributionLink, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : contributionLink);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryRedirection)) {
            return false;
        }
        CategoryRedirection categoryRedirection = (CategoryRedirection) obj;
        return Intrinsics.c(this.f67014a, categoryRedirection.f67014a) && Intrinsics.c(this.f67015b, categoryRedirection.f67015b) && Intrinsics.c(this.f67016c, categoryRedirection.f67016c) && Intrinsics.c(this.d, categoryRedirection.d);
    }

    public final int hashCode() {
        List list = this.f67014a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f67015b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f67016c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        ContributionLink contributionLink = this.d;
        return iHashCode3 + (contributionLink != null ? contributionLink.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("CategoryRedirection(plpEntries=", ", thematicPlpEntries=", ", subcategoryGroups=", this.f67014a, this.f67015b);
        sbS.append(this.f67016c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public CategoryRedirection(List<PLPEntry> list, List<PLPEntry> list2, List<SubcategoryGroups> list3, ContributionLink contributionLink) {
        this.f67014a = list;
        this.f67015b = list2;
        this.f67016c = list3;
        this.d = contributionLink;
    }

    public CategoryRedirection() {
        this(null, null, null, null, 15, null);
    }
}

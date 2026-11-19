package com.vuitton.android.presentation.screen.catalog.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryGroupsUiModel;", "subcategoryGroups", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryRedirectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f55359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f55361c;
    public final ContributionLinkUiModel d;

    public /* synthetic */ CategoryRedirectionUiModel(List list, List list2, List list3, ContributionLinkUiModel contributionLinkUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : list3, (i2 & 8) != 0 ? null : contributionLinkUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryRedirectionUiModel)) {
            return false;
        }
        CategoryRedirectionUiModel categoryRedirectionUiModel = (CategoryRedirectionUiModel) obj;
        return Intrinsics.c(this.f55359a, categoryRedirectionUiModel.f55359a) && Intrinsics.c(this.f55360b, categoryRedirectionUiModel.f55360b) && Intrinsics.c(this.f55361c, categoryRedirectionUiModel.f55361c) && Intrinsics.c(this.d, categoryRedirectionUiModel.d);
    }

    public final int hashCode() {
        List list = this.f55359a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f55360b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.f55361c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        ContributionLinkUiModel contributionLinkUiModel = this.d;
        return iHashCode3 + (contributionLinkUiModel != null ? contributionLinkUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("CategoryRedirectionUiModel(plpEntries=", ", thematicPlpEntries=", ", subcategoryGroups=", this.f55359a, this.f55360b);
        sbS.append(this.f55361c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public CategoryRedirectionUiModel(List<PLPEntryUiModel> list, List<PLPEntryUiModel> list2, List<SubcategoryGroupsUiModel> list3, ContributionLinkUiModel contributionLinkUiModel) {
        this.f55359a = list;
        this.f55360b = list2;
        this.f55361c = list3;
        this.d = contributionLinkUiModel;
    }

    public CategoryRedirectionUiModel() {
        this(null, null, null, null, 15, null);
    }
}

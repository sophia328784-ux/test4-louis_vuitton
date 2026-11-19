package com.vuitton.android.presentation.screen.catalog.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;", "plpEntries", "thematicPlpEntries", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SubcategoryRedirectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f55379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkUiModel f55381c;

    public /* synthetic */ SubcategoryRedirectionUiModel(List list, List list2, ContributionLinkUiModel contributionLinkUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : list, (i2 & 2) != 0 ? null : list2, (i2 & 4) != 0 ? null : contributionLinkUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcategoryRedirectionUiModel)) {
            return false;
        }
        SubcategoryRedirectionUiModel subcategoryRedirectionUiModel = (SubcategoryRedirectionUiModel) obj;
        return Intrinsics.c(this.f55379a, subcategoryRedirectionUiModel.f55379a) && Intrinsics.c(this.f55380b, subcategoryRedirectionUiModel.f55380b) && Intrinsics.c(this.f55381c, subcategoryRedirectionUiModel.f55381c);
    }

    public final int hashCode() {
        List list = this.f55379a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List list2 = this.f55380b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        ContributionLinkUiModel contributionLinkUiModel = this.f55381c;
        return iHashCode2 + (contributionLinkUiModel != null ? contributionLinkUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = o60.s("SubcategoryRedirectionUiModel(plpEntries=", ", thematicPlpEntries=", ", link=", this.f55379a, this.f55380b);
        sbS.append(this.f55381c);
        sbS.append(")");
        return sbS.toString();
    }

    public SubcategoryRedirectionUiModel(List<PLPEntryUiModel> list, List<PLPEntryUiModel> list2, ContributionLinkUiModel contributionLinkUiModel) {
        this.f55379a = list;
        this.f55380b = list2;
        this.f55381c = contributionLinkUiModel;
    }

    public SubcategoryRedirectionUiModel() {
        this(null, null, null, 7, null);
    }
}

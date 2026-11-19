package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;", "", "", "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchHintUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f64252c;
    public final ContributionLinkUiModel d;

    public SearchHintUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        contributionLinkUiModel.getClass();
        this.f64250a = str;
        this.f64251b = str2;
        this.f64252c = assetImageUiModel;
        this.d = contributionLinkUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchHintUiModel)) {
            return false;
        }
        SearchHintUiModel searchHintUiModel = (SearchHintUiModel) obj;
        return Intrinsics.c(this.f64250a, searchHintUiModel.f64250a) && Intrinsics.c(this.f64251b, searchHintUiModel.f64251b) && Intrinsics.c(this.f64252c, searchHintUiModel.f64252c) && Intrinsics.c(this.d, searchHintUiModel.d);
    }

    public final int hashCode() {
        int iHashCode = this.f64250a.hashCode() * 31;
        String str = this.f64251b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImageUiModel assetImageUiModel = this.f64252c;
        return this.d.hashCode() + ((iHashCode2 + (assetImageUiModel != null ? assetImageUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SearchHintUiModel(title=", this.f64250a, ", description=", this.f64251b, ", image=");
        sbS.append(this.f64252c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}

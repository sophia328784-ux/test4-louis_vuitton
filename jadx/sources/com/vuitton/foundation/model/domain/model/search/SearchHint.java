package com.vuitton.foundation.model.domain.model.search;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/SearchHint;", "", "", "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchHint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f68200c;
    public final ContributionLink d;

    public SearchHint(String str, String str2, AssetImage assetImage, ContributionLink contributionLink) {
        str.getClass();
        contributionLink.getClass();
        this.f68198a = str;
        this.f68199b = str2;
        this.f68200c = assetImage;
        this.d = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchHint)) {
            return false;
        }
        SearchHint searchHint = (SearchHint) obj;
        return Intrinsics.c(this.f68198a, searchHint.f68198a) && Intrinsics.c(this.f68199b, searchHint.f68199b) && Intrinsics.c(this.f68200c, searchHint.f68200c) && Intrinsics.c(this.d, searchHint.d);
    }

    public final int hashCode() {
        int iHashCode = this.f68198a.hashCode() * 31;
        String str = this.f68199b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImage assetImage = this.f68200c;
        return this.d.hashCode() + ((iHashCode2 + (assetImage != null ? assetImage.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SearchHint(title=", this.f68198a, ", description=", this.f68199b, ", image=");
        sbS.append(this.f68200c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}

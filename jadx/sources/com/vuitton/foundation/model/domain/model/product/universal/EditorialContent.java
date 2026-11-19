package com.vuitton.foundation.model.domain.model.product.universal;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditorialContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67986c;
    public final Asset d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLink f67987e;

    public EditorialContent(String str, String str2, String str3, Asset asset, ContributionLink contributionLink) {
        str.getClass();
        str2.getClass();
        asset.getClass();
        contributionLink.getClass();
        this.f67984a = str;
        this.f67985b = str2;
        this.f67986c = str3;
        this.d = asset;
        this.f67987e = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialContent)) {
            return false;
        }
        EditorialContent editorialContent = (EditorialContent) obj;
        return Intrinsics.c(this.f67984a, editorialContent.f67984a) && Intrinsics.c(this.f67985b, editorialContent.f67985b) && Intrinsics.c(this.f67986c, editorialContent.f67986c) && Intrinsics.c(this.d, editorialContent.d) && Intrinsics.c(this.f67987e, editorialContent.f67987e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67984a.hashCode() * 31, 31, this.f67985b);
        String str = this.f67986c;
        return this.f67987e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("EditorialContent(id=", this.f67984a, ", title=", this.f67985b, ", description=");
        sbS.append(this.f67986c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", link=");
        sbS.append(this.f67987e);
        sbS.append(")");
        return sbS.toString();
    }
}

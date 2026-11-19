package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSlide;", "", "", "title", "surtitle", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "contributionLink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleSlide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f67695c;
    public final ImmersiveArticleSizeCard d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLink f67696e;

    public ImmersiveArticleSlide(String str, String str2, Asset asset, ImmersiveArticleSizeCard immersiveArticleSizeCard, ContributionLink contributionLink) {
        str.getClass();
        asset.getClass();
        immersiveArticleSizeCard.getClass();
        contributionLink.getClass();
        this.f67693a = str;
        this.f67694b = str2;
        this.f67695c = asset;
        this.d = immersiveArticleSizeCard;
        this.f67696e = contributionLink;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSlide)) {
            return false;
        }
        ImmersiveArticleSlide immersiveArticleSlide = (ImmersiveArticleSlide) obj;
        return Intrinsics.c(this.f67693a, immersiveArticleSlide.f67693a) && Intrinsics.c(this.f67694b, immersiveArticleSlide.f67694b) && Intrinsics.c(this.f67695c, immersiveArticleSlide.f67695c) && this.d == immersiveArticleSlide.d && Intrinsics.c(this.f67696e, immersiveArticleSlide.f67696e);
    }

    public final int hashCode() {
        int iHashCode = this.f67693a.hashCode() * 31;
        String str = this.f67694b;
        return this.f67696e.hashCode() + ((this.d.hashCode() + ((this.f67695c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSlide(title=", this.f67693a, ", surtitle=", this.f67694b, ", asset=");
        sbS.append(this.f67695c);
        sbS.append(", ratio=");
        sbS.append(this.d);
        sbS.append(", contributionLink=");
        sbS.append(this.f67696e);
        sbS.append(")");
        return sbS.toString();
    }
}

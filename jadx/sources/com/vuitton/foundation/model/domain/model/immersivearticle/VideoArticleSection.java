package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class VideoArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f67738c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoArticleSection(String str, ImmersiveArticleSizeCard immersiveArticleSizeCard, Asset asset) {
        super(null);
        str.getClass();
        immersiveArticleSizeCard.getClass();
        this.f67736a = str;
        this.f67737b = immersiveArticleSizeCard;
        this.f67738c = asset;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoArticleSection)) {
            return false;
        }
        VideoArticleSection videoArticleSection = (VideoArticleSection) obj;
        return Intrinsics.c(this.f67736a, videoArticleSection.f67736a) && this.f67737b == videoArticleSection.f67737b && Intrinsics.c(this.f67738c, videoArticleSection.f67738c);
    }

    public final int hashCode() {
        int iHashCode = (this.f67737b.hashCode() + (this.f67736a.hashCode() * 31)) * 31;
        Asset asset = this.f67738c;
        return iHashCode + (asset == null ? 0 : asset.hashCode());
    }

    public final String toString() {
        return "VideoArticleSection(key=" + this.f67736a + ", ratio=" + this.f67737b + ", asset=" + this.f67738c + ")";
    }
}

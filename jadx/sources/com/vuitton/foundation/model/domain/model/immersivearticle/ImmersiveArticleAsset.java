package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleAsset;", "", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "", "caption", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImage f67629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideo f67630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67631c;
    public final ImmersiveArticleSizeCard d;

    public ImmersiveArticleAsset(AssetImage assetImage, AssetVideo assetVideo, String str, ImmersiveArticleSizeCard immersiveArticleSizeCard) {
        str.getClass();
        this.f67629a = assetImage;
        this.f67630b = assetVideo;
        this.f67631c = str;
        this.d = immersiveArticleSizeCard;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAsset)) {
            return false;
        }
        ImmersiveArticleAsset immersiveArticleAsset = (ImmersiveArticleAsset) obj;
        return Intrinsics.c(this.f67629a, immersiveArticleAsset.f67629a) && Intrinsics.c(this.f67630b, immersiveArticleAsset.f67630b) && Intrinsics.c(this.f67631c, immersiveArticleAsset.f67631c) && this.d == immersiveArticleAsset.d;
    }

    public final int hashCode() {
        AssetImage assetImage = this.f67629a;
        int iHashCode = (assetImage == null ? 0 : assetImage.hashCode()) * 31;
        AssetVideo assetVideo = this.f67630b;
        int iB = fc.b((iHashCode + (assetVideo == null ? 0 : assetVideo.hashCode())) * 31, 31, this.f67631c);
        ImmersiveArticleSizeCard immersiveArticleSizeCard = this.d;
        return iB + (immersiveArticleSizeCard != null ? immersiveArticleSizeCard.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleAsset(image=" + this.f67629a + ", video=" + this.f67630b + ", caption=" + this.f67631c + ", ratio=" + this.d + ")";
    }
}

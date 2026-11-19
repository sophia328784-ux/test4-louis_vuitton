package com.vuitton.foundation.model.domain.model.story;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/story/StoryAsset;", "", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoryAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImage f68271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideo f68272b;

    public StoryAsset(AssetImage assetImage, AssetVideo assetVideo) {
        this.f68271a = assetImage;
        this.f68272b = assetVideo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoryAsset)) {
            return false;
        }
        StoryAsset storyAsset = (StoryAsset) obj;
        return Intrinsics.c(this.f68271a, storyAsset.f68271a) && Intrinsics.c(this.f68272b, storyAsset.f68272b);
    }

    public final int hashCode() {
        AssetImage assetImage = this.f68271a;
        int iHashCode = (assetImage == null ? 0 : assetImage.hashCode()) * 31;
        AssetVideo assetVideo = this.f68272b;
        return iHashCode + (assetVideo != null ? assetVideo.hashCode() : 0);
    }

    public final String toString() {
        return "StoryAsset(image=" + this.f68271a + ", video=" + this.f68272b + ")";
    }
}

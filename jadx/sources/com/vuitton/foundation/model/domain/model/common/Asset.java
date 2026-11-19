package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/Asset;", "", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Asset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImage f67106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideo f67107b;

    public Asset(AssetImage assetImage, AssetVideo assetVideo) {
        this.f67106a = assetImage;
        this.f67107b = assetVideo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Asset)) {
            return false;
        }
        Asset asset = (Asset) obj;
        return Intrinsics.c(this.f67106a, asset.f67106a) && Intrinsics.c(this.f67107b, asset.f67107b);
    }

    public final int hashCode() {
        AssetImage assetImage = this.f67106a;
        int iHashCode = (assetImage == null ? 0 : assetImage.hashCode()) * 31;
        AssetVideo assetVideo = this.f67107b;
        return iHashCode + (assetVideo != null ? assetVideo.hashCode() : 0);
    }

    public final String toString() {
        return "Asset(image=" + this.f67106a + ", video=" + this.f67107b + ")";
    }
}

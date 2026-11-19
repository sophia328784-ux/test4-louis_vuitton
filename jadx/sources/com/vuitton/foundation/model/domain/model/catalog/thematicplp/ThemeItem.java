package com.vuitton.foundation.model.domain.model.catalog.thematicplp;

import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThemeItem;", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "product", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "brandContent", "<init>", "(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThemeItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductShort f67041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Asset f67042b;

    public ThemeItem(ProductShort productShort, Asset asset) {
        productShort.getClass();
        this.f67041a = productShort;
        this.f67042b = asset;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeItem)) {
            return false;
        }
        ThemeItem themeItem = (ThemeItem) obj;
        return Intrinsics.c(this.f67041a, themeItem.f67041a) && Intrinsics.c(this.f67042b, themeItem.f67042b);
    }

    public final int hashCode() {
        int iHashCode = this.f67041a.hashCode() * 31;
        Asset asset = this.f67042b;
        return iHashCode + (asset == null ? 0 : asset.hashCode());
    }

    public final String toString() {
        return "ThemeItem(product=" + this.f67041a + ", brandContent=" + this.f67042b + ")";
    }
}

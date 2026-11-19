package com.vuitton.foundation.model.domain.model.productshortlist;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;", "", "", "name", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductShortCharacteristic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImage f68135b;

    public ProductShortCharacteristic(String str, AssetImage assetImage) {
        str.getClass();
        assetImage.getClass();
        this.f68134a = str;
        this.f68135b = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductShortCharacteristic)) {
            return false;
        }
        ProductShortCharacteristic productShortCharacteristic = (ProductShortCharacteristic) obj;
        return Intrinsics.c(this.f68134a, productShortCharacteristic.f68134a) && Intrinsics.c(this.f68135b, productShortCharacteristic.f68135b);
    }

    public final int hashCode() {
        return this.f68135b.hashCode() + (this.f68134a.hashCode() * 31);
    }

    public final String toString() {
        return "ProductShortCharacteristic(name=" + this.f68134a + ", image=" + this.f68135b + ")";
    }
}

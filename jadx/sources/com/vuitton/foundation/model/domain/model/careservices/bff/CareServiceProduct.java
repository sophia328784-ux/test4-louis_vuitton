package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f66883c;

    public CareServiceProduct(String str, String str2, AssetImage assetImage, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f66881a = str;
        this.f66882b = str2;
        this.f66883c = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceProduct)) {
            return false;
        }
        CareServiceProduct careServiceProduct = (CareServiceProduct) obj;
        String str = careServiceProduct.f66881a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66881a.equals(str) && this.f66882b.equals(careServiceProduct.f66882b) && Intrinsics.c(this.f66883c, careServiceProduct.f66883c);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f66881a.hashCode() * 31, 31, this.f66882b);
        AssetImage assetImage = this.f66883c;
        return iB + (assetImage == null ? 0 : assetImage.hashCode());
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CareServiceProduct(sku=", this.f66881a, ", name=", this.f66882b, ", image=");
        sbS.append(this.f66883c);
        sbS.append(")");
        return sbS.toString();
    }
}

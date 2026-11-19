package com.vuitton.foundation.model.domain.model.producttiny;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", b.a.f24015b, "", "name", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;", "price", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductTiny {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f68148c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductShortPrice f68149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductBackground f68150f;
    public final String g;

    public ProductTiny(String str, String str2, AssetImage assetImage, String str3, ProductShortPrice productShortPrice, ProductBackground productBackground, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        assetImage.getClass();
        str3.getClass();
        productBackground.getClass();
        this.f68146a = str;
        this.f68147b = str2;
        this.f68148c = assetImage;
        this.d = str3;
        this.f68149e = productShortPrice;
        this.f68150f = productBackground;
        this.g = str4;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductTiny)) {
            return false;
        }
        ProductTiny productTiny = (ProductTiny) obj;
        String str = productTiny.f68146a;
        String str2 = this.f68146a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        if (!zC || !Intrinsics.c(this.f68147b, productTiny.f68147b) || !Intrinsics.c(this.f68148c, productTiny.f68148c)) {
            return false;
        }
        String str3 = productTiny.d;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return Intrinsics.c(this.d, str3) && Intrinsics.c(this.f68149e, productTiny.f68149e) && this.f68150f == productTiny.f68150f && Intrinsics.c(this.g, productTiny.g);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f68146a;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iHashCode2 = (this.f68148c.hashCode() + fc.b(iHashCode * 31, 31, this.f68147b)) * 31;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iB = fc.b(iHashCode2, 31, this.d);
        ProductShortPrice productShortPrice = this.f68149e;
        int iHashCode3 = (this.f68150f.hashCode() + ((iB + (productShortPrice == null ? 0 : productShortPrice.hashCode())) * 31)) * 31;
        String str2 = this.g;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f68146a;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
        }
        SkuId.Companion companion2 = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ProductTiny(id=", str, ", name=", this.f68147b, ", image=");
        sbS.append(this.f68148c);
        sbS.append(", sku=");
        sbS.append(this.d);
        sbS.append(", price=");
        sbS.append(this.f68149e);
        sbS.append(", background=");
        sbS.append(this.f68150f);
        sbS.append(", color=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ ProductTiny(String str, String str2, AssetImage assetImage, String str3, ProductShortPrice productShortPrice, ProductBackground productBackground, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetImage, str3, productShortPrice, productBackground, (i2 & 64) != 0 ? null : str4, null);
    }
}

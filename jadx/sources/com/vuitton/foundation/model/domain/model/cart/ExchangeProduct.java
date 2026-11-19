package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;", "", "", "carat", "color", "image", "material", "name", "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "priceInfo", "size", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66950c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CartPrice f66952f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66953h;

    public ExchangeProduct(String str, String str2, String str3, String str4, String str5, CartPrice cartPrice, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        str5.getClass();
        cartPrice.getClass();
        str7.getClass();
        this.f66948a = str;
        this.f66949b = str2;
        this.f66950c = str3;
        this.d = str4;
        this.f66951e = str5;
        this.f66952f = cartPrice;
        this.g = str6;
        this.f66953h = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeProduct)) {
            return false;
        }
        ExchangeProduct exchangeProduct = (ExchangeProduct) obj;
        if (!Intrinsics.c(this.f66948a, exchangeProduct.f66948a) || !Intrinsics.c(this.f66949b, exchangeProduct.f66949b) || !Intrinsics.c(this.f66950c, exchangeProduct.f66950c) || !Intrinsics.c(this.d, exchangeProduct.d) || !this.f66951e.equals(exchangeProduct.f66951e) || !this.f66952f.equals(exchangeProduct.f66952f) || !Intrinsics.c(this.g, exchangeProduct.g)) {
            return false;
        }
        String str = exchangeProduct.f66953h;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66953h.equals(str);
    }

    public final int hashCode() {
        String str = this.f66948a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f66949b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66950c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (this.f66952f.hashCode() + fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f66951e)) * 31;
        String str5 = this.g;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66953h.hashCode() + iHashCode5;
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ExchangeProduct(carat=", this.f66948a, ", color=", this.f66949b, ", image=");
        cj.C(sbS, this.f66950c, ", material=", this.d, ", name=");
        sbS.append(this.f66951e);
        sbS.append(", priceInfo=");
        sbS.append(this.f66952f);
        sbS.append(", size=");
        return tr.l(sbS, this.g, ", sku=", this.f66953h, ")");
    }
}

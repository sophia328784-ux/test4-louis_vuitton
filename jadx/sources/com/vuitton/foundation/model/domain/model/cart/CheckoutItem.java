package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.model.product.ProductImage;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationConfiguration;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "identifier", "", "name", "", "quantity", "Lcom/vuitton/foundation/model/domain/model/product/ProductImage;", "image", "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "priceInfo", "color", "size", "material", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;", "customizationConfiguration", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/product/ProductImage;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f66943c;
    public final ProductImage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPrice f66944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66945f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CustomizationConfiguration f66947i;

    public CheckoutItem(String str, String str2, int i2, ProductImage productImage, CartPrice cartPrice, String str3, String str4, String str5, CustomizationConfiguration customizationConfiguration, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        productImage.getClass();
        cartPrice.getClass();
        this.f66941a = str;
        this.f66942b = str2;
        this.f66943c = i2;
        this.d = productImage;
        this.f66944e = cartPrice;
        this.f66945f = str3;
        this.g = str4;
        this.f66946h = str5;
        this.f66947i = customizationConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutItem)) {
            return false;
        }
        CheckoutItem checkoutItem = (CheckoutItem) obj;
        String str = checkoutItem.f66941a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f66941a.equals(str) && this.f66942b.equals(checkoutItem.f66942b) && this.f66943c == checkoutItem.f66943c && this.d.equals(checkoutItem.d) && this.f66944e.equals(checkoutItem.f66944e) && Intrinsics.c(this.f66945f, checkoutItem.f66945f) && Intrinsics.c(this.g, checkoutItem.g) && Intrinsics.c(this.f66946h, checkoutItem.f66946h) && Intrinsics.c(this.f66947i, checkoutItem.f66947i);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = (this.f66944e.hashCode() + ((this.d.hashCode() + tr.b(this.f66943c, fc.b(this.f66941a.hashCode() * 31, 31, this.f66942b), 31)) * 31)) * 31;
        String str = this.f66945f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f66946h;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CustomizationConfiguration customizationConfiguration = this.f66947i;
        return iHashCode4 + (customizationConfiguration != null ? customizationConfiguration.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CheckoutItem(identifier=", this.f66941a, ", name=", this.f66942b, ", quantity=");
        sbS.append(this.f66943c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", priceInfo=");
        sbS.append(this.f66944e);
        sbS.append(", color=");
        sbS.append(this.f66945f);
        sbS.append(", size=");
        cj.C(sbS, this.g, ", material=", this.f66946h, ", customizationConfiguration=");
        sbS.append(this.f66947i);
        sbS.append(")");
        return sbS.toString();
    }
}

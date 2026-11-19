package com.vuitton.foundation.model.domain.model.plp;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001BÁ\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0015\u0012\u0006\u0010\u001d\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0015¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", b.a.f24015b, "", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "category", "type", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "mainAsset", "", "assetList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;", "colorVariationList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;", "color", "tags", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;", "price", "", "isVATIncluded", "shareUrl", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "launchDate", "isArAvailable", "isTryOnAvailable", "isPersonalizationAvailable", "isInWishlist", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlpProductItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67828c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Asset f67830f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f67831h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProductShortCharacteristic f67832i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f67833j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProductShortPrice f67834k;
    public final boolean l;
    public final String m;
    public final ProductBackground n;
    public final String o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;

    public PlpProductItem(String str, String str2, String str3, String str4, String str5, Asset asset, List list, List list2, ProductShortCharacteristic productShortCharacteristic, List list3, ProductShortPrice productShortPrice, boolean z, String str6, ProductBackground productBackground, String str7, boolean z2, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        str3.getClass();
        asset.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        productBackground.getClass();
        this.f67826a = str;
        this.f67827b = str2;
        this.f67828c = str3;
        this.d = str4;
        this.f67829e = str5;
        this.f67830f = asset;
        this.g = list;
        this.f67831h = list2;
        this.f67832i = productShortCharacteristic;
        this.f67833j = list3;
        this.f67834k = productShortPrice;
        this.l = z;
        this.m = str6;
        this.n = productBackground;
        this.o = str7;
        this.p = z2;
        this.q = z3;
        this.r = z4;
        this.s = z5;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlpProductItem)) {
            return false;
        }
        PlpProductItem plpProductItem = (PlpProductItem) obj;
        String str = plpProductItem.f67826a;
        String str2 = this.f67826a;
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
        if (!zC || !Intrinsics.c(this.f67827b, plpProductItem.f67827b)) {
            return false;
        }
        String str3 = plpProductItem.f67828c;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return Intrinsics.c(this.f67828c, str3) && Intrinsics.c(this.d, plpProductItem.d) && Intrinsics.c(this.f67829e, plpProductItem.f67829e) && Intrinsics.c(this.f67830f, plpProductItem.f67830f) && Intrinsics.c(this.g, plpProductItem.g) && Intrinsics.c(this.f67831h, plpProductItem.f67831h) && Intrinsics.c(this.f67832i, plpProductItem.f67832i) && Intrinsics.c(this.f67833j, plpProductItem.f67833j) && Intrinsics.c(this.f67834k, plpProductItem.f67834k) && this.l == plpProductItem.l && Intrinsics.c(this.m, plpProductItem.m) && this.n == plpProductItem.n && Intrinsics.c(this.o, plpProductItem.o) && this.p == plpProductItem.p && this.q == plpProductItem.q && this.r == plpProductItem.r && this.s == plpProductItem.s;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f67826a;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iB = fc.b(iHashCode * 31, 31, this.f67827b);
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iB2 = fc.b(iB, 31, this.f67828c);
        String str2 = this.d;
        int iHashCode2 = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67829e;
        int iA = n00.a(n00.a((this.f67830f.hashCode() + ((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31, 31, this.g), 31, this.f67831h);
        ProductShortCharacteristic productShortCharacteristic = this.f67832i;
        int iA2 = n00.a((iA + (productShortCharacteristic == null ? 0 : productShortCharacteristic.hashCode())) * 31, 31, this.f67833j);
        ProductShortPrice productShortPrice = this.f67834k;
        int iB3 = o60.b((iA2 + (productShortPrice == null ? 0 : productShortPrice.hashCode())) * 31, 31, this.l);
        String str4 = this.m;
        int iHashCode3 = (this.n.hashCode() + ((iB3 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31;
        String str5 = this.o;
        return Boolean.hashCode(this.s) + o60.b(o60.b(o60.b((iHashCode3 + (str5 != null ? str5.hashCode() : 0)) * 31, 31, this.p), 31, this.q), 31, this.r);
    }

    public final String toString() {
        String str = this.f67826a;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
        }
        SkuId.Companion companion2 = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("PlpProductItem(id=", str, ", name=", this.f67827b, ", sku=");
        cj.C(sbS, this.f67828c, ", category=", this.d, ", type=");
        sbS.append(this.f67829e);
        sbS.append(", mainAsset=");
        sbS.append(this.f67830f);
        sbS.append(", assetList=");
        a.C(sbS, this.g, ", colorVariationList=", this.f67831h, ", color=");
        sbS.append(this.f67832i);
        sbS.append(", tags=");
        sbS.append(this.f67833j);
        sbS.append(", price=");
        sbS.append(this.f67834k);
        sbS.append(", isVATIncluded=");
        sbS.append(this.l);
        sbS.append(", shareUrl=");
        sbS.append(this.m);
        sbS.append(", background=");
        sbS.append(this.n);
        sbS.append(", launchDate=");
        pq0.A(this.o, ", isArAvailable=", ", isTryOnAvailable=", sbS, this.p);
        fc.y(sbS, this.q, ", isPersonalizationAvailable=", this.r, ", isInWishlist=");
        return a.p(sbS, this.s, ")");
    }

    public /* synthetic */ PlpProductItem(String str, String str2, String str3, String str4, String str5, Asset asset, List list, List list2, ProductShortCharacteristic productShortCharacteristic, List list3, ProductShortPrice productShortPrice, boolean z, String str6, ProductBackground productBackground, String str7, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, asset, list, list2, productShortCharacteristic, list3, productShortPrice, z, str6, productBackground, str7, z2, z3, z4, (i2 & 262144) != 0 ? false : z5, null);
    }
}

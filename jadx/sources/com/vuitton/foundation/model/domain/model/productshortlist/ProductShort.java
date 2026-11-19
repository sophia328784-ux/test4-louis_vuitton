package com.vuitton.foundation.model.domain.model.productshortlist;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BÁ\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0010\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0006\u0010\u001f\u001a\u00020\u0010\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", b.a.f24015b, "", "name", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "mainAsset", "category", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;", "colorVariationList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;", "color", "", "showARModel", "type", "assetList", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "tags", "launchDate", "Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;", "wishListItemId", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;", "price", "isPersonalizationAvailable", "Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;", "virtualTryOn", "isBackInStockEnabled", "shareUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductShort {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Asset f68127c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f68129f;
    public final ProductShortCharacteristic g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f68130h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f68131i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f68132j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProductBackground f68133k;
    public final List l;
    public final String m;
    public final String n;
    public final ProductShortPrice o;
    public final boolean p;
    public final VirtualTryOn q;
    public final boolean r;
    public final String s;

    public ProductShort(String str, String str2, Asset asset, String str3, String str4, List list, ProductShortCharacteristic productShortCharacteristic, boolean z, String str5, List list2, ProductBackground productBackground, List list3, String str6, String str7, ProductShortPrice productShortPrice, boolean z2, VirtualTryOn virtualTryOn, boolean z3, String str8, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        asset.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        list2.getClass();
        productBackground.getClass();
        list3.getClass();
        this.f68125a = str;
        this.f68126b = str2;
        this.f68127c = asset;
        this.d = str3;
        this.f68128e = str4;
        this.f68129f = list;
        this.g = productShortCharacteristic;
        this.f68130h = z;
        this.f68131i = str5;
        this.f68132j = list2;
        this.f68133k = productBackground;
        this.l = list3;
        this.m = str6;
        this.n = str7;
        this.o = productShortPrice;
        this.p = z2;
        this.q = virtualTryOn;
        this.r = z3;
        this.s = str8;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b9  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (this != obj) {
            if (obj instanceof ProductShort) {
                ProductShort productShort = (ProductShort) obj;
                String str = productShort.f68125a;
                String str2 = this.f68125a;
                if (str2 == null) {
                    if (str == null) {
                        zEquals = true;
                    } else {
                        zEquals = false;
                    }
                } else if (str == null) {
                    zEquals = false;
                } else {
                    ProductId.Companion companion = ProductId.INSTANCE;
                    zEquals = str2.equals(str);
                }
                if (zEquals && this.f68126b.equals(productShort.f68126b) && this.f68127c.equals(productShort.f68127c) && Intrinsics.c(this.d, productShort.d)) {
                    String str3 = productShort.f68128e;
                    SkuId.Companion companion2 = SkuId.INSTANCE;
                    if (this.f68128e.equals(str3) && this.f68129f.equals(productShort.f68129f) && Intrinsics.c(this.g, productShort.g) && this.f68130h == productShort.f68130h && this.f68131i.equals(productShort.f68131i) && this.f68132j.equals(productShort.f68132j) && this.f68133k == productShort.f68133k && this.l.equals(productShort.l) && Intrinsics.c(this.m, productShort.m)) {
                        String str4 = productShort.n;
                        String str5 = this.n;
                        if (str5 == null) {
                            if (str4 == null) {
                                zEquals2 = true;
                            } else {
                                zEquals2 = false;
                            }
                        } else if (str4 == null) {
                            zEquals2 = false;
                        } else {
                            WishlistItemId.Companion companion3 = WishlistItemId.f68288b;
                            zEquals2 = str5.equals(str4);
                        }
                        if (zEquals2 && Intrinsics.c(this.o, productShort.o) && this.p == productShort.p && Intrinsics.c(this.q, productShort.q) && this.r == productShort.r && Intrinsics.c(this.s, productShort.s)) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        String str = this.f68125a;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int iHashCode3 = (this.f68127c.hashCode() + fc.b(iHashCode * 31, 31, this.f68126b)) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iA = n00.a(fc.b(iHashCode4, 31, this.f68128e), 31, this.f68129f);
        ProductShortCharacteristic productShortCharacteristic = this.g;
        int iA2 = n00.a((this.f68133k.hashCode() + n00.a(fc.b(o60.b((iA + (productShortCharacteristic == null ? 0 : productShortCharacteristic.hashCode())) * 31, 31, this.f68130h), 31, this.f68131i), 31, this.f68132j)) * 31, 31, this.l);
        String str3 = this.m;
        int iHashCode5 = (iA2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.n;
        if (str4 == null) {
            iHashCode2 = 0;
        } else {
            WishlistItemId.Companion companion3 = WishlistItemId.f68288b;
            iHashCode2 = str4.hashCode();
        }
        int i2 = (iHashCode5 + iHashCode2) * 31;
        ProductShortPrice productShortPrice = this.o;
        int iB = o60.b((i2 + (productShortPrice == null ? 0 : productShortPrice.hashCode())) * 31, 31, this.p);
        VirtualTryOn virtualTryOn = this.q;
        int iB2 = o60.b((iB + (virtualTryOn == null ? 0 : virtualTryOn.f68036a.hashCode())) * 31, 31, this.r);
        String str5 = this.s;
        return iB2 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f68125a;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
        }
        SkuId.Companion companion2 = SkuId.INSTANCE;
        String str2 = this.n;
        String strA = str2 != null ? WishlistItemId.a(str2) : "null";
        StringBuilder sbS = fc.s("ProductShort(id=", str, ", name=", this.f68126b, ", mainAsset=");
        sbS.append(this.f68127c);
        sbS.append(", category=");
        sbS.append(this.d);
        sbS.append(", sku=");
        d21.z(this.f68128e, ", colorVariationList=", ", color=", sbS, this.f68129f);
        sbS.append(this.g);
        sbS.append(", showARModel=");
        sbS.append(this.f68130h);
        sbS.append(", type=");
        d21.z(this.f68131i, ", assetList=", ", background=", sbS, this.f68132j);
        sbS.append(this.f68133k);
        sbS.append(", tags=");
        sbS.append(this.l);
        sbS.append(", launchDate=");
        cj.C(sbS, this.m, ", wishListItemId=", strA, ", price=");
        sbS.append(this.o);
        sbS.append(", isPersonalizationAvailable=");
        sbS.append(this.p);
        sbS.append(", virtualTryOn=");
        sbS.append(this.q);
        sbS.append(", isBackInStockEnabled=");
        sbS.append(this.r);
        sbS.append(", shareUrl=");
        return n00.r(this.s, ")", sbS);
    }
}

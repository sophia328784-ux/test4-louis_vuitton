package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BÁ\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0010\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0006\u0010\u001f\u001a\u00020\u0010\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", b.a.f24015b, "", "name", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "mainAsset", "category", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;", "colorVariationList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;", "color", "", "showARModel", "type", "assetList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;", "background", "tags", "launchDate", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/WishlistItemIdUiModel;", "wishListItemId", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "isPersonalizationAvailable", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;", "virtualTryOn", "isBackInStockEnabled", "shareUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/WishlistItemIdUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductShortUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f62986c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f62987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f62988f;
    public final ProductShortCharacteristicUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f62989h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f62990i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f62991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ProductBackgroundUiModel f62992k;
    public final List l;
    public final String m;
    public final WishlistItemIdUiModel n;
    public final ProductShortPriceUiModel o;
    public final boolean p;
    public final VirtualTryOnUiModel q;
    public final boolean r;
    public final String s;

    public ProductShortUiModel(String str, String str2, AssetUiModel assetUiModel, String str3, String str4, List list, ProductShortCharacteristicUiModel productShortCharacteristicUiModel, boolean z, String str5, List list2, ProductBackgroundUiModel productBackgroundUiModel, List list3, String str6, WishlistItemIdUiModel wishlistItemIdUiModel, ProductShortPriceUiModel productShortPriceUiModel, boolean z2, VirtualTryOnUiModel virtualTryOnUiModel, boolean z3, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        assetUiModel.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        list2.getClass();
        productBackgroundUiModel.getClass();
        list3.getClass();
        this.f62984a = str;
        this.f62985b = str2;
        this.f62986c = assetUiModel;
        this.d = str3;
        this.f62987e = str4;
        this.f62988f = list;
        this.g = productShortCharacteristicUiModel;
        this.f62989h = z;
        this.f62990i = str5;
        this.f62991j = list2;
        this.f62992k = productBackgroundUiModel;
        this.l = list3;
        this.m = str6;
        this.n = wishlistItemIdUiModel;
        this.o = productShortPriceUiModel;
        this.p = z2;
        this.q = virtualTryOnUiModel;
        this.r = z3;
        this.s = str7;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof ProductShortUiModel) {
                ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj;
                String str = productShortUiModel.f62984a;
                String str2 = this.f62984a;
                if (str2 == null) {
                    if (str == null) {
                        zEquals = true;
                    } else {
                        zEquals = false;
                    }
                } else if (str == null) {
                    zEquals = false;
                } else {
                    ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
                    zEquals = str2.equals(str);
                }
                if (zEquals && this.f62985b.equals(productShortUiModel.f62985b) && this.f62986c.equals(productShortUiModel.f62986c) && Intrinsics.c(this.d, productShortUiModel.d)) {
                    String str3 = productShortUiModel.f62987e;
                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                    if (this.f62987e.equals(str3) && this.f62988f.equals(productShortUiModel.f62988f) && Intrinsics.c(this.g, productShortUiModel.g) && this.f62989h == productShortUiModel.f62989h && this.f62990i.equals(productShortUiModel.f62990i) && this.f62991j.equals(productShortUiModel.f62991j) && this.f62992k == productShortUiModel.f62992k && this.l.equals(productShortUiModel.l) && Intrinsics.c(this.m, productShortUiModel.m) && Intrinsics.c(this.n, productShortUiModel.n) && Intrinsics.c(this.o, productShortUiModel.o) && this.p == productShortUiModel.p && Intrinsics.c(this.q, productShortUiModel.q) && this.r == productShortUiModel.r && Intrinsics.c(this.s, productShortUiModel.s)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f62984a;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
            iHashCode = str.hashCode();
        }
        int iHashCode2 = (this.f62986c.hashCode() + fc.b(iHashCode * 31, 31, this.f62985b)) * 31;
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        int iA = n00.a(fc.b(iHashCode3, 31, this.f62987e), 31, this.f62988f);
        ProductShortCharacteristicUiModel productShortCharacteristicUiModel = this.g;
        int iA2 = n00.a((this.f62992k.hashCode() + n00.a(fc.b(o60.b((iA + (productShortCharacteristicUiModel == null ? 0 : productShortCharacteristicUiModel.hashCode())) * 31, 31, this.f62989h), 31, this.f62990i), 31, this.f62991j)) * 31, 31, this.l);
        String str3 = this.m;
        int iHashCode4 = (iA2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        WishlistItemIdUiModel wishlistItemIdUiModel = this.n;
        int iHashCode5 = (iHashCode4 + (wishlistItemIdUiModel == null ? 0 : wishlistItemIdUiModel.f63000a.hashCode())) * 31;
        ProductShortPriceUiModel productShortPriceUiModel = this.o;
        int iB = o60.b((iHashCode5 + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31, 31, this.p);
        VirtualTryOnUiModel virtualTryOnUiModel = this.q;
        int iB2 = o60.b((iB + (virtualTryOnUiModel == null ? 0 : virtualTryOnUiModel.f62208b.hashCode())) * 31, 31, this.r);
        String str4 = this.s;
        return iB2 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f62984a;
        if (str == null) {
            str = "null";
        } else {
            ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
        }
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("ProductShortUiModel(id=", str, ", name=", this.f62985b, ", mainAsset=");
        sbS.append(this.f62986c);
        sbS.append(", category=");
        sbS.append(this.d);
        sbS.append(", sku=");
        d21.z(this.f62987e, ", colorVariationList=", ", color=", sbS, this.f62988f);
        sbS.append(this.g);
        sbS.append(", showARModel=");
        sbS.append(this.f62989h);
        sbS.append(", type=");
        d21.z(this.f62990i, ", assetList=", ", background=", sbS, this.f62991j);
        sbS.append(this.f62992k);
        sbS.append(", tags=");
        sbS.append(this.l);
        sbS.append(", launchDate=");
        sbS.append(this.m);
        sbS.append(", wishListItemId=");
        sbS.append(this.n);
        sbS.append(", price=");
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

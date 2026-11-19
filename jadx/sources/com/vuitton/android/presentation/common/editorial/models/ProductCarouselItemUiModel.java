package com.vuitton.android.presentation.common.editorial.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBackgroundUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "name", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;", "background", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "color", "", "isInWishlist", "isVatIncluded", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductCarouselItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f50869c;
    public final ProductBackgroundUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductShortPriceUiModel f50870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f50871f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f50872h;

    public /* synthetic */ ProductCarouselItemUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, ProductBackgroundUiModel productBackgroundUiModel, ProductShortPriceUiModel productShortPriceUiModel, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetImageUiModel, productBackgroundUiModel, productShortPriceUiModel, (i2 & 32) != 0 ? null : str3, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? false : z2, null);
    }

    public static ProductCarouselItemUiModel a(ProductCarouselItemUiModel productCarouselItemUiModel, boolean z) {
        String str = productCarouselItemUiModel.f50867a;
        String str2 = productCarouselItemUiModel.f50868b;
        AssetImageUiModel assetImageUiModel = productCarouselItemUiModel.f50869c;
        ProductBackgroundUiModel productBackgroundUiModel = productCarouselItemUiModel.d;
        ProductShortPriceUiModel productShortPriceUiModel = productCarouselItemUiModel.f50870e;
        String str3 = productCarouselItemUiModel.f50871f;
        boolean z2 = productCarouselItemUiModel.f50872h;
        str.getClass();
        str2.getClass();
        assetImageUiModel.getClass();
        productBackgroundUiModel.getClass();
        return new ProductCarouselItemUiModel(str, str2, assetImageUiModel, productBackgroundUiModel, productShortPriceUiModel, str3, z, z2, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductCarouselItemUiModel)) {
            return false;
        }
        ProductCarouselItemUiModel productCarouselItemUiModel = (ProductCarouselItemUiModel) obj;
        String str = productCarouselItemUiModel.f50867a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f50867a, str) && Intrinsics.c(this.f50868b, productCarouselItemUiModel.f50868b) && Intrinsics.c(this.f50869c, productCarouselItemUiModel.f50869c) && this.d == productCarouselItemUiModel.d && Intrinsics.c(this.f50870e, productCarouselItemUiModel.f50870e) && Intrinsics.c(this.f50871f, productCarouselItemUiModel.f50871f) && this.g == productCarouselItemUiModel.g && this.f50872h == productCarouselItemUiModel.f50872h;
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iHashCode = (this.d.hashCode() + ((this.f50869c.hashCode() + fc.b(this.f50867a.hashCode() * 31, 31, this.f50868b)) * 31)) * 31;
        ProductShortPriceUiModel productShortPriceUiModel = this.f50870e;
        int iHashCode2 = (iHashCode + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31;
        String str = this.f50871f;
        return Boolean.hashCode(this.f50872h) + o60.b((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, 31, this.g);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("ProductCarouselItemUiModel(skuId=", this.f50867a, ", name=", this.f50868b, ", image=");
        sbS.append(this.f50869c);
        sbS.append(", background=");
        sbS.append(this.d);
        sbS.append(", price=");
        sbS.append(this.f50870e);
        sbS.append(", color=");
        sbS.append(this.f50871f);
        sbS.append(", isInWishlist=");
        return pq0.p(sbS, this.g, ", isVatIncluded=", this.f50872h, ")");
    }

    public ProductCarouselItemUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, ProductBackgroundUiModel productBackgroundUiModel, ProductShortPriceUiModel productShortPriceUiModel, String str3, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        assetImageUiModel.getClass();
        productBackgroundUiModel.getClass();
        this.f50867a = str;
        this.f50868b = str2;
        this.f50869c = assetImageUiModel;
        this.d = productBackgroundUiModel;
        this.f50870e = productShortPriceUiModel;
        this.f50871f = str3;
        this.g = z;
        this.f50872h = z2;
    }
}

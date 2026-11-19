package com.vuitton.android.presentation.model.common;

import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBackgroundUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", b.a.f24015b, "", "name", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;", "background", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductTinyUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f51792c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductShortPriceUiModel f51793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductBackgroundUiModel f51794f;
    public final String g;

    public ProductTinyUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, String str3, ProductShortPriceUiModel productShortPriceUiModel, ProductBackgroundUiModel productBackgroundUiModel, String str4, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        assetImageUiModel.getClass();
        str3.getClass();
        productBackgroundUiModel.getClass();
        this.f51790a = str;
        this.f51791b = str2;
        this.f51792c = assetImageUiModel;
        this.d = str3;
        this.f51793e = productShortPriceUiModel;
        this.f51794f = productBackgroundUiModel;
        this.g = str4;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductTinyUiModel)) {
            return false;
        }
        ProductTinyUiModel productTinyUiModel = (ProductTinyUiModel) obj;
        String str = productTinyUiModel.f51790a;
        String str2 = this.f51790a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
            zC = Intrinsics.c(str2, str);
        }
        if (!zC || !Intrinsics.c(this.f51791b, productTinyUiModel.f51791b) || !Intrinsics.c(this.f51792c, productTinyUiModel.f51792c)) {
            return false;
        }
        String str3 = productTinyUiModel.d;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.d, str3) && Intrinsics.c(this.f51793e, productTinyUiModel.f51793e) && this.f51794f == productTinyUiModel.f51794f && Intrinsics.c(this.g, productTinyUiModel.g);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f51790a;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
            iHashCode = str.hashCode();
        }
        int iHashCode2 = (this.f51792c.hashCode() + fc.b(iHashCode * 31, 31, this.f51791b)) * 31;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        int iB = fc.b(iHashCode2, 31, this.d);
        ProductShortPriceUiModel productShortPriceUiModel = this.f51793e;
        int iHashCode3 = (this.f51794f.hashCode() + ((iB + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31)) * 31;
        String str2 = this.g;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f51790a;
        if (str == null) {
            str = "null";
        } else {
            ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
        }
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("ProductTinyUiModel(id=", str, ", name=", this.f51791b, ", image=");
        sbS.append(this.f51792c);
        sbS.append(", sku=");
        sbS.append(this.d);
        sbS.append(", price=");
        sbS.append(this.f51793e);
        sbS.append(", background=");
        sbS.append(this.f51794f);
        sbS.append(", color=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ ProductTinyUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, String str3, ProductShortPriceUiModel productShortPriceUiModel, ProductBackgroundUiModel productBackgroundUiModel, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetImageUiModel, str3, productShortPriceUiModel, productBackgroundUiModel, (i2 & 64) != 0 ? null : str4, null);
    }
}

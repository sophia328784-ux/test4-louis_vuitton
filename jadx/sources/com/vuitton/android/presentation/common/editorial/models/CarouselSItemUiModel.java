package com.vuitton.android.presentation.common.editorial.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "name", "image", "", "background", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "color", "slotId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselSItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f50798c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductShortPriceUiModel f50799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f50800f;
    public final String g;

    public CarouselSItemUiModel(String str, String str2, String str3, int i2, ProductShortPriceUiModel productShortPriceUiModel, String str4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f50796a = str;
        this.f50797b = str2;
        this.f50798c = str3;
        this.d = i2;
        this.f50799e = productShortPriceUiModel;
        this.f50800f = str4;
        this.g = str5;
    }

    public final ViewItemListTrackingValue a(int i2, String str, String str2) {
        SkuIdUiModel.f61763c.getClass();
        String str3 = this.f50796a;
        SkuIdUiModel.Companion.b(str3);
        ProductShortPriceUiModel productShortPriceUiModel = this.f50799e;
        return new ViewItemListTrackingValue(str, str2, str3, this.f50797b, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, productShortPriceUiModel != null ? productShortPriceUiModel.d : null, i2, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselSItemUiModel)) {
            return false;
        }
        CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj;
        String str = carouselSItemUiModel.f50796a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f50796a, str) && Intrinsics.c(this.f50797b, carouselSItemUiModel.f50797b) && Intrinsics.c(this.f50798c, carouselSItemUiModel.f50798c) && this.d == carouselSItemUiModel.d && Intrinsics.c(this.f50799e, carouselSItemUiModel.f50799e) && Intrinsics.c(this.f50800f, carouselSItemUiModel.f50800f) && Intrinsics.c(this.g, carouselSItemUiModel.g);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = tr.b(this.d, fc.b(fc.b(this.f50796a.hashCode() * 31, 31, this.f50797b), 31, this.f50798c), 31);
        ProductShortPriceUiModel productShortPriceUiModel = this.f50799e;
        int iHashCode = (iB + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31;
        String str = this.f50800f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("CarouselSItemUiModel(skuId=", this.f50796a, ", name=", this.f50797b, ", image=");
        sbS.append(this.f50798c);
        sbS.append(", background=");
        sbS.append(this.d);
        sbS.append(", price=");
        sbS.append(this.f50799e);
        sbS.append(", color=");
        sbS.append(this.f50800f);
        sbS.append(", slotId=");
        return n00.r(this.g, ")", sbS);
    }

    public /* synthetic */ CarouselSItemUiModel(String str, String str2, String str3, int i2, ProductShortPriceUiModel productShortPriceUiModel, String str4, String str5, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, i2, productShortPriceUiModel, (i3 & 32) != 0 ? null : str4, (i3 & 64) != 0 ? null : str5, null);
    }
}

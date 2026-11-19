package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0001\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuId", "", "name", "image", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "price", "", "background", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SuggestionItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64286c;
    public final ProductShortPriceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f64287e;

    public SuggestionItemUiModel(String str, String str2, String str3, ProductShortPriceUiModel productShortPriceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f64284a = str;
        this.f64285b = str2;
        this.f64286c = str3;
        this.d = productShortPriceUiModel;
        this.f64287e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuggestionItemUiModel)) {
            return false;
        }
        SuggestionItemUiModel suggestionItemUiModel = (SuggestionItemUiModel) obj;
        String str = suggestionItemUiModel.f64284a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f64284a.equals(str) && this.f64285b.equals(suggestionItemUiModel.f64285b) && this.f64286c.equals(suggestionItemUiModel.f64286c) && Intrinsics.c(this.d, suggestionItemUiModel.d) && this.f64287e == suggestionItemUiModel.f64287e;
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(fc.b(this.f64284a.hashCode() * 31, 31, this.f64285b), 31, this.f64286c);
        ProductShortPriceUiModel productShortPriceUiModel = this.d;
        return Integer.hashCode(this.f64287e) + ((iB + (productShortPriceUiModel == null ? 0 : productShortPriceUiModel.hashCode())) * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("SuggestionItemUiModel(skuId=", this.f64284a, ", name=", this.f64285b, ", image=");
        sbS.append(this.f64286c);
        sbS.append(", price=");
        sbS.append(this.d);
        sbS.append(", background=");
        return a.i(this.f64287e, ")", sbS);
    }
}

package com.vuitton.android.presentation.screen.thankyou.models;

import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "identifier", "", "name", "", "quantity", "imageUrl", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;", "priceInfo", "color", "size", "material", "", "variations", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;", "customizationConfiguration", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65266c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPriceUiModel f65267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f65268f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65269h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f65270i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CustomizationConfigurationUiModel f65271j;

    public CheckoutItemUiModel(String str, String str2, int i2, String str3, CartPriceUiModel cartPriceUiModel, String str4, String str5, String str6, List list, CustomizationConfigurationUiModel customizationConfigurationUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        cartPriceUiModel.getClass();
        list.getClass();
        this.f65264a = str;
        this.f65265b = str2;
        this.f65266c = i2;
        this.d = str3;
        this.f65267e = cartPriceUiModel;
        this.f65268f = str4;
        this.g = str5;
        this.f65269h = str6;
        this.f65270i = list;
        this.f65271j = customizationConfigurationUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutItemUiModel)) {
            return false;
        }
        CheckoutItemUiModel checkoutItemUiModel = (CheckoutItemUiModel) obj;
        String str = checkoutItemUiModel.f65264a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f65264a.equals(str) && this.f65265b.equals(checkoutItemUiModel.f65265b) && this.f65266c == checkoutItemUiModel.f65266c && this.d.equals(checkoutItemUiModel.d) && this.f65267e.equals(checkoutItemUiModel.f65267e) && Intrinsics.c(this.f65268f, checkoutItemUiModel.f65268f) && Intrinsics.c(this.g, checkoutItemUiModel.g) && Intrinsics.c(this.f65269h, checkoutItemUiModel.f65269h) && this.f65270i.equals(checkoutItemUiModel.f65270i) && Intrinsics.c(this.f65271j, checkoutItemUiModel.f65271j);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = (this.f65267e.hashCode() + fc.b(tr.b(this.f65266c, fc.b(this.f65264a.hashCode() * 31, 31, this.f65265b), 31), 31, this.d)) * 31;
        String str = this.f65268f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f65269h;
        int iA = n00.a((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f65270i);
        CustomizationConfigurationUiModel customizationConfigurationUiModel = this.f65271j;
        return iA + (customizationConfigurationUiModel != null ? customizationConfigurationUiModel.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CheckoutItemUiModel(identifier=", this.f65264a, ", name=", this.f65265b, ", quantity=");
        sbS.append(this.f65266c);
        sbS.append(", imageUrl=");
        sbS.append(this.d);
        sbS.append(", priceInfo=");
        sbS.append(this.f65267e);
        sbS.append(", color=");
        sbS.append(this.f65268f);
        sbS.append(", size=");
        cj.C(sbS, this.g, ", material=", this.f65269h, ", variations=");
        sbS.append(this.f65270i);
        sbS.append(", customizationConfiguration=");
        sbS.append(this.f65271j);
        sbS.append(")");
        return sbS.toString();
    }
}

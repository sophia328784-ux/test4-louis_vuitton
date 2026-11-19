package com.vuitton.android.presentation.screen.thankyou.models;

import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/TaxInfoUiModel;", "", "", "identifier", "title", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;", "priceInfo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TaxInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPriceUiModel f65280c;

    public TaxInfoUiModel(String str, String str2, CartPriceUiModel cartPriceUiModel) {
        str.getClass();
        str2.getClass();
        cartPriceUiModel.getClass();
        this.f65278a = str;
        this.f65279b = str2;
        this.f65280c = cartPriceUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TaxInfoUiModel)) {
            return false;
        }
        TaxInfoUiModel taxInfoUiModel = (TaxInfoUiModel) obj;
        return Intrinsics.c(this.f65278a, taxInfoUiModel.f65278a) && Intrinsics.c(this.f65279b, taxInfoUiModel.f65279b) && Intrinsics.c(this.f65280c, taxInfoUiModel.f65280c);
    }

    public final int hashCode() {
        return this.f65280c.hashCode() + fc.b(this.f65278a.hashCode() * 31, 31, this.f65279b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TaxInfoUiModel(identifier=", this.f65278a, ", title=", this.f65279b, ", priceInfo=");
        sbS.append(this.f65280c);
        sbS.append(")");
        return sbS.toString();
    }
}

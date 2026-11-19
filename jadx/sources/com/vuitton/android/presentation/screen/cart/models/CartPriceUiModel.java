package com.vuitton.android.presentation.screen.cart.models;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;", "", "", "priceRaw", "", "price", "currency", "<init>", "(DLjava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPriceUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f55158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55160c;

    public CartPriceUiModel(double d, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f55158a = d;
        this.f55159b = str;
        this.f55160c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceUiModel)) {
            return false;
        }
        CartPriceUiModel cartPriceUiModel = (CartPriceUiModel) obj;
        return Double.compare(this.f55158a, cartPriceUiModel.f55158a) == 0 && Intrinsics.c(this.f55159b, cartPriceUiModel.f55159b) && Intrinsics.c(this.f55160c, cartPriceUiModel.f55160c);
    }

    public final int hashCode() {
        return this.f55160c.hashCode() + fc.b(Double.hashCode(this.f55158a) * 31, 31, this.f55159b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartPriceUiModel(priceRaw=");
        sb.append(this.f55158a);
        sb.append(", price=");
        sb.append(this.f55159b);
        return d21.p(sb, ", currency=", this.f55160c, ")");
    }
}

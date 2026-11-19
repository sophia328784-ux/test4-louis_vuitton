package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;", "", "Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;", "history", "ongoing", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderPageUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PurchaseUiModel f60280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PurchaseUiModel f60281b;

    public OrderPageUiModel(PurchaseUiModel purchaseUiModel, PurchaseUiModel purchaseUiModel2) {
        purchaseUiModel.getClass();
        purchaseUiModel2.getClass();
        this.f60280a = purchaseUiModel;
        this.f60281b = purchaseUiModel2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderPageUiModel)) {
            return false;
        }
        OrderPageUiModel orderPageUiModel = (OrderPageUiModel) obj;
        return Intrinsics.c(this.f60280a, orderPageUiModel.f60280a) && Intrinsics.c(this.f60281b, orderPageUiModel.f60281b);
    }

    public final int hashCode() {
        return this.f60281b.hashCode() + (this.f60280a.hashCode() * 31);
    }

    public final String toString() {
        return "OrderPageUiModel(history=" + this.f60280a + ", ongoing=" + this.f60281b + ")";
    }
}

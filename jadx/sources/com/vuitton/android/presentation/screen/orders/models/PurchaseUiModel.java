package com.vuitton.android.presentation.screen.orders.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;", "purchases", "", "totalNumberOfItems", "<init>", "(Ljava/util/List;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PurchaseUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f60390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f60391b;

    public PurchaseUiModel(List<PurchasedOrderUiModel> list, int i2) {
        list.getClass();
        this.f60390a = list;
        this.f60391b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseUiModel)) {
            return false;
        }
        PurchaseUiModel purchaseUiModel = (PurchaseUiModel) obj;
        return Intrinsics.c(this.f60390a, purchaseUiModel.f60390a) && this.f60391b == purchaseUiModel.f60391b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f60391b) + (this.f60390a.hashCode() * 31);
    }

    public final String toString() {
        return "PurchaseUiModel(purchases=" + this.f60390a + ", totalNumberOfItems=" + this.f60391b + ")";
    }
}

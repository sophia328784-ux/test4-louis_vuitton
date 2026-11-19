package com.vuitton.android.presentation.screen.orders.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;", "", "", "transactionId", "Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;", "shippingType", "statusId", "totalAmount", "price", "sku", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderTrackingDataUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShippingTypeUiModel f60330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60331c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60333f;

    public OrderTrackingDataUiModel(String str, ShippingTypeUiModel shippingTypeUiModel, String str2, String str3, String str4, String str5) {
        str.getClass();
        shippingTypeUiModel.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.f60329a = str;
        this.f60330b = shippingTypeUiModel;
        this.f60331c = str2;
        this.d = str3;
        this.f60332e = str4;
        this.f60333f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderTrackingDataUiModel)) {
            return false;
        }
        OrderTrackingDataUiModel orderTrackingDataUiModel = (OrderTrackingDataUiModel) obj;
        return Intrinsics.c(this.f60329a, orderTrackingDataUiModel.f60329a) && this.f60330b == orderTrackingDataUiModel.f60330b && Intrinsics.c(this.f60331c, orderTrackingDataUiModel.f60331c) && Intrinsics.c(this.d, orderTrackingDataUiModel.d) && Intrinsics.c(this.f60332e, orderTrackingDataUiModel.f60332e) && Intrinsics.c(this.f60333f, orderTrackingDataUiModel.f60333f);
    }

    public final int hashCode() {
        return this.f60333f.hashCode() + fc.b(fc.b(fc.b((this.f60330b.hashCode() + (this.f60329a.hashCode() * 31)) * 31, 31, this.f60331c), 31, this.d), 31, this.f60332e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderTrackingDataUiModel(transactionId=");
        sb.append(this.f60329a);
        sb.append(", shippingType=");
        sb.append(this.f60330b);
        sb.append(", statusId=");
        cj.C(sb, this.f60331c, ", totalAmount=", this.d, ", price=");
        return tr.l(sb, this.f60332e, ", sku=", this.f60333f, ")");
    }
}

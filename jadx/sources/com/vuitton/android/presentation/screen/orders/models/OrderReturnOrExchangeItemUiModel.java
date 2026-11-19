package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000fBA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "item", "", "locationId", "shippingGroupId", "", "isSelectedForReturn", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "returnReason", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "fieldsError", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnOrExchangeItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TransactionItemUiModel f60302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60304c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OrderReturnReasonUiModel f60305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StringResourceUiModel f60306f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ OrderReturnOrExchangeItemUiModel(TransactionItemUiModel transactionItemUiModel, String str, String str2, boolean z, OrderReturnReasonUiModel orderReturnReasonUiModel, StringResourceUiModel stringResourceUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(transactionItemUiModel, str, str2, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? null : orderReturnReasonUiModel, (i2 & 32) != 0 ? null : stringResourceUiModel);
    }

    public static OrderReturnOrExchangeItemUiModel a(OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, boolean z, OrderReturnReasonUiModel orderReturnReasonUiModel, StringResourceUiModel stringResourceUiModel, int i2) {
        TransactionItemUiModel transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a;
        String str = orderReturnOrExchangeItemUiModel.f60303b;
        String str2 = orderReturnOrExchangeItemUiModel.f60304c;
        if ((i2 & 8) != 0) {
            z = orderReturnOrExchangeItemUiModel.d;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            orderReturnReasonUiModel = orderReturnOrExchangeItemUiModel.f60305e;
        }
        orderReturnOrExchangeItemUiModel.getClass();
        transactionItemUiModel.getClass();
        str.getClass();
        str2.getClass();
        return new OrderReturnOrExchangeItemUiModel(transactionItemUiModel, str, str2, z2, orderReturnReasonUiModel, stringResourceUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnOrExchangeItemUiModel)) {
            return false;
        }
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj;
        return Intrinsics.c(this.f60302a, orderReturnOrExchangeItemUiModel.f60302a) && Intrinsics.c(this.f60303b, orderReturnOrExchangeItemUiModel.f60303b) && Intrinsics.c(this.f60304c, orderReturnOrExchangeItemUiModel.f60304c) && this.d == orderReturnOrExchangeItemUiModel.d && Intrinsics.c(this.f60305e, orderReturnOrExchangeItemUiModel.f60305e) && Intrinsics.c(this.f60306f, orderReturnOrExchangeItemUiModel.f60306f);
    }

    public final int hashCode() {
        int iB = o60.b(fc.b(fc.b(this.f60302a.hashCode() * 31, 31, this.f60303b), 31, this.f60304c), 31, this.d);
        OrderReturnReasonUiModel orderReturnReasonUiModel = this.f60305e;
        int iHashCode = (iB + (orderReturnReasonUiModel == null ? 0 : orderReturnReasonUiModel.hashCode())) * 31;
        StringResourceUiModel stringResourceUiModel = this.f60306f;
        return iHashCode + (stringResourceUiModel != null ? stringResourceUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderReturnOrExchangeItemUiModel(item=");
        sb.append(this.f60302a);
        sb.append(", locationId=");
        sb.append(this.f60303b);
        sb.append(", shippingGroupId=");
        pq0.A(this.f60304c, ", isSelectedForReturn=", ", returnReason=", sb, this.d);
        sb.append(this.f60305e);
        sb.append(", fieldsError=");
        sb.append(this.f60306f);
        sb.append(")");
        return sb.toString();
    }

    public OrderReturnOrExchangeItemUiModel(TransactionItemUiModel transactionItemUiModel, String str, String str2, boolean z, OrderReturnReasonUiModel orderReturnReasonUiModel, StringResourceUiModel stringResourceUiModel) {
        transactionItemUiModel.getClass();
        str.getClass();
        str2.getClass();
        this.f60302a = transactionItemUiModel;
        this.f60303b = str;
        this.f60304c = str2;
        this.d = z;
        this.f60305e = orderReturnReasonUiModel;
        this.f60306f = stringResourceUiModel;
    }
}

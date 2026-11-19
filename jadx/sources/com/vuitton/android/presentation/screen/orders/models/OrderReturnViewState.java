package com.vuitton.android.presentation.screen.orders.models;

import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;", "", "", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;", "returnItems", "", "shouldShowContinueButton", "", "totalReturnQuantity", "firstErrorPosition", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;", "currentBottomSheet", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "orderReturnReasons", "<init>", "(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f60318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f60319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f60320c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OrderReturnBottomSheet f60321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f60322f;

    public OrderReturnViewState(List list, boolean z, int i2, Integer num, OrderReturnBottomSheet orderReturnBottomSheet, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? EmptyList.f71768b : list, (i3 & 2) != 0 ? false : z, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : num, (i3 & 16) != 0 ? null : orderReturnBottomSheet, (i3 & 32) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnViewState)) {
            return false;
        }
        OrderReturnViewState orderReturnViewState = (OrderReturnViewState) obj;
        return Intrinsics.c(this.f60318a, orderReturnViewState.f60318a) && this.f60319b == orderReturnViewState.f60319b && this.f60320c == orderReturnViewState.f60320c && Intrinsics.c(this.d, orderReturnViewState.d) && Intrinsics.c(this.f60321e, orderReturnViewState.f60321e) && Intrinsics.c(this.f60322f, orderReturnViewState.f60322f);
    }

    public final int hashCode() {
        int iB = tr.b(this.f60320c, o60.b(this.f60318a.hashCode() * 31, 31, this.f60319b), 31);
        Integer num = this.d;
        int iHashCode = (iB + (num == null ? 0 : num.hashCode())) * 31;
        OrderReturnBottomSheet orderReturnBottomSheet = this.f60321e;
        return this.f60322f.hashCode() + ((iHashCode + (orderReturnBottomSheet != null ? orderReturnBottomSheet.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "OrderReturnViewState(returnItems=" + this.f60318a + ", shouldShowContinueButton=" + this.f60319b + ", totalReturnQuantity=" + this.f60320c + ", firstErrorPosition=" + this.d + ", currentBottomSheet=" + this.f60321e + ", orderReturnReasons=" + this.f60322f + ")";
    }

    public OrderReturnViewState(List<OrderReturnItemUiModel> list, boolean z, int i2, Integer num, OrderReturnBottomSheet orderReturnBottomSheet, List<OrderReturnReasonUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f60318a = list;
        this.f60319b = z;
        this.f60320c = i2;
        this.d = num;
        this.f60321e = orderReturnBottomSheet;
        this.f60322f = list2;
    }

    public OrderReturnViewState() {
        this(null, false, 0, null, null, null, 63, null);
    }
}

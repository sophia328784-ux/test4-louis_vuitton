package com.vuitton.android.presentation.screen.orders.models;

import defpackage.fc;
import defpackage.o60;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0010\u001a\u00020\n\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;", "", "Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;", "orders", "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;", "currentOrder", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;", "currentTransaction", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "currentItem", "", "firstLoading", "firstPageError", "isInvoiceLoading", "isRemoteLoading", "nextPageError", "emptyScreen", "Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;", "orderFeatureFlags", "", "Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;", "shortcutsAvailable", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderPageUiModel f60374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PurchasedOrderUiModel f60375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TransactionUiModel f60376c;
    public final TransactionItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f60377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f60378f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f60379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f60380i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f60381j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final OrderFeatureFlags f60382k;
    public final Set l;

    public OrderViewState(OrderPageUiModel orderPageUiModel, PurchasedOrderUiModel purchasedOrderUiModel, TransactionUiModel transactionUiModel, TransactionItemUiModel transactionItemUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, OrderFeatureFlags orderFeatureFlags, Set set, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : orderPageUiModel, (i2 & 2) != 0 ? null : purchasedOrderUiModel, (i2 & 4) != 0 ? null : transactionUiModel, (i2 & 8) == 0 ? transactionItemUiModel : null, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? false : z3, (i2 & 128) != 0 ? false : z4, (i2 & 256) != 0 ? false : z5, (i2 & 512) == 0 ? z6 : false, (i2 & 1024) != 0 ? new OrderFeatureFlags(false, false, false, false, false, 31, null) : orderFeatureFlags, (i2 & 2048) != 0 ? EmptySet.f71770b : set);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderViewState)) {
            return false;
        }
        OrderViewState orderViewState = (OrderViewState) obj;
        return Intrinsics.c(this.f60374a, orderViewState.f60374a) && Intrinsics.c(this.f60375b, orderViewState.f60375b) && Intrinsics.c(this.f60376c, orderViewState.f60376c) && Intrinsics.c(this.d, orderViewState.d) && this.f60377e == orderViewState.f60377e && this.f60378f == orderViewState.f60378f && this.g == orderViewState.g && this.f60379h == orderViewState.f60379h && this.f60380i == orderViewState.f60380i && this.f60381j == orderViewState.f60381j && Intrinsics.c(this.f60382k, orderViewState.f60382k) && Intrinsics.c(this.l, orderViewState.l);
    }

    public final int hashCode() {
        OrderPageUiModel orderPageUiModel = this.f60374a;
        int iHashCode = (orderPageUiModel == null ? 0 : orderPageUiModel.hashCode()) * 31;
        PurchasedOrderUiModel purchasedOrderUiModel = this.f60375b;
        int iHashCode2 = (iHashCode + (purchasedOrderUiModel == null ? 0 : purchasedOrderUiModel.hashCode())) * 31;
        TransactionUiModel transactionUiModel = this.f60376c;
        int iHashCode3 = (iHashCode2 + (transactionUiModel == null ? 0 : transactionUiModel.hashCode())) * 31;
        TransactionItemUiModel transactionItemUiModel = this.d;
        return this.l.hashCode() + ((this.f60382k.hashCode() + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode3 + (transactionItemUiModel != null ? transactionItemUiModel.hashCode() : 0)) * 31, 31, this.f60377e), 31, this.f60378f), 31, this.g), 31, this.f60379h), 31, this.f60380i), 31, this.f60381j)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderViewState(orders=");
        sb.append(this.f60374a);
        sb.append(", currentOrder=");
        sb.append(this.f60375b);
        sb.append(", currentTransaction=");
        sb.append(this.f60376c);
        sb.append(", currentItem=");
        sb.append(this.d);
        sb.append(", firstLoading=");
        fc.y(sb, this.f60377e, ", firstPageError=", this.f60378f, ", isInvoiceLoading=");
        fc.y(sb, this.g, ", isRemoteLoading=", this.f60379h, ", nextPageError=");
        fc.y(sb, this.f60380i, ", emptyScreen=", this.f60381j, ", orderFeatureFlags=");
        sb.append(this.f60382k);
        sb.append(", shortcutsAvailable=");
        sb.append(this.l);
        sb.append(")");
        return sb.toString();
    }

    public OrderViewState(OrderPageUiModel orderPageUiModel, PurchasedOrderUiModel purchasedOrderUiModel, TransactionUiModel transactionUiModel, TransactionItemUiModel transactionItemUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, OrderFeatureFlags orderFeatureFlags, Set<? extends ShortcutDisplayUiModel> set) {
        orderFeatureFlags.getClass();
        set.getClass();
        this.f60374a = orderPageUiModel;
        this.f60375b = purchasedOrderUiModel;
        this.f60376c = transactionUiModel;
        this.d = transactionItemUiModel;
        this.f60377e = z;
        this.f60378f = z2;
        this.g = z3;
        this.f60379h = z4;
        this.f60380i = z5;
        this.f60381j = z6;
        this.f60382k = orderFeatureFlags;
        this.l = set;
    }

    public OrderViewState() {
        this(null, null, null, null, false, false, false, false, false, false, null, null, 4095, null);
    }
}

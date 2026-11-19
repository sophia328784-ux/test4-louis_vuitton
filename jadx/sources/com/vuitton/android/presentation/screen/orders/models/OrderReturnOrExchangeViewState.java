package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BÅ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\n\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;", "reasons", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "variations", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;", "confirmReturn", "", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;", "returnableItems", "selectedItems", "", "contactUsPhoneNumber", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;", "notifications", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;", "exchangeVariations", "Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;", "selectedVariants", "exchangeableItem", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;", "exchangeSetup", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;", "exchangeSubmit", "returnDisclaimer", "", "isExchangeAvailable", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnOrExchangeViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f60307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReasonsResponseUiModel f60308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VariationsResponseUiModel f60309c;
    public final ConfirmReturnResponseUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f60310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f60311f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableSharedFlow f60312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OrderReturnOrExchangeFeatureFlags f60313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ProductExchangeCategoryUiModel f60314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f60315k;
    public final OrderReturnOrExchangeItemUiModel l;
    public final ExchangeSetupResponseUiModel m;
    public final ExchangeSubmitResponseUiModel n;
    public final String o;
    public final boolean p;

    public OrderReturnOrExchangeViewState(InAppDispatch inAppDispatch, ReasonsResponseUiModel reasonsResponseUiModel, VariationsResponseUiModel variationsResponseUiModel, ConfirmReturnResponseUiModel confirmReturnResponseUiModel, List list, List list2, String str, MutableSharedFlow mutableSharedFlow, OrderReturnOrExchangeFeatureFlags orderReturnOrExchangeFeatureFlags, ProductExchangeCategoryUiModel productExchangeCategoryUiModel, List list3, OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, ExchangeSetupResponseUiModel exchangeSetupResponseUiModel, ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? ReasonsResponseUiModel.Loading.f60401a : reasonsResponseUiModel, (i2 & 4) != 0 ? null : variationsResponseUiModel, (i2 & 8) != 0 ? null : confirmReturnResponseUiModel, list, list2, (i2 & 64) != 0 ? null : str, (i2 & 128) != 0 ? SharedFlowKt.b(0, 0, null, 7) : mutableSharedFlow, orderReturnOrExchangeFeatureFlags, (i2 & 512) != 0 ? null : productExchangeCategoryUiModel, (i2 & 1024) != 0 ? EmptyList.f71768b : list3, (i2 & 2048) != 0 ? null : orderReturnOrExchangeItemUiModel, (i2 & 4096) != 0 ? ExchangeSetupResponseUiModel.Loading.f60253a : exchangeSetupResponseUiModel, (i2 & 8192) != 0 ? null : exchangeSubmitResponseUiModel, (i2 & 16384) != 0 ? null : str2, (i2 & 32768) != 0 ? false : z);
    }

    public final boolean a() {
        TransactionItemUiModel transactionItemUiModel;
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = this.l;
        if (orderReturnOrExchangeItemUiModel == null || (transactionItemUiModel = orderReturnOrExchangeItemUiModel.f60302a) == null || !transactionItemUiModel.f60415e) {
            return false;
        }
        VariationsResponseUiModel variationsResponseUiModel = this.f60309c;
        if ((variationsResponseUiModel instanceof VariationsResponseUiModel.Loading) || (variationsResponseUiModel instanceof VariationsResponseUiModel.Error)) {
            return false;
        }
        return ((variationsResponseUiModel instanceof VariationsResponseUiModel.Skip) && (this.m instanceof ExchangeSetupResponseUiModel.Error.OutOfStock)) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnOrExchangeViewState)) {
            return false;
        }
        OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj;
        return Intrinsics.c(this.f60307a, orderReturnOrExchangeViewState.f60307a) && Intrinsics.c(this.f60308b, orderReturnOrExchangeViewState.f60308b) && Intrinsics.c(this.f60309c, orderReturnOrExchangeViewState.f60309c) && Intrinsics.c(this.d, orderReturnOrExchangeViewState.d) && Intrinsics.c(this.f60310e, orderReturnOrExchangeViewState.f60310e) && Intrinsics.c(this.f60311f, orderReturnOrExchangeViewState.f60311f) && Intrinsics.c(this.g, orderReturnOrExchangeViewState.g) && Intrinsics.c(this.f60312h, orderReturnOrExchangeViewState.f60312h) && Intrinsics.c(this.f60313i, orderReturnOrExchangeViewState.f60313i) && Intrinsics.c(this.f60314j, orderReturnOrExchangeViewState.f60314j) && Intrinsics.c(this.f60315k, orderReturnOrExchangeViewState.f60315k) && Intrinsics.c(this.l, orderReturnOrExchangeViewState.l) && Intrinsics.c(this.m, orderReturnOrExchangeViewState.m) && Intrinsics.c(this.n, orderReturnOrExchangeViewState.n) && Intrinsics.c(this.o, orderReturnOrExchangeViewState.o) && this.p == orderReturnOrExchangeViewState.p;
    }

    public final int hashCode() {
        int iHashCode = (this.f60308b.hashCode() + (this.f60307a.hashCode() * 31)) * 31;
        VariationsResponseUiModel variationsResponseUiModel = this.f60309c;
        int iHashCode2 = (iHashCode + (variationsResponseUiModel == null ? 0 : variationsResponseUiModel.hashCode())) * 31;
        ConfirmReturnResponseUiModel confirmReturnResponseUiModel = this.d;
        int iA = n00.a(n00.a((iHashCode2 + (confirmReturnResponseUiModel == null ? 0 : confirmReturnResponseUiModel.hashCode())) * 31, 31, this.f60310e), 31, this.f60311f);
        String str = this.g;
        int iHashCode3 = (this.f60313i.hashCode() + ((this.f60312h.hashCode() + ((iA + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel = this.f60314j;
        int iA2 = n00.a((iHashCode3 + (productExchangeCategoryUiModel == null ? 0 : productExchangeCategoryUiModel.hashCode())) * 31, 31, this.f60315k);
        OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = this.l;
        int iHashCode4 = (this.m.hashCode() + ((iA2 + (orderReturnOrExchangeItemUiModel == null ? 0 : orderReturnOrExchangeItemUiModel.hashCode())) * 31)) * 31;
        ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel = this.n;
        int iHashCode5 = (iHashCode4 + (exchangeSubmitResponseUiModel == null ? 0 : exchangeSubmitResponseUiModel.hashCode())) * 31;
        String str2 = this.o;
        return Boolean.hashCode(this.p) + ((iHashCode5 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderReturnOrExchangeViewState(inAppDispatch=");
        sb.append(this.f60307a);
        sb.append(", reasons=");
        sb.append(this.f60308b);
        sb.append(", variations=");
        sb.append(this.f60309c);
        sb.append(", confirmReturn=");
        sb.append(this.d);
        sb.append(", returnableItems=");
        a.C(sb, this.f60310e, ", selectedItems=", this.f60311f, ", contactUsPhoneNumber=");
        sb.append(this.g);
        sb.append(", notifications=");
        sb.append(this.f60312h);
        sb.append(", featureFlags=");
        sb.append(this.f60313i);
        sb.append(", exchangeVariations=");
        sb.append(this.f60314j);
        sb.append(", selectedVariants=");
        sb.append(this.f60315k);
        sb.append(", exchangeableItem=");
        sb.append(this.l);
        sb.append(", exchangeSetup=");
        sb.append(this.m);
        sb.append(", exchangeSubmit=");
        sb.append(this.n);
        sb.append(", returnDisclaimer=");
        sb.append(this.o);
        sb.append(", isExchangeAvailable=");
        sb.append(this.p);
        sb.append(")");
        return sb.toString();
    }

    public OrderReturnOrExchangeViewState(InAppDispatch inAppDispatch, ReasonsResponseUiModel reasonsResponseUiModel, VariationsResponseUiModel variationsResponseUiModel, ConfirmReturnResponseUiModel confirmReturnResponseUiModel, List<OrderReturnOrExchangeItemUiModel> list, List<OrderReturnOrExchangeItemUiModel> list2, String str, MutableSharedFlow<NotificationUiModel> mutableSharedFlow, OrderReturnOrExchangeFeatureFlags orderReturnOrExchangeFeatureFlags, ProductExchangeCategoryUiModel productExchangeCategoryUiModel, List<CategoryOptionUiModel> list3, OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel, ExchangeSetupResponseUiModel exchangeSetupResponseUiModel, ExchangeSubmitResponseUiModel exchangeSubmitResponseUiModel, String str2, boolean z) {
        inAppDispatch.getClass();
        reasonsResponseUiModel.getClass();
        list.getClass();
        list2.getClass();
        mutableSharedFlow.getClass();
        orderReturnOrExchangeFeatureFlags.getClass();
        list3.getClass();
        exchangeSetupResponseUiModel.getClass();
        this.f60307a = inAppDispatch;
        this.f60308b = reasonsResponseUiModel;
        this.f60309c = variationsResponseUiModel;
        this.d = confirmReturnResponseUiModel;
        this.f60310e = list;
        this.f60311f = list2;
        this.g = str;
        this.f60312h = mutableSharedFlow;
        this.f60313i = orderReturnOrExchangeFeatureFlags;
        this.f60314j = productExchangeCategoryUiModel;
        this.f60315k = list3;
        this.l = orderReturnOrExchangeItemUiModel;
        this.m = exchangeSetupResponseUiModel;
        this.n = exchangeSubmitResponseUiModel;
        this.o = str2;
        this.p = z;
    }
}

package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderTrackingUiModelKt {
    public static final Hit a(OrderTrackingUiModel orderTrackingUiModel) {
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ListPage) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            OrderTrackingUiModel.ListPage listPage = (OrderTrackingUiModel.ListPage) orderTrackingUiModel;
            List<PurchasedOrderUiModel> list = listPage.f60351a;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list, 10));
            int i2 = 0;
            for (PurchasedOrderUiModel purchasedOrderUiModel : list) {
                i2++;
                if (i2 < 7) {
                    arrayList.add(purchasedOrderUiModel.f60396e);
                }
                arrayList3.add(Unit.f71739a);
            }
            List<PurchasedOrderUiModel> list2 = listPage.f60352b;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list2, 10));
            int i3 = 0;
            for (PurchasedOrderUiModel purchasedOrderUiModel2 : list2) {
                ChannelUiModel channelUiModel = purchasedOrderUiModel2.f60397f;
                String str = purchasedOrderUiModel2.f60396e;
                if (channelUiModel == ChannelUiModel.RETAIL) {
                    i3++;
                    if (i3 < 5) {
                        arrayList2.add(str);
                    }
                } else {
                    i2++;
                    if (i2 < 7) {
                        arrayList.add(str);
                    }
                }
                arrayList4.add(Unit.f71739a);
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyOrders", "mylv/my_orders", "mylv", CollectionsKt.P(new AdditionalProperty.TotalDigitalOrders(i2), new AdditionalProperty.TotalRetailOrders(i3), new AdditionalProperty.DigitalPurchaseId(CollectionsKt.K(arrayList, ",", null, null, null, 62).concat(i2 > 6 ? ",+..." : "")), new AdditionalProperty.RetailPurchaseId(CollectionsKt.K(arrayList2, ",", null, null, null, 62).concat(i3 > 4 ? ",+..." : ""))), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders", "return_order", "MyLV", "my_order", null, null, 97, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.InvoiceClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/detail", "invoice", "MyLV", "my_order", null, null, 97, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnOrExchangeDetailClick) {
            OrderTrackingUiModel.ReturnOrExchangeDetailClick returnOrExchangeDetailClick = (OrderTrackingUiModel.ReturnOrExchangeDetailClick) orderTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "my_order_details", returnOrExchangeDetailClick.f60366b ? "request_exchange" : "return_intention", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(returnOrExchangeDetailClick.f60365a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnFormScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_fom", "mylv/my_orders", "mylv", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ReturnFormScreen) orderTrackingUiModel).f60364a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnReviewScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_review", "mylv/my_orders", "mylv", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ReturnReviewScreen) orderTrackingUiModel).f60367a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnSuccessScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_success", "mylv/my_orders", "mylv", null, 17, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangeSelectionScreen) {
            ListBuilder listBuilderV = CollectionsKt.v();
            OrderTrackingUiModel.ExchangeSelectionScreen exchangeSelectionScreen = (OrderTrackingUiModel.ExchangeSelectionScreen) orderTrackingUiModel;
            listBuilderV.add(new AdditionalProperty.ProductSku(exchangeSelectionScreen.f60346a));
            if (!exchangeSelectionScreen.f60347b) {
                listBuilderV.add(new AdditionalProperty.ContentId("exchange_disable"));
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, "return_or_exchange_selection", "mylv_my_orders", "return_or_exchange", CollectionsKt.r(listBuilderV), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangeVariationScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "exchange_variation_selection", "mylv_my_orders", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ExchangeVariationScreen) orderTrackingUiModel).f60349a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangeReviewScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "exchange_review", "mylv_my_orders", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ExchangeReviewScreen) orderTrackingUiModel).f60345a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangeSuccessBottomSheet) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "exchange_confirmation", "mylv_my_orders", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ExchangeSuccessBottomSheet) orderTrackingUiModel).f60348a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ProductSelectionForReturn) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_fom", "select_item", "MyLV", "my_order", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(((OrderTrackingUiModel.ProductSelectionForReturn) orderTrackingUiModel).f60355a))), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnContinueClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_fom", "continue_return", "MyLV", "my_order", null, CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ReturnContinueClick) orderTrackingUiModel).f60363a)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnConfirmClick) {
            OrderTrackingUiModel.ReturnConfirmClick returnConfirmClick = (OrderTrackingUiModel.ReturnConfirmClick) orderTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_review", "confirm_return", "MyLV", "my_order", null, CollectionsKt.P(new AdditionalProperty.ProductSku(returnConfirmClick.f60360a), new AdditionalProperty.Quantity(returnConfirmClick.f60361b), new AdditionalProperty.OrderReturnReasons(returnConfirmClick.f60362c)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnCancelClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_review", "cancel_return", "MyLV", "my_order", null, CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ReturnCancelClick) orderTrackingUiModel).f60358a)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ReturnValidationClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/my_orders/my_return_review", "return_success", "MyLV", "my_order", null, CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ReturnValidationClick) orderTrackingUiModel).f60369a)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.TrackingLinkClick) {
            return new Hit.EventHit.DefaultEventHit(null, "my_order_details", "track_the_order", "my_orders", "click", null, CollectionsKt.O(OrderTrackingDataUiModelKt.a(((OrderTrackingUiModel.TrackingLinkClick) orderTrackingUiModel).f60372a)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.DetailImageClick) {
            return new Hit.EventHit.DefaultEventHit(null, "my_order_details", "zoom_photo", "my_orders", "click", null, CollectionsKt.O(OrderTrackingDataUiModelKt.a(((OrderTrackingUiModel.DetailImageClick) orderTrackingUiModel).f60341a)), 33, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.RequestExchangeClick) {
            return new Hit.EventHit.DefaultEventHit(null, "return_or_exchange_selection", "request_an_exchange_cta", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.RequestExchangeClick) orderTrackingUiModel).f60356a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.RequestReturnClick) {
            return new Hit.EventHit.DefaultEventHit(null, "return_or_exchange_selection", "request_a_return_cta", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.RequestReturnClick) orderTrackingUiModel).f60357a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ContactUsFromSelectionClick) {
            return new Hit.EventHit.DefaultEventHit(null, "return_or_exchange_selection", "contact_us", "my_orders", "click", "return_or_exchange", null, 65, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ContactUsFromVariationClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_variation_selection", "contact_us", "my_orders", "click", "return_or_exchange", null, 65, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ContactUsFromReviewClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_review", "contact_us", "my_orders", "click", "return_or_exchange", null, 65, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangePolicyClick) {
            return new Hit.EventHit.DefaultEventHit(null, "return_or_exchange_selection", "view_return_and_exchange_policy", "my_orders", "click", "return_or_exchange", null, 65, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.OpenSizeGuideClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_variation_selection", "view_guide_size", "my_orders", "click", "return_or_exchange", null, 65, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.SelectVariationClick) {
            OrderTrackingUiModel.SelectVariationClick selectVariationClick = (OrderTrackingUiModel.SelectVariationClick) orderTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "exchange_variation_selection", fc.h("select_", selectVariationClick.f60370a, "_intention"), "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ContentId(selectVariationClick.f60371b)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ConfirmVariationClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_variation_selection", "request_an_exchange_continue_cta", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ConfirmVariationClick) orderTrackingUiModel).f60337a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ModifyVariationClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_review", "modify_exchange", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ModifyVariationClick) orderTrackingUiModel).f60353a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ConfirmExchangeClick) {
            OrderTrackingUiModel.ConfirmExchangeClick confirmExchangeClick = (OrderTrackingUiModel.ConfirmExchangeClick) orderTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "exchange_review", "request_an_exchange_confirm_cta", "my_orders", "click", "return_or_exchange", CollectionsKt.P(new AdditionalProperty.ProductSku(confirmExchangeClick.f60335a), new AdditionalProperty.ContentId(confirmExchangeClick.f60336b)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ValidateBottomSheetClick) {
            return new Hit.EventHit.DefaultEventHit(null, "exchange_confirmation", "exchange_success_popin", "my_orders", "click", "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(((OrderTrackingUiModel.ValidateBottomSheetClick) orderTrackingUiModel).f60373a)), 1, null);
        }
        if (orderTrackingUiModel instanceof OrderTrackingUiModel.ExchangeFailure) {
            OrderTrackingUiModel.ExchangeFailure exchangeFailure = (OrderTrackingUiModel.ExchangeFailure) orderTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "exchange_confirmation", tr.g("error_", exchangeFailure.f60343b), "my_orders", MvelScriptManager.VAR_EVENT, "return_or_exchange", CollectionsKt.O(new AdditionalProperty.ProductSku(exchangeFailure.f60342a)), 1, null);
        }
        v40.g();
        return null;
    }
}

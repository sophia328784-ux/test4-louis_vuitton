package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.extensions.TrackingExtKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.cj;
import defpackage.n00;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPTrackingUiModelKt {
    public static final Hit a(PLPTrackingUiModel pLPTrackingUiModel, String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        pLPTrackingUiModel.getClass();
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.Screen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "product_list_l3", str == null ? "LVPass/products_catalog/productlist" : str, "product_list", TrackingExtKt.a(str2, EmptyList.f71768b), 1, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.FilterClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, str == null ? "LVPass/products_catalog/productlist" : str, "show_filters", "filter_selection", "filter", null, TrackingExtKt.a(str2, EmptyList.f71768b), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.SearchOpenedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "bottom_search_bar", "productlist", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentType("search")), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.ScreenshotTakenEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", ((PLPTrackingUiModel.ScreenshotTakenEvent) pLPTrackingUiModel).f62897a, "productlist", "screenshot", null, null, 97, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.AddToWishlistEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "AddToWishlist", "productlist", "wishlist", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((PLPTrackingUiModel.AddToWishlistEvent) pLPTrackingUiModel).f62879a)))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.RemoveFromWishlistEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", ((PLPTrackingUiModel.RemoveFromWishlistEvent) pLPTrackingUiModel).f62893a, "productlist", "wishlist_remove", null, TrackingExtKt.a(str2, EmptyList.f71768b), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.NativeShareRequestedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, str, ((PLPTrackingUiModel.NativeShareRequestedEvent) pLPTrackingUiModel).f62890a, "product_list", "share_intention_screenshot", null, null, 97, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.AddToWishlistSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "AddToWishlist/Success", "productlist", "e-commerce_interaction", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((PLPTrackingUiModel.AddToWishlistSuccessEvent) pLPTrackingUiModel).f62882a))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.LongPressedEvent) {
            PLPTrackingUiModel.LongPressedEvent longPressedEvent = (PLPTrackingUiModel.LongPressedEvent) pLPTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "product_list_".concat(longPressedEvent.f62889b), "open_preview", "product_list", "long_press", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(longPressedEvent.f62888a))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.ShareProductEvent) {
            PLPTrackingUiModel.ShareProductEvent shareProductEvent = (PLPTrackingUiModel.ShareProductEvent) pLPTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "product_list_".concat(shareProductEvent.f62900b), "share_intention", "product_list", "click", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, shareProductEvent.f62899a))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.PlpScrolledEvent) {
            PLPTrackingUiModel.PlpScrolledEvent plpScrolledEvent = (PLPTrackingUiModel.PlpScrolledEvent) pLPTrackingUiModel;
            if (!plpScrolledEvent.f62892b) {
                if (str5 == null) {
                    str6 = "LVPass/products_catalog/productlist";
                }
                return new Hit.EventHit.DefaultEventHit(HitType.Scroll.f66520a, str6, cj.d(plpScrolledEvent.f62891a, "%"), "product_list", "scroll", null, null, 96, null);
            }
            str5 = str;
            str5 = "LVPass/SearchCatalog";
            str6 = str5;
            return new Hit.EventHit.DefaultEventHit(HitType.Scroll.f66520a, str6, cj.d(plpScrolledEvent.f62891a, "%"), "product_list", "scroll", null, null, 96, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.AddToWishlistRevampEvent) {
            str3 = str;
            PLPTrackingUiModel.AddToWishlistRevampEvent addToWishlistRevampEvent = (PLPTrackingUiModel.AddToWishlistRevampEvent) pLPTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "product_list_".concat(addToWishlistRevampEvent.f62881b), "AddToWishlist", "product_list", "wishlist", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, addToWishlistRevampEvent.f62880a)))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.StoreModeContentTypeSelectedEvent) {
            if (str3 == null) {
                str3 = str;
                str3 = "LVPass/products_catalog/productlist";
            }
            str3 = str;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/StoreMode/".concat(str3), ((PLPTrackingUiModel.StoreModeContentTypeSelectedEvent) pLPTrackingUiModel).f62901a == StoreModeContentUiModel.STORE ? "in_store" : "online", "journey", "navigation", null, null, 97, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.ChangeLayoutClickedEvent) {
            PLPTrackingUiModel.ChangeLayoutClickedEvent changeLayoutClickedEvent = (PLPTrackingUiModel.ChangeLayoutClickedEvent) pLPTrackingUiModel;
            String strG = tr.g("product_list_", changeLayoutClickedEvent.f62884b);
            GridModes gridModes = changeLayoutClickedEvent.f62883a;
            if (Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                str3 = str;
                str4 = "grid";
            } else {
                if (!Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                    str3 = str;
                    v40.g();
                    return null;
                }
                str3 = str;
                str4 = "detailed";
            }
            return new Hit.EventHit.DefaultEventHit(null, strG, "change_layout", "product_list", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(str4)), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.RemoveFromWishlistRevampEvent) {
            str3 = str;
            PLPTrackingUiModel.RemoveFromWishlistRevampEvent removeFromWishlistRevampEvent = (PLPTrackingUiModel.RemoveFromWishlistRevampEvent) pLPTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "product_list_".concat(removeFromWishlistRevampEvent.f62895b), "remove_to_wishlist", "product_list", "wishlist", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, removeFromWishlistRevampEvent.f62894a)))), 33, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.DispatchFilterSelectedEvent) {
            str3 = str;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "dispatch_filter_selection", "filters", "click", "product_list", CollectionsKt.O(new AdditionalProperty.FilterId(((PLPTrackingUiModel.DispatchFilterSelectedEvent) pLPTrackingUiModel).f62885a)), 1, null);
        }
        if (pLPTrackingUiModel instanceof PLPTrackingUiModel.DispatchFilterSwipedEvent) {
            str3 = str;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/products_catalog", "dispatch_filter_swipe", "filters", "swipe", "product_list", null, 65, null);
        }
        str3 = str;
        v40.g();
        return null;
    }

    public static /* synthetic */ Hit b(PLPTrackingUiModel pLPTrackingUiModel, String str, int i2) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        return a(pLPTrackingUiModel, str, null);
    }
}

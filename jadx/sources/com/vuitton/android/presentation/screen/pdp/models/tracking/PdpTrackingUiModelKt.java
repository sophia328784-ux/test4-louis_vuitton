package com.vuitton.android.presentation.screen.pdp.models.tracking;

import com.vuitton.android.presentation.extensions.TrackingExtKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceSpecificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.ECommerceValues;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.VariationKt$WhenMappings;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpTrackingUiModelKt {
    public static final Hit a(PdpTrackingUiModel pdpTrackingUiModel, String str, ProductUiModel productUiModel, String str2) {
        String str3;
        PriceUiModel priceUiModelA;
        PriceSpecificationUiModel priceSpecificationUiModel;
        PriceUiModel priceUiModelA2;
        PriceUiModel priceUiModelA3;
        PriceSpecificationUiModel priceSpecificationUiModel2;
        PriceUiModel priceUiModelA4;
        String str4;
        SkuAvailabilityUiModel skuAvailabilityUiModel;
        pdpTrackingUiModel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str5 = productUiModel != null ? productUiModel.f61735b : str;
        companion.getClass();
        if (str5 == null) {
            str5 = SkuIdUiModel.d;
        }
        String str6 = str5;
        boolean z = false;
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.PdpScreen) {
            String str7 = (productUiModel == null || !(productUiModel.T instanceof SellableStatusUiModel.SellableUiModel)) ? "not_sellable_online" : "online_sellable";
            if (productUiModel != null && productUiModel.I && ((PdpTrackingUiModel.PdpScreen) pdpTrackingUiModel).f61660b) {
                z = true;
            }
            if (productUiModel == null || (skuAvailabilityUiModel = productUiModel.R) == null || !skuAvailabilityUiModel.f61761e) {
                str4 = z ? "backinstock" : "outstock";
            } else {
                str4 = "InStock";
            }
            String strG = tr.g("LVPass/ProductSheet/", str6);
            String strG2 = tr.g("/productsheet/", str6);
            ListBuilder listBuilderV = CollectionsKt.v();
            listBuilderV.add(new AdditionalProperty.OnlineSellable(str7));
            SkuIdUiModel.Companion.b(str6);
            listBuilderV.add(new AdditionalProperty.ProductSku(n00.v(str6)));
            listBuilderV.add(new AdditionalProperty.ProductStockStatus(str4));
            PdpTrackingUiModel.PdpScreen pdpScreen = (PdpTrackingUiModel.PdpScreen) pdpTrackingUiModel;
            Boolean bool = pdpScreen.f61659a;
            if (bool != null) {
                listBuilderV.add(new AdditionalProperty.ExclusiveSaleEligible(bool.booleanValue() ? "exclusive_sales/eligible" : "exclusive_sales/coming_soon"));
            }
            listBuilderV.add(new AdditionalProperty.NativeShare(String.valueOf(pdpScreen.f61661c)));
            TrackingExtKt.a(str2, listBuilderV);
            return new Hit.ScreenHit.DefaultScreenHit(null, strG, strG2, "product_sheet", CollectionsKt.r(listBuilderV), 1, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnBannerArModelClickEvent) {
            String strG3 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG3, "nomade_preview_in_3D", "product_sheet", "play_nomade_AR", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCallForAvailabilityEvent) {
            String strG4 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG4, "CallForAvailability", "product_sheet", "e-commerce_interaction", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnClickOnFindInStoreEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/ProductSheet/", str6), "find_store", "popin/locate_in_store", "e-commerce_interaction", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnDisplayNotECommerceInfoEvent) {
            String strG5 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG5, "not_ecommerce", "product_sheet", "e-commerce_interaction", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnGoToWebsiteProductPageEvent) {
            String strG6 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG6, "website", "product_sheet", "e-commerce_interaction", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnShareButtonEvent) {
            String strG7 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG7, str6, "product_sheet", "share_intention", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSwipeEvent) {
            String strG8 = tr.g("LVPass/ProductSheet/", str6);
            String strConcat = "swipe_".concat(((PdpTrackingUiModel.OnSwipeEvent) pdpTrackingUiModel).f61653b ? "right" : "left");
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG8, str6, "product_sheet", strConcat, null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnAddToWishlistEvent) {
            String strG9 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG9, "AddToWishlist", "product_sheet", "e-commerce_interaction", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnProductAddToWishlistSuccessEvent) {
            String strG10 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG10, "AddToWishlist/Success", "productlist", "e-commerce_interaction", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnAddToCartSuccessEvent) {
            ProductUiModel productUiModel2 = ((PdpTrackingUiModel.OnAddToCartSuccessEvent) pdpTrackingUiModel).f61596a;
            String strG11 = tr.g("LVPass/ProductSheet/", productUiModel2.f61735b);
            String str8 = productUiModel2.f61735b;
            SkuIdUiModel.Companion.b(str8);
            String str9 = productUiModel2.f61736c;
            PriceSpecificationUiModel priceSpecificationUiModelB = ProductUiModelKt.b(productUiModel2);
            Double dValueOf = priceSpecificationUiModelB != null ? Double.valueOf(priceSpecificationUiModelB.f61721c) : null;
            PriceSpecificationUiModel priceSpecificationUiModelB2 = ProductUiModelKt.b(productUiModel2);
            ECommerceValues eCommerceValues = new ECommerceValues(str8, str9, null, dValueOf, priceSpecificationUiModelB2 != null ? priceSpecificationUiModelB2.f61720b : null, Double.valueOf(1.0d), null);
            String str10 = productUiModel2.f61735b;
            SkuIdUiModel.Companion.b(str10);
            ListBuilder listBuilderV2 = CollectionsKt.v();
            ProductCustomizationUiModel productCustomizationUiModel = productUiModel2.V;
            if ((productCustomizationUiModel != null ? productCustomizationUiModel.f61727e : null) != null) {
                listBuilderV2.add(new AdditionalProperty.ContentId("my_monogram"));
            }
            listBuilderV2.addAll(TrackingExtKt.a(str2, EmptyList.f71768b));
            return new Hit.EventHit.AddToCartEventHit(strG11, "AddToCart/Success", "product_sheet", "e-commerce_interaction", CollectionsKt.r(listBuilderV2), eCommerceValues, str10, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnAddToCartErrorEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/ProductSheet/", "AddToCart/Fail", "product_sheet", "e-commerce_interaction", null, TrackingExtKt.a(str2, EmptyList.f71768b), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSeeYourCartEvent) {
            String str11 = null;
            String strG12 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            AdditionalProperty.ProductSku productSku = new AdditionalProperty.ProductSku(n00.v(str6));
            String str12 = (productUiModel == null || (priceUiModelA4 = ProductUiModelKt.a(productUiModel)) == null) ? null : priceUiModelA4.f61722b;
            if (str12 == null) {
                str12 = "";
            }
            AdditionalProperty.Price price = new AdditionalProperty.Price(str12);
            if (productUiModel != null && (priceUiModelA3 = ProductUiModelKt.a(productUiModel)) != null && (priceSpecificationUiModel2 = priceUiModelA3.f61723c) != null) {
                str11 = priceSpecificationUiModel2.f61720b;
            }
            return new Hit.EventHit.DefaultEventHit(null, strG12, str6, "product_sheet", "see_your_cart", null, TrackingExtKt.a(str2, CollectionsKt.P(productSku, price, new AdditionalProperty.Currency(str11 != null ? str11 : ""), new AdditionalProperty.Quantity("1"))), 33, null);
        }
        String str13 = null;
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCloseAddCartEvent) {
            String strG13 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            AdditionalProperty.ProductSku productSku2 = new AdditionalProperty.ProductSku(n00.v(str6));
            String str14 = (productUiModel == null || (priceUiModelA2 = ProductUiModelKt.a(productUiModel)) == null) ? null : priceUiModelA2.f61722b;
            if (str14 == null) {
                str14 = "";
            }
            AdditionalProperty.Price price2 = new AdditionalProperty.Price(str14);
            if (productUiModel != null && (priceUiModelA = ProductUiModelKt.a(productUiModel)) != null && (priceSpecificationUiModel = priceUiModelA.f61723c) != null) {
                str13 = priceSpecificationUiModel.f61720b;
            }
            return new Hit.EventHit.DefaultEventHit(null, strG13, str6, "product_sheet", "close_add_cart", null, TrackingExtKt.a(str2, CollectionsKt.P(productSku2, price2, new AdditionalProperty.Currency(str13 != null ? str13 : ""), new AdditionalProperty.Quantity("1"))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnShareOnScreenshotEvent) {
            String strG14 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG14, str6, "product_sheet", "share_intention_screenshot", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnHitOnYMALProductEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/ProductSheet/", str6), "ymal", "product_sheet", "navigation", null, CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(((PdpTrackingUiModel.OnHitOnYMALProductEvent) pdpTrackingUiModel).f61631b)), new AdditionalProperty.ContentType("slide_ymal")), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSwipeYMALCarouselEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/ProductSheet/", str6), "ymal", "product_sheet", "swipe", null, CollectionsKt.O(new AdditionalProperty.ContentType("slide_ymal")), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCrossSellProductClickedEvent) {
            String str15 = ((PdpTrackingUiModel.OnCrossSellProductClickedEvent) pdpTrackingUiModel).f61613a;
            return new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/ProductSheet/", str6), str15, "view_cart", "click", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str15))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCrossSellProductSwipeEvent) {
            return new Hit.EventHit.DefaultEventHit(null, tr.g("LVPass/ProductSheet/", str6), "horizontal_scroll", "view_cart", "swipe", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(((PdpTrackingUiModel.OnCrossSellProductSwipeEvent) pdpTrackingUiModel).f61614a, "%"))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSizeGuideClickEvent) {
            String strG15 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG15, str6, "product_sheet", "size_guide", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSizeGuideClosedEvent) {
            String strG16 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG16, str6, "product_sheet", "select_size_close", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSizeGuideCountryClickEvent) {
            String strG17 = tr.g("LVPass/ProductSheet/", str6);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG17, str6, "product_sheet", "select_size_by_country", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnSizeGuideUnitChangedEvent) {
            String str16 = ((PdpTrackingUiModel.OnSizeGuideUnitChangedEvent) pdpTrackingUiModel).f61651b ? "inches" : "cm";
            String strG18 = tr.g("LVPass/ProductSheet/", str6);
            String strConcat2 = "select_size_in_".concat(str16);
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, strG18, str6, "product_sheet", strConcat2, null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.NotifyMeOnProductPageEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "notify_me_1", "back_in_stock", "notifications", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.NotifyMeBottomSheetEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "notify_me_2", "back_in_stock", "notifications", null, TrackingExtKt.a(str2, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6)))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.CancelHotstampingCustomizationBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "hotstamping_removal_popin", "hotstamping_removal_popin", "product_sheet", null, 17, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.CancelPerfumeEngravingCustomizationBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "engraving_removal_popin", "engraving_removal_popin", "product_sheet", null, 17, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.EditHotstampingCustomizationBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "edit_hotstamping_popin", "edit_hotstamping_popin", "product_sheet_hotstamping", null, 17, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.EditPerfumeEngravingCustomizationBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "edit_engraving_popin", "edit_engraving_popin", "product_sheet_engraving", null, 17, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnMyMonogramCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_monogram_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnMyMonogramCardUpdateClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "modify_monogram_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnBeautyEngravingCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_engraving_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnBeautyEngravingCardUpdateClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "modify_engraving_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetOpenEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "close_bottom_pdp", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetConfirmEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "close_popin_pdp_confirm", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetCancelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "close_popin_pdp_cancel", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnHotstampingCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_hotstamping_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnPerfumeEngravingCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_engraving_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnHotstampingCardUpdateClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "modify_hotstamping_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnPerfumeEngravingCardUpdateClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "modify_engraving_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnDiamondEngravingCardClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_diamond_engraving_config", "product_sheet", "click", null, null, 97, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelHotstampingBottomSheetConfirmEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "continue_cta_popin", "product_sheet", "click", null, o60.t("hotstamping"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelHotstampingBottomSheetCancelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "cancel_cta_popin", "product_sheet", "click", null, o60.t("hotstamping"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelPerfumeEngravingBottomSheetConfirmEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "continue_cta_popin", "product_sheet", "click", null, o60.t("engraving"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnCancelPerfumeEngravingBottomSheetCancelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "cancel_cta_popin", "product_sheet", "click", null, o60.t("engraving"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditHotstampingBottomSheetEditEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "edit_hotstamping_popin", "product_sheet", "click", null, o60.t("hotstamping"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditHotstampingBottomSheetDeleteEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "delete_your_personnalization_hotstamping_popin", "product_sheet", "click", null, o60.t("hotstamping"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditPerfumeEngravingBottomSheetEditEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "edit_engraving_popin", "product_sheet", "click", null, o60.t("engraving"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditPerfumeEngravingBottomSheetDeleteEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "delete_your_personnalization_engraving_popin", "product_sheet", "click", null, o60.t("engraving"), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnDisplayServerOverloadSheet) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "waiting_room", "LVPass/ProductSheet/", "LVPass/ProductSheet/", null, 17, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnDismissServerOverloadSheet) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/ProductSheet/", "close_waiting_room_popin", "product_sheet", "click", null, CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnVariationClickedEvent) {
            SkuIdUiModel.Companion.b(str6);
            AdditionalProperty.Sku sku = new AdditionalProperty.Sku(str6, null);
            switch (VariationKt$WhenMappings.f68032a[((PdpTrackingUiModel.OnVariationClickedEvent) pdpTrackingUiModel).f61657b.ordinal()]) {
                case 1:
                    str3 = "color";
                    break;
                case 2:
                    str3 = "material";
                    break;
                case 3:
                    str3 = "model_size";
                    break;
                case 4:
                    str3 = "carat";
                    break;
                case 5:
                    str3 = "size";
                    break;
                case 6:
                    str3 = "language";
                    break;
                case 7:
                    str3 = "finish";
                    break;
                default:
                    v40.g();
                    return null;
            }
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "variation_clicked", "product_sheet", "click", null, CollectionsKt.P(sku, new AdditionalProperty.ContentId(str3)), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnMoreVariationClickedEvent) {
            PdpTrackingUiModel.OnMoreVariationClickedEvent onMoreVariationClickedEvent = (PdpTrackingUiModel.OnMoreVariationClickedEvent) pdpTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_panel_variations", "product_sheet", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(onMoreVariationClickedEvent.f61634a)), new AdditionalProperty.ContentId(tr.g("panel_", onMoreVariationClickedEvent.f61635b.name()))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnHighlightedContentClickedEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_highlighted_content", "product_sheet", "click", null, CollectionsKt.P(new AdditionalProperty.Sku(str6, null), new AdditionalProperty.ContentId(((PdpTrackingUiModel.OnHighlightedContentClickedEvent) pdpTrackingUiModel).f61629b)), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnPanelInfoEvent) {
            PdpTrackingUiModel.OnPanelInfoEvent onPanelInfoEvent = (PdpTrackingUiModel.OnPanelInfoEvent) pdpTrackingUiModel;
            String str17 = onPanelInfoEvent.f61638a;
            if (str17 != null) {
                SkuId.Companion companion2 = SkuId.INSTANCE;
            } else {
                SkuId.INSTANCE.getClass();
                str17 = SkuId.f67932b;
            }
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_panel_info", "product_sheet", "click", null, TrackingExtKt.a(str2, CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(str17)), new AdditionalProperty.ContentId(onPanelInfoEvent.f61639b))), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditorialContentItemClickedEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "editorial_content", "product_sheet", "click", null, CollectionsKt.P(new AdditionalProperty.Sku(str6, null), new AdditionalProperty.ContentId(((PdpTrackingUiModel.OnEditorialContentItemClickedEvent) pdpTrackingUiModel).f61626b)), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnEditorialContentCarouselSwipedEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "editorial_content", "product_sheet", "swipe", null, CollectionsKt.P(new AdditionalProperty.Sku(str6, null), new AdditionalProperty.ContentId(((PdpTrackingUiModel.OnEditorialContentCarouselSwipedEvent) pdpTrackingUiModel).f61624b)), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnTryOnClickedEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(HitType.VtoLaunch.f66526a, "product_sheet", "open_try_on", "product_sheet", "click", null, CollectionsKt.O(new AdditionalProperty.Sku(str6, null)), 32, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnShadeFinderClickedEvent) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_shade_finder", "product_sheet", "click", null, CollectionsKt.O(new AdditionalProperty.Sku(str6, null)), 33, null);
        }
        if (pdpTrackingUiModel instanceof PdpTrackingUiModel.OnContextualSizeEntryClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", tr.g("compare_sizes_", str6), "product_sheet", "click", "product_sheet", null, 65, null);
        }
        if (pdpTrackingUiModel.equals(PdpTrackingUiModel.VirtualStudioConsentScreen.f61662a)) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.ScreenHit.DefaultScreenHit(null, "virtual_studio_consent_page", "virtual_studio_consent_page", "virtual_studio", CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 1, null);
        }
        if (pdpTrackingUiModel.equals(PdpTrackingUiModel.OnAskForLivePresentationClickedEvent.f61598a)) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "product_sheet", "open_virtual_studio", "product_sheet", "click", "product_sheet", CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 1, null);
        }
        if (Intrinsics.c(pdpTrackingUiModel, PdpTrackingUiModel.OnVirtualStudioConsentAcceptedEvent.f61658a)) {
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "virtual_studio_consent_page", "accept_consent", "virtual_studio", "click", "virtual_studio", CollectionsKt.O(new AdditionalProperty.ProductSku(n00.v(str6))), 1, null);
        }
        v40.g();
        return null;
    }
}

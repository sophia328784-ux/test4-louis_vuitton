package com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShadeFinderTrackingUiModelKt {
    public static final Hit a(ShadeFinderTrackingUiModel shadeFinderTrackingUiModel) {
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.ShadeFinderIntroScreen.f62310a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "shade_finder_intro", "product_sheet_beauty_shade_finder", "shade_finder", null, 17, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnStartClickedEvent.f62306a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_intro", "start_shade_finder", "shade_finder", "click", null, null, 97, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnCloseIntroClickedEvent.f62302a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_intro", "close_shade_finder", "shade_finder", "click", null, null, 97, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.ShadeFinderScanScreen.f62312a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "shade_finder_scan", "product_sheet_beauty_shade_finder_scan", "shade_finder", null, 17, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnValidCheckEvent.f62309a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_scan", "valid_checks", "shade_finder", MvelScriptManager.VAR_EVENT, null, null, 97, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnCloseScanClickedEvent.f62304a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_scan", "close_shade_finder", "shade_finder", "click", null, null, 97, null);
        }
        if (shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.ShadeFinderRecommendationScreen) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            List list = ((ShadeFinderTrackingUiModel.ShadeFinderRecommendationScreen) shadeFinderTrackingUiModel).f62311a;
            companion.getClass();
            return new Hit.ScreenHit.DefaultScreenHit(null, "shade_finder_recommendation", "product_sheet_beauty_shade_finder", "shade_finder", CollectionsKt.O(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list))), 1, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnCloseRecommendationsEvent.f62303a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_recommendation", "close_shade_finder", "shade_finder", "click", null, null, 97, null);
        }
        if (shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.OnRecommendationsSwipedEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_recommendation", "swipe_recommendation", "shade_finder", "swipe", null, CollectionsKt.O(new AdditionalProperty.ContentId(((ShadeFinderTrackingUiModel.OnRecommendationsSwipedEvent) shadeFinderTrackingUiModel).f62305a)), 33, null);
        }
        if (shadeFinderTrackingUiModel.equals(ShadeFinderTrackingUiModel.OnTryAgainClickedEvent.f62307a)) {
            return new Hit.EventHit.DefaultEventHit(null, "shade_finder_recommendation", "no_result_try_again", "shade_finder", "click", null, null, 97, null);
        }
        boolean z = shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.OnAddToCartClickedEvent;
        HitType.AddToCart addToCart = HitType.AddToCart.f66505a;
        if (z) {
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            String str = ((ShadeFinderTrackingUiModel.OnAddToCartClickedEvent) shadeFinderTrackingUiModel).f62296a;
            companion2.getClass();
            SkuId.Companion companion3 = SkuId.INSTANCE;
            return new Hit.EventHit.DefaultEventHit(addToCart, "shade_finder_recommendation", "add_to_cart", "shade_finder", "click", null, CollectionsKt.P(new AdditionalProperty.Sku(str, null), new AdditionalProperty.ContentId("productName")), 32, null);
        }
        if (shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.OnAddToCartSuccessEvent) {
            SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
            String str2 = ((ShadeFinderTrackingUiModel.OnAddToCartSuccessEvent) shadeFinderTrackingUiModel).f62300a;
            companion4.getClass();
            SkuId.Companion companion5 = SkuId.INSTANCE;
            return new Hit.EventHit.DefaultEventHit(addToCart, "shade_finder_recommendation", "add_to_cart_success", "shade_finder", MvelScriptManager.VAR_EVENT, null, CollectionsKt.P(new AdditionalProperty.Sku(str2, null), new AdditionalProperty.ContentId("productName")), 32, null);
        }
        if (shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.OnAddToCartFailureEvent) {
            SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
            String str3 = ((ShadeFinderTrackingUiModel.OnAddToCartFailureEvent) shadeFinderTrackingUiModel).f62298a;
            companion6.getClass();
            SkuId.Companion companion7 = SkuId.INSTANCE;
            return new Hit.EventHit.DefaultEventHit(addToCart, "shade_finder_recommendation", "add_to_cart_error", "shade_finder", MvelScriptManager.VAR_EVENT, null, CollectionsKt.P(new AdditionalProperty.Sku(str3, null), new AdditionalProperty.ContentId("productName")), 32, null);
        }
        if (!(shadeFinderTrackingUiModel instanceof ShadeFinderTrackingUiModel.OnTryOnClickedEvent)) {
            v40.g();
            return null;
        }
        SkuIdUiModel.Companion companion8 = SkuIdUiModel.f61763c;
        List list2 = ((ShadeFinderTrackingUiModel.OnTryOnClickedEvent) shadeFinderTrackingUiModel).f62308a;
        companion8.getClass();
        return new Hit.EventHit.DefaultEventHit(null, "shade_finder_recommendation", "recommended_product_try_on", "shade_finder", "click", null, CollectionsKt.O(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list2))), 33, null);
    }
}

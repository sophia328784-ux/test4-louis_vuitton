package com.vuitton.android.presentation.screen.pdp.contextualsizing.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContextualSizingTrackingUiModelKt {
    public static final Hit a(ContextualSizingTrackingUiModel contextualSizingTrackingUiModel) {
        if (contextualSizingTrackingUiModel.equals(ContextualSizingTrackingUiModel.ContextualSizingScreen.f61528a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "compare_sizes_selection", "compare_sizes_selection", "pdp_contextual_sizing", null, 17, null);
        }
        if (contextualSizingTrackingUiModel instanceof ContextualSizingTrackingUiModel.OnSwipeOnModelSize) {
            String str = ((ContextualSizingTrackingUiModel.OnSwipeOnModelSize) contextualSizingTrackingUiModel).f61532a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return new Hit.EventHit.DefaultEventHit(null, "compare_sizes_selection", "swipe_product_card_".concat(str), "product_sheet", "swipe", "pdp_contextual_sizing", null, 65, null);
        }
        if (contextualSizingTrackingUiModel instanceof ContextualSizingTrackingUiModel.OnClickOnModelSize) {
            String str2 = ((ContextualSizingTrackingUiModel.OnClickOnModelSize) contextualSizingTrackingUiModel).f61530a;
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            return new Hit.EventHit.DefaultEventHit(null, "compare_sizes_selection", "select_product_card_".concat(str2), "product_sheet", "click", "pdp_contextual_sizing", null, 65, null);
        }
        if (contextualSizingTrackingUiModel instanceof ContextualSizingTrackingUiModel.OnClickOnViewDetails) {
            String str3 = ((ContextualSizingTrackingUiModel.OnClickOnViewDetails) contextualSizingTrackingUiModel).f61531a;
            SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
            return new Hit.EventHit.DefaultEventHit(null, "compare_sizes_selection", "view_detail_".concat(str3), "product_sheet", "click", "pdp_contextual_sizing", null, 65, null);
        }
        if (contextualSizingTrackingUiModel instanceof ContextualSizingTrackingUiModel.OnClickOnClose) {
            return new Hit.EventHit.DefaultEventHit(null, "compare_sizes_selection", "close_compare_sizes", "product_sheet", "click", "pdp_contextual_sizing", null, 65, null);
        }
        v40.g();
        return null;
    }
}

package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.extensions.TrackingExtKt;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPTrackingUiModelKt {
    public static final Hit a(PSPTrackingUiModel pSPTrackingUiModel, String str) {
        if (pSPTrackingUiModel instanceof PSPTrackingUiModel.ResultScreen) {
            PSPTrackingUiModel.ResultScreen resultScreen = (PSPTrackingUiModel.ResultScreen) pSPTrackingUiModel;
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/SearchCatalog", "internalsearchresult", "search_result_list", TrackingExtKt.a(str, CollectionsKt.P(new AdditionalProperty.InternalSearchKeywords(resultScreen.f62911a), new AdditionalProperty.NumberOfResults(String.valueOf(resultScreen.f62912b)))), 1, null);
        }
        if (pSPTrackingUiModel instanceof PSPTrackingUiModel.RequestSearch) {
            return new Hit.ViewSearchResultHit(null, ((PSPTrackingUiModel.RequestSearch) pSPTrackingUiModel).f62910a, 1, null);
        }
        if (pSPTrackingUiModel instanceof PSPTrackingUiModel.SearchDone) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/SearchCatalog", "Search_done", "SearchCatalog", "search", null, TrackingExtKt.a(str, CollectionsKt.O(new AdditionalProperty.InternalSearchKeywords(((PSPTrackingUiModel.SearchDone) pSPTrackingUiModel).f62913a))), 33, null);
        }
        if (pSPTrackingUiModel instanceof PSPTrackingUiModel.FilterClick) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/SearchCatalog", "Product_filters", "SearchCatalog", "filter", null, TrackingExtKt.a(str, EmptyList.f71768b), 33, null);
        }
        v40.g();
        return null;
    }
}

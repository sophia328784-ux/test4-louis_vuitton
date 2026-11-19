package com.vuitton.android.presentation.tracking;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.SelectItemTrackingValue;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class GA4TrackingUiModelKt {
    public static final Hit.EventHit a(GA4TrackingUiModel gA4TrackingUiModel) {
        if (!(gA4TrackingUiModel instanceof GA4TrackingUiModel.SelectItemClicked)) {
            if (gA4TrackingUiModel instanceof GA4TrackingUiModel.ViewItemListLoaded) {
                GA4TrackingUiModel.ViewItemListLoaded viewItemListLoaded = (GA4TrackingUiModel.ViewItemListLoaded) gA4TrackingUiModel;
                return new Hit.EventHit.ViewItemListEventHit(null, viewItemListLoaded.f65821a, null, null, null, null, viewItemListLoaded.f65822b, viewItemListLoaded.f65823c, viewItemListLoaded.d, viewItemListLoaded.f65824e, 61, null);
            }
            v40.g();
            return null;
        }
        GA4TrackingUiModel.SelectItemClicked selectItemClicked = (GA4TrackingUiModel.SelectItemClicked) gA4TrackingUiModel;
        String str = selectItemClicked.f65813a;
        String str2 = selectItemClicked.f65814b;
        String str3 = selectItemClicked.f65815c;
        String str4 = selectItemClicked.d;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str5 = selectItemClicked.f65816e;
        companion.getClass();
        SkuIdUiModel.Companion.b(str5);
        return new Hit.EventHit.SelectItemEventHit(null, str, null, null, null, null, str2, str3, str4, CollectionsKt.O(new SelectItemTrackingValue(selectItemClicked.f65819i, selectItemClicked.f65820j, str5, selectItemClicked.f65817f, selectItemClicked.g, selectItemClicked.f65818h, null)), 61, null);
    }
}

package com.vuitton.android.presentation.tracking;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MostPurchasedWithTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(MostPurchasedWithTrackingUiModel mostPurchasedWithTrackingUiModel) {
        if (mostPurchasedWithTrackingUiModel.equals(MostPurchasedWithTrackingUiModel.HeaderClicked.f65825a)) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "see_more_most_purchased_with", "feed", "click", "feed", null, 65, null);
        }
        if (mostPurchasedWithTrackingUiModel.equals(MostPurchasedWithTrackingUiModel.Swiped.f65826a)) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "swipe_most_purchased_with", "feed", "swipe", "feed", null, 65, null);
        }
        v40.g();
        return null;
    }
}

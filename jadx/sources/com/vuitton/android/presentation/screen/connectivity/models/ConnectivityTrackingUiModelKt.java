package com.vuitton.android.presentation.screen.connectivity.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConnectivityTrackingUiModelKt {
    public static final Hit a(ConnectivityTrackingUiModel connectivityTrackingUiModel) {
        if (connectivityTrackingUiModel.equals(ConnectivityTrackingUiModel.ConnectivityScreen.f56257a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT", null, "IoT", null, 17, null);
        }
        if (connectivityTrackingUiModel.equals(ConnectivityTrackingUiModel.WatchVideoScreen.f56261a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/WatchInVideo", null, "IoT", null, 17, null);
        }
        if (connectivityTrackingUiModel.equals(ConnectivityTrackingUiModel.EarphoneSectionClickEvent.f56258a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT", "Display_Earphones", "IoT", null, null, null, 113, null);
        }
        if (connectivityTrackingUiModel.equals(ConnectivityTrackingUiModel.PairNewObjectEvent.f56259a)) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT", "ScanIntention", "IoT", "associate", null, null, 97, null);
        }
        if (connectivityTrackingUiModel instanceof ConnectivityTrackingUiModel.ClickOnDiscoverEvent) {
            ConnectivityTrackingUiModel.ClickOnDiscoverEvent clickOnDiscoverEvent = (ConnectivityTrackingUiModel.ClickOnDiscoverEvent) connectivityTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT", "discover_click", "IoT", null, null, CollectionsKt.P(new AdditionalProperty.ContentId(clickOnDiscoverEvent.f56255a), new AdditionalProperty.ContentType(clickOnDiscoverEvent.f56256b)), 49, null);
        }
        if (connectivityTrackingUiModel instanceof ConnectivityTrackingUiModel.PairWatchV2SuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/Pairing", "Pairing_Successful", "IoT", Payload.RESPONSE, null, CollectionsKt.P(new AdditionalProperty.ContentType("watch"), new AdditionalProperty.ContentId(((ConnectivityTrackingUiModel.PairWatchV2SuccessEvent) connectivityTrackingUiModel).f56260a)), 33, null);
        }
        v40.g();
        return null;
    }
}

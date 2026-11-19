package com.vuitton.android.presentation.screen.connectivity.travel.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TravelTrackingUiModelKt {
    public static final Hit a(TravelTrackingUiModel travelTrackingUiModel) {
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.AddTravelPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/NewMyTravel", "", null, null, 17, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.TravelDetailPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/TravelDetail", "", null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.TravelDetailPageScreen) travelTrackingUiModel).f56459a)), 1, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.TravelTypeSelectionEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/NewMyTravel", "add_new_travel", "IoT", null, null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.TravelTypeSelectionEvent) travelTrackingUiModel).f56460a)), 49, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.ValidateNewTravelClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/NewMyTravel", "confirm_new_travel", "IoT", null, null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.ValidateNewTravelClickEvent) travelTrackingUiModel).f56461a)), 49, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.CreateTravelSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/NewMyTravel", "new_travel_added", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.CreateTravelErrorEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/NewMyTravel", "new_travel_added_failed", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.SwitchToEditTravelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/TravelDetail", "edit_details", "IoT", "edit", null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.SwitchToEditTravelEvent) travelTrackingUiModel).f56458a)), 33, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.EditTravelSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/TravelDetail", "edit_details_saved", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.DeleteTravelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/TravelDetail", "delete_travel", "IoT", "delete", null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.DeleteTravelEvent) travelTrackingUiModel).f56454a)), 33, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.DeleteTravelSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/TravelDetail", "delete_travel_confirmation", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (travelTrackingUiModel instanceof TravelTrackingUiModel.ShareTravelEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/TravelDetail", "share_travel", "IoT", "share", null, CollectionsKt.O(new AdditionalProperty.ContentType(((TravelTrackingUiModel.ShareTravelEvent) travelTrackingUiModel).f56457a)), 33, null);
        }
        v40.g();
        return null;
    }
}

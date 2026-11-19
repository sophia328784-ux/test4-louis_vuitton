package com.vuitton.android.presentation.screen.connectivity.watch.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WatchTrackingUiModelKt {
    public static final Hit a(WatchTrackingUiModel watchTrackingUiModel) {
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchGeneralPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/watch", "", null, null, 17, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchDetailPageScreen) {
            WatchTrackingUiModel.WatchDetailPageScreen watchDetailPageScreen = (WatchTrackingUiModel.WatchDetailPageScreen) watchTrackingUiModel;
            String strG = tr.g("LVPass/IoT/", watchDetailPageScreen.f56747b);
            String str = watchDetailPageScreen.f56746a;
            return new Hit.ScreenHit.DefaultScreenHit(null, strG, "", null, ArraysKt.v(new AdditionalProperty[]{str != null ? new AdditionalProperty.ContentId(str) : null, new AdditionalProperty.ContentType("watchface")}), 1, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchV3ContentPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/watch_thv3", "LVPass/IoT/watch_thv3", null, null, 17, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchSettingsPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/Dashboard", "", null, null, 17, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchTutorialCategoriesPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/Tutorial", "", null, null, 17, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchfacePageScreen) {
            String str2 = ((WatchTrackingUiModel.WatchfacePageScreen) watchTrackingUiModel).f56752a;
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/watchface/product", "", null, ArraysKt.v(new AdditionalProperty[]{str2 != null ? new AdditionalProperty.ContentId(str2) : null, new AdditionalProperty.ContentType("watchface")}), 1, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchfacePagerPageScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Watch/watchface/products", "", null, CollectionsKt.O(new AdditionalProperty.ContentType("watchface")), 1, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.SeeAllTravelsClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyTravel/NewMyTravel", "see_all", "IoT", null, null, null, 113, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.SeeAllWatchfacesClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/WatchFace", "see_all", "IoT", null, null, null, 113, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.UnpairSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/Dashboard", "Unpair_MyWatch", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.HowToGetWatchfaceClickEvent) {
            String str3 = ((WatchTrackingUiModel.HowToGetWatchfaceClickEvent) watchTrackingUiModel).f56742a;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/WatchFace", "Tutorial", "IoT", null, null, CollectionsKt.Q(str3 != null ? new AdditionalProperty.ContentType(str3) : null), 49, null);
        }
        if (watchTrackingUiModel instanceof WatchTrackingUiModel.WatchfaceSelectedEvent) {
            String str4 = ((WatchTrackingUiModel.WatchfaceSelectedEvent) watchTrackingUiModel).f56754a;
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Watch/WatchFace", "Watch_Face_Viewed", "IoT", null, null, CollectionsKt.Q(str4 != null ? new AdditionalProperty.ContentType(str4) : null), 49, null);
        }
        v40.g();
        return null;
    }
}

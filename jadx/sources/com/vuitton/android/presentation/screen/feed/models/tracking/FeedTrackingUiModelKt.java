package com.vuitton.android.presentation.screen.feed.models.tracking;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.cj;
import defpackage.o60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedTrackingUiModelKt {
    public static final Hit a(FeedTrackingUiModel feedTrackingUiModel) {
        String str;
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.FeedDiscoverScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "feed_discover", null, "feed", EmptyList.f71768b, 1, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.FeedForYouScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "feed_foryou", null, "feed", EmptyList.f71768b, 1, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.NotifyMeBottomSheetScreen) {
            String str2 = ((FeedTrackingUiModel.NotifyMeBottomSheetScreen) feedTrackingUiModel).f57944a;
            return new Hit.ScreenHit.DefaultScreenHit(null, "feed_notifyme", null, "event_bottomsheet", CollectionsKt.O(new AdditionalProperty.ContentId(str2 != null ? str2 : "")), 1, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.PermissionsBottomSheetScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "feed_permissions", null, "permissions_bottomsheet", EmptyList.f71768b, 1, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitLoginEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "open_login", "feed", "click", null, null, 97, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitRegisterEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "open_register", "feed", "click", null, null, 97, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitOnOrderEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "open_ongoing_orders", "feed", "click", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((FeedTrackingUiModel.OnHitOnOrderEvent) feedTrackingUiModel).f57953a))), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnSwipeOnOngoingOrdersEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed_foryou", "swipe_ongoing_orders", "feed", "swipe", null, null, 97, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.CardClickEvent) {
            FeedTrackingUiModel.CardClickEvent cardClickEvent = (FeedTrackingUiModel.CardClickEvent) feedTrackingUiModel;
            String strA = FeedTrackingUiModel.Companion.a(cardClickEvent.f57935a);
            EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardClickEvent.f57937c;
            if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Simple) {
                str = "simple";
            } else if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                str = "live";
            } else {
                if (!(editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Event)) {
                    v40.g();
                    return null;
                }
                str = MvelScriptManager.VAR_EVENT;
            }
            return new Hit.EventHit.DefaultEventHit(null, strA, "select_card", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType(str), new AdditionalProperty.ContentId(cardClickEvent.f57936b), new AdditionalProperty.Index(cardClickEvent.d)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitSlideShowItemEvent) {
            FeedTrackingUiModel.OnHitSlideShowItemEvent onHitSlideShowItemEvent = (FeedTrackingUiModel.OnHitSlideShowItemEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onHitSlideShowItemEvent.f57957a), "select_slideshow", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("slideshow"), new AdditionalProperty.ContentId(onHitSlideShowItemEvent.f57958b), new AdditionalProperty.Index(onHitSlideShowItemEvent.f57959c)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnSlideShowPageChangeEvent) {
            FeedTrackingUiModel.OnSlideShowPageChangeEvent onSlideShowPageChangeEvent = (FeedTrackingUiModel.OnSlideShowPageChangeEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, "feed_discover", "swipe_slideshow", "feed", o60.h(onSlideShowPageChangeEvent.f57969c, onSlideShowPageChangeEvent.d, "swipe_", "/"), null, CollectionsKt.P(new AdditionalProperty.ContentType("slideshow"), new AdditionalProperty.ContentId(onSlideShowPageChangeEvent.f57967a), new AdditionalProperty.Index(onSlideShowPageChangeEvent.f57968b)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitCarouselItemEvent) {
            FeedTrackingUiModel.OnHitCarouselItemEvent onHitCarouselItemEvent = (FeedTrackingUiModel.OnHitCarouselItemEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onHitCarouselItemEvent.f57949a), "select_carousel", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType(onHitCarouselItemEvent.f57950b), new AdditionalProperty.ContentId(onHitCarouselItemEvent.f57951c), new AdditionalProperty.Index(onHitCarouselItemEvent.d)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.CarouselSwipeEvent) {
            FeedTrackingUiModel.CarouselSwipeEvent carouselSwipeEvent = (FeedTrackingUiModel.CarouselSwipeEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(carouselSwipeEvent.f57938a), "swipe_carousel", "feed", "swipe", null, CollectionsKt.P(new AdditionalProperty.ContentType(carouselSwipeEvent.f57939b), new AdditionalProperty.ContentId(carouselSwipeEvent.f57940c), new AdditionalProperty.Index(carouselSwipeEvent.d)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitAddToCalendarEvent) {
            FeedTrackingUiModel.OnHitAddToCalendarEvent onHitAddToCalendarEvent = (FeedTrackingUiModel.OnHitAddToCalendarEvent) feedTrackingUiModel;
            String strA2 = FeedTrackingUiModel.Companion.a(onHitAddToCalendarEvent.f57947a);
            AdditionalProperty.ContentType contentType = new AdditionalProperty.ContentType("calendar");
            String str3 = onHitAddToCalendarEvent.f57948b;
            return new Hit.EventHit.DefaultEventHit(null, strA2, "add_to_calendar", "feed", "click", null, CollectionsKt.P(contentType, new AdditionalProperty.ContentId(str3 != null ? str3 : "")), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnHitRemoveFromCalendarEvent) {
            FeedTrackingUiModel.OnHitRemoveFromCalendarEvent onHitRemoveFromCalendarEvent = (FeedTrackingUiModel.OnHitRemoveFromCalendarEvent) feedTrackingUiModel;
            String strA3 = FeedTrackingUiModel.Companion.a(onHitRemoveFromCalendarEvent.f57955a);
            AdditionalProperty.ContentType contentType2 = new AdditionalProperty.ContentType("calendar");
            String str4 = onHitRemoveFromCalendarEvent.f57956b;
            return new Hit.EventHit.DefaultEventHit(null, strA3, "remove_from_calendar", "feed", "click", null, CollectionsKt.P(contentType2, new AdditionalProperty.ContentId(str4 != null ? str4 : "")), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnAuthorizeCalendarPermissionEvent) {
            FeedTrackingUiModel.OnAuthorizeCalendarPermissionEvent onAuthorizeCalendarPermissionEvent = (FeedTrackingUiModel.OnAuthorizeCalendarPermissionEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onAuthorizeCalendarPermissionEvent.f57945a), "authorize", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("calendar"), new AdditionalProperty.ContentId(onAuthorizeCalendarPermissionEvent.f57946b)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnRefuseCalendarPermissionEvent) {
            FeedTrackingUiModel.OnRefuseCalendarPermissionEvent onRefuseCalendarPermissionEvent = (FeedTrackingUiModel.OnRefuseCalendarPermissionEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onRefuseCalendarPermissionEvent.f57965a), "no_authorize", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("calendar"), new AdditionalProperty.ContentId(onRefuseCalendarPermissionEvent.f57966b)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnNotifyMeClickEvent) {
            FeedTrackingUiModel.OnNotifyMeClickEvent onNotifyMeClickEvent = (FeedTrackingUiModel.OnNotifyMeClickEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onNotifyMeClickEvent.f57962a), "notify_me", "feed", "click", null, CollectionsKt.P(new AdditionalProperty.ContentType("notify_me"), new AdditionalProperty.ContentId(onNotifyMeClickEvent.f57963b)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnNotifyMeSuccessEvent) {
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(((FeedTrackingUiModel.OnNotifyMeSuccessEvent) feedTrackingUiModel).f57964a), "success", "feed", "notify_me", null, CollectionsKt.O(new AdditionalProperty.ContentType("notify_me")), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OnNotifyMeAlreadyNotifiedEvent) {
            FeedTrackingUiModel.OnNotifyMeAlreadyNotifiedEvent onNotifyMeAlreadyNotifiedEvent = (FeedTrackingUiModel.OnNotifyMeAlreadyNotifiedEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(onNotifyMeAlreadyNotifiedEvent.f57960a), "already_activated", "feed", "notify_me", null, CollectionsKt.P(new AdditionalProperty.ContentType("notify_me"), new AdditionalProperty.ContentId(onNotifyMeAlreadyNotifiedEvent.f57961b)), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.ScrollPercentageReachedEvent) {
            FeedTrackingUiModel.ScrollPercentageReachedEvent scrollPercentageReachedEvent = (FeedTrackingUiModel.ScrollPercentageReachedEvent) feedTrackingUiModel;
            return new Hit.EventHit.DefaultEventHit(null, FeedTrackingUiModel.Companion.a(scrollPercentageReachedEvent.f57974a), "swipe_content", "feed", "scroll", null, CollectionsKt.O(new AdditionalProperty.ContentId(cj.d(scrollPercentageReachedEvent.f57975b, "%"))), 33, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OpenMyLVEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed", "open_myLV", "feed", "click", null, null, 97, null);
        }
        if (feedTrackingUiModel instanceof FeedTrackingUiModel.OpenLVPassEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "feed", "open_lvpass", "feed", "click", null, null, 97, null);
        }
        v40.g();
        return null;
    }
}

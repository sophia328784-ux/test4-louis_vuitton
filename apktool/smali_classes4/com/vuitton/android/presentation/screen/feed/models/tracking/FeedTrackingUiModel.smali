.class public interface abstract Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$Companion;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedDiscoverScreen;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedForYouScreen;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$PermissionsBottomSheetScreen;,
        Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0018\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u0082\u0001\u0017\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0\u00a8\u00061\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;",
        "",
        "Companion",
        "FeedDiscoverScreen",
        "FeedForYouScreen",
        "NotifyMeBottomSheetScreen",
        "PermissionsBottomSheetScreen",
        "OnHitLoginEvent",
        "OnHitRegisterEvent",
        "OnHitOnOrderEvent",
        "OnSwipeOnOngoingOrdersEvent",
        "CardClickEvent",
        "OnHitSlideShowItemEvent",
        "OnSlideShowPageChangeEvent",
        "OnHitCarouselItemEvent",
        "CarouselSwipeEvent",
        "OnHitAddToCalendarEvent",
        "OnHitRemoveFromCalendarEvent",
        "OnAuthorizeCalendarPermissionEvent",
        "OnRefuseCalendarPermissionEvent",
        "OnNotifyMeClickEvent",
        "OnNotifyMeSuccessEvent",
        "OnNotifyMeAlreadyNotifiedEvent",
        "ScrollPercentageReachedEvent",
        "OpenMyLVEvent",
        "OpenLVPassEvent",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CarouselSwipeEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedDiscoverScreen;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$FeedForYouScreen;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$NotifyMeBottomSheetScreen;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnAuthorizeCalendarPermissionEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitCarouselItemEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitOnOrderEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeAlreadyNotifiedEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeClickEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnNotifyMeSuccessEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnRefuseCalendarPermissionEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSlideShowPageChangeEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$PermissionsBottomSheetScreen;",
        "Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

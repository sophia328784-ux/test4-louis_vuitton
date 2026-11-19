.class public interface abstract Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;,
        Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0011\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0082\u0001\u0011\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#\u00a8\u0006$\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;",
        "",
        "Screen",
        "FilterClickedEvent",
        "SearchOpenedEvent",
        "ScreenshotTakenEvent",
        "AddToWishlistEvent",
        "RemoveFromWishlistEvent",
        "NativeShareRequestedEvent",
        "AddToWishlistSuccessEvent",
        "LongPressedEvent",
        "ShareProductEvent",
        "PlpScrolledEvent",
        "AddToWishlistRevampEvent",
        "StoreModeContentTypeSelectedEvent",
        "ChangeLayoutClickedEvent",
        "RemoveFromWishlistRevampEvent",
        "DispatchFilterSelectedEvent",
        "DispatchFilterSwipedEvent",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistRevampEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$AddToWishlistSuccessEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$LongPressedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$RemoveFromWishlistRevampEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ShareProductEvent;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$StoreModeContentTypeSelectedEvent;",
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

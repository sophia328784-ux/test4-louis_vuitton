.class public interface abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u001e\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u0082\u0001\u001e !\"#$%&\'()*+,-./0123456789:;<=\u00a8\u0006>\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;",
        "",
        "VtoScreen",
        "VtoHowToApplyScreen",
        "VtoMultipleProductBottomSheetScreen",
        "OnCompareClickedEvent",
        "OnStackingClickedEvent",
        "OnTakePictureClickedEvent",
        "OnDiscardPhotoClickedEvent",
        "OnSharePhotoClickedEvent",
        "OnAddToWishlistClickedEvent",
        "OnAddToWishlistSucceedEvent",
        "OnAddToWishlistFailureEvent",
        "OnAddToCardClickedEvent",
        "OnSnackbarRedirectToCartClickedEvent",
        "OnSnackbarOpenAlertClickedEvent",
        "OnCloseVtoScreenClickedEvent",
        "SelectSkuMultipleProductBottomSheetEvent",
        "CloseMultipleProductBottomSheetEvent",
        "AddToCartMultipleProductBottomSheetEvent",
        "OpenAlertMultipleProductBottomSheetEvent",
        "NotifyMeBottomSheetEvent",
        "OnLookSelectorClickedEvent",
        "OnLookClickedEvent",
        "OnHowToApplyClickedEvent",
        "OnHowToApplyClosedEvent",
        "OnHowToApplyScrolledEvent",
        "OnHowToApplyRecommendedSwipedEvent",
        "OnHowToApplyRecommendedClickedEvent",
        "OnSelectAColorClickedEvent",
        "OnColorSliderSwipedEvent",
        "OnDualColorSliderOpenedEvent",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;",
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

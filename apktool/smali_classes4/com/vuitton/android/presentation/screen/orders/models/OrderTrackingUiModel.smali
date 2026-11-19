.class public interface abstract Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromReviewClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromSelectionClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromVariationClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangePolicyClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$OpenSizeGuideClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnSuccessScreen;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;,
        Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u001f\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f \u0082\u0001\u001f!\"#$%&\'()*+,-./0123456789:;<=>?\u00a8\u0006@\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;",
        "",
        "ListPage",
        "ReturnClick",
        "ReturnOrExchangeDetailClick",
        "InvoiceClick",
        "ReturnFormScreen",
        "ReturnReviewScreen",
        "ReturnSuccessScreen",
        "ExchangeSelectionScreen",
        "ExchangeVariationScreen",
        "ExchangeReviewScreen",
        "ExchangeSuccessBottomSheet",
        "ProductSelectionForReturn",
        "ReturnContinueClick",
        "ReturnConfirmClick",
        "ReturnCancelClick",
        "ReturnValidationClick",
        "TrackingLinkClick",
        "DetailImageClick",
        "RequestExchangeClick",
        "RequestReturnClick",
        "ContactUsFromSelectionClick",
        "ContactUsFromVariationClick",
        "ContactUsFromReviewClick",
        "ExchangePolicyClick",
        "OpenSizeGuideClick",
        "SelectVariationClick",
        "ConfirmVariationClick",
        "ModifyVariationClick",
        "ConfirmExchangeClick",
        "ValidateBottomSheetClick",
        "ExchangeFailure",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromReviewClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromSelectionClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromVariationClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangePolicyClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$OpenSizeGuideClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnSuccessScreen;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;",
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

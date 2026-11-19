.class public interface abstract Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;,
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u001d\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u0082\u0001\u001d\u001f !\"#$%&\'()*+,-./0123456789:;\u00a8\u0006<\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;",
        "",
        "CertificateScreen",
        "CertificateTransferScreen",
        "CertificateTransferConfirmationScreen",
        "CertificateActivationScreen",
        "CertificateActivationConfirmationScreen",
        "CertificateUnlockNfcScreen",
        "CertificateVisionnaireDetailsScreen",
        "OpenCertificateEvent",
        "AddCertificateEvent",
        "ActivateCertificateEvent",
        "ActivateCertificateSuccessManualEvent",
        "ActivateCertificateErrorManualEvent",
        "OpenIndividualNumberInfoEvent",
        "OpenBuyerNameInfoEvent",
        "ConsentCheckboxToggledEvent",
        "OpenCertificateListFromContifrmationEvent",
        "TransferCertificateEvent",
        "AcceptTransferCertificateEvent",
        "CancelTransferCertificateEvent",
        "TransferCertificateActivationEvent",
        "HitOnStoneEngravingEvent",
        "ActivateCertificateIntentionEvent",
        "StartDetectionNfcEvent",
        "ActivateCertificateSuccessEvent",
        "NfcErrorEvent",
        "NeedHelpNfcEvent",
        "ViewJourneyEvent",
        "ProductSummarySectionEvent",
        "DetailsSectionEvent",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;",
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

.class public final synthetic Lsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;I)V
    .locals 0

    iput p3, p0, Lsl;->b:I

    iput-object p1, p0, Lsl;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p2, p0, Lsl;->c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V
    .locals 0

    .line 10
    iput p3, p0, Lsl;->b:I

    iput-object p1, p0, Lsl;->c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iput-object p2, p0, Lsl;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lsl;->b:I

    iget-object v1, p0, Lsl;->c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object p0, p0, Lsl;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    if-eqz v1, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    if-eqz v1, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    if-eqz v1, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

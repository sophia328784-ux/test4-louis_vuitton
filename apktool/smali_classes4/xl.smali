.class public final synthetic Lxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lxl;->b:I

    iput-object p1, p0, Lxl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p2, p0, Lxl;->d:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lxl;->b:I

    iget-object v1, p0, Lxl;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lxl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    const/4 v2, 0x0

    const/4 v3, 0x6

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, v2, v3}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    if-eqz p0, :cond_2

    :cond_1
    new-instance p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, v2, v3}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    iget-object p0, v1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "certificate"

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;

    invoke-static {v1, p0, v2, v3}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;I)V
    .locals 0

    iput p2, p0, Lvl;->b:I

    iput-object p1, p0, Lvl;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvl;->b:I

    iget-object p0, p0, Lvl;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;I)V
    .locals 0

    iput p2, p0, Lwl;->b:I

    iput-object p1, p0, Lwl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwl;->b:I

    iget-object p0, p0, Lwl;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

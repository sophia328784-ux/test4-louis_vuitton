.class public final synthetic Lul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lul;->b:I

    iput-object p1, p0, Lul;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    iput-object p2, p0, Lul;->d:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lul;->b:I

    iget-object v1, p0, Lul;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lul;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Add;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x6

    invoke-static {v1, p0, v2, v0}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u2()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;

    invoke-static {v1, p0}, Landroidx/navigation/NavController;->f(Landroidx/navigation/NavController;Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->u2()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;

    invoke-static {v1, p0}, Landroidx/navigation/NavController;->f(Landroidx/navigation/NavController;Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

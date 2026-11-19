.class public final synthetic Lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;I)V
    .locals 0

    iput p2, p0, Lwk;->b:I

    iput-object p1, p0, Lwk;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lwk;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwk;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->L9()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lwk;->c:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

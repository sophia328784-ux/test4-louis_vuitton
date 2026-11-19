.class final synthetic Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$onCreateView$1$1$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

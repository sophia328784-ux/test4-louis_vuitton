.class final synthetic Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$onCreateView$1$1$1$socialLoginState$2$1;
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
    .locals 7

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->H:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;->R()Z

    move-result p0

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;->j0()Z

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-static {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->e(Landroidx/fragment/app/FragmentActivity;ZZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "authenticationActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6
.end method

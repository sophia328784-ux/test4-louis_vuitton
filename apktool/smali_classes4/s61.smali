.class public final synthetic Ls61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;I)V
    .locals 0

    iput p2, p0, Ls61;->b:I

    iput-object p1, p0, Ls61;->c:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ls61;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ls61;->c:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->H:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    const-string p0, "authenticationActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->K(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

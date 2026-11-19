.class public final synthetic Lxd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lxd0;->b:I

    iput-object p1, p0, Lxd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    iput-object p2, p0, Lxd0;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lxd0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lxd0;->d:Landroid/content/Context;

    iget-object p0, p0, Lxd0;->c:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;

    invoke-direct {v0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;

    invoke-direct {v0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

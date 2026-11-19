.class public final synthetic Lqf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;I)V
    .locals 0

    iput p2, p0, Lqf0;->b:I

    iput-object p1, p0, Lqf0;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lqf0;->b:I

    const-string v1, "authenticationActivityRouter"

    const/4 v2, 0x0

    iget-object p0, p0, Lqf0;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    :cond_0
    if-eqz v2, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->K(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->F:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->F:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

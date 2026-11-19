.class public final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;",
        "",
        "<init>",
        "()V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010037

    const v2, 0x7f01003a

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_TRACKING_AUTH_ORIGIN"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->P:Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_0
    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f010037

    const v4, 0x7f01003a

    invoke-virtual {v0, v3, v4, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const v3, 0x7f0a0204

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->L:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->M:Ljava/lang/String;

    invoke-virtual {v0, v3, p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->L:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->M:Ljava/lang/String;

    invoke-virtual {v0, v3, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_4
    return-void
.end method

.method public static c(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->X()Z

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010035

    const v2, 0x7f01003a

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->L:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_WITH_POPUP"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->M:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v1, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_1
    return-void
.end method

.method public static d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;->LOGIN:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;)Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->B:Ljava/lang/String;

    const v2, 0x7f0a0204

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_2
    return-void
.end method

.method public static e(Landroidx/fragment/app/FragmentActivity;ZZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0, p3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const v0, 0x7f0a0204

    if-eqz p2, :cond_4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_1

    const-string v2, "EXTRA_TRACKING_ORIGIN"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p3, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->H:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    return-void

    :cond_4
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, p3

    if-ne v1, p3, :cond_5

    move p2, p3

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f010037

    const v2, 0x7f01003a

    invoke-virtual {p1, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    :cond_6
    if-eqz p2, :cond_7

    if-eqz p1, :cond_8

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;-><init>()V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;-><init>()V

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_9
    return-void
.end method

.method public static f(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f010035

    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;->a(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;ZZZ)Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->J:Ljava/lang/String;

    const v0, 0x7f0a0204

    invoke-virtual {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_0
    return-void
.end method

.method public static g(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f010035

    invoke-virtual {p0, v0, v0, v0, v0}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0, v0}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;->a(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;ZZZ)Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->J:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {p0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->p:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_0
    return-void
.end method

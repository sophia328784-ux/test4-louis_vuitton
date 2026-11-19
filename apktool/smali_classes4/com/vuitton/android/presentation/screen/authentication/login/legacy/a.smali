.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->b:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->L:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v8, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->b:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->K:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    if-eqz v7, :cond_5

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v9, :cond_4

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v10, :cond_3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$onCreateView$1$1$1$1$1;

    const-string v5, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v4, "onNavigateBackPressed"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v3, v9

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/a;->d:Ljava/lang/String;

    move-object v0, p1

    move-object v2, v7

    move-object v4, v10

    move-object v7, v1

    move-object v1, p2

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "linkHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p0, "analyticsWebInterface"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p0, "akamaiSecurityHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

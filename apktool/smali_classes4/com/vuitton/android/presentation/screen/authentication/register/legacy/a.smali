.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->L:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    const/4 v1, 0x0

    if-eqz v8, :cond_8

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    if-eqz v9, :cond_7

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v10, :cond_6

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v12, :cond_5

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    new-instance v2, Lk61;

    const/4 v1, 0x3

    invoke-direct {v2, v3, v1}, Lk61;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_4

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$onCreateView$1$1$1$2$1;

    const-string v6, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-class v4, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v5, "onNavigateBackPressed"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_4
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v4, v12

    const/4 v12, 0x0

    move-object v1, v8

    move-object v8, v13

    const/16 v13, 0x200

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/a;->e:Ljava/lang/String;

    move-object v3, v10

    move-object v10, v2

    move-object v2, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_5
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "linkHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p0, "analyticsWebInterface"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p0, "akamaiSecurityHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

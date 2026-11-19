.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->L:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-object v2, v1

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move-object v5, v2

    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    move-object v6, v3

    if-eqz v2, :cond_9

    iget-object v3, v14, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v3, :cond_8

    iget-object v7, v14, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v7, :cond_7

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_1

    if-ne v8, v9, :cond_2

    :cond_1
    new-instance v8, Lk61;

    invoke-direct {v8, v14, v4}, Lk61;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_3

    if-ne v6, v9, :cond_4

    :cond_3
    new-instance v6, Lp11;

    const/16 v4, 0x14

    invoke-direct {v6, v14, v4}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_5

    if-ne v10, v9, :cond_6

    :cond_5
    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$onCreateView$1$1$1$3$1;

    const-string v17, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/16 v18, 0x1

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v16, "onNavigateBackPressed"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v12

    :cond_6
    check-cast v10, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->c:Ljava/lang/String;

    move-object v9, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/a;->e:Ljava/lang/String;

    move-object/from16 v19, v7

    move-object v7, v0

    move-object v0, v4

    move-object/from16 v4, v19

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_7
    const-string v0, "logger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_8
    const-string v0, "linkHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_9
    const-string v0, "analyticsWebInterface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_a
    move-object v6, v3

    const-string v0, "akamaiSecurityHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

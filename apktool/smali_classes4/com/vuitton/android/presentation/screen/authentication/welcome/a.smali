.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/welcome/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/a;->b:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/a;->c:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->I:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v2, v11, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    and-int/2addr v1, v10

    invoke-interface {v6, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/a;->b:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_1

    if-ne v3, v4, :cond_2

    :cond_1
    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$onCreateView$1$1$1$socialLoginState$1$1;

    const-string v17, "navigateToLogin()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    const-string v16, "navigateToLogin"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v12

    :cond_2
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_3

    if-ne v5, v4, :cond_4

    :cond_3
    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$onCreateView$1$1$1$socialLoginState$2$1;

    const-string v17, "navigateToRegister()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    const-string v16, "navigateToRegister"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v12

    :cond_4
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    new-instance v7, Ls61;

    invoke-direct {v7, v14, v9}, Ls61;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v5, v4

    move-object v4, v7

    const/4 v7, 0x6

    const/16 v8, 0x10

    move-object v12, v5

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/a;->c:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "EXIT_ICON"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    :cond_7
    move v3, v9

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_8

    if-ne v4, v12, :cond_9

    :cond_8
    move-object v5, v12

    goto :goto_1

    :cond_9
    move-object v5, v12

    goto :goto_2

    :goto_1
    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment$onCreateView$1$1$1$1$1;

    const-string v17, "onConnectivityCardClicked()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;

    const-string v16, "onConnectivityCardClicked"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v12

    :goto_2
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_a

    if-ne v7, v5, :cond_b

    :cond_a
    new-instance v7, Ls61;

    invoke-direct {v7, v14, v10}, Ls61;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_c

    if-ne v8, v5, :cond_d

    :cond_c
    new-instance v8, Ls61;

    invoke-direct {v8, v14, v11}, Ls61;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    const/16 v12, 0x631

    const/4 v0, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v10, v6

    move-object v6, v7

    move-object v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

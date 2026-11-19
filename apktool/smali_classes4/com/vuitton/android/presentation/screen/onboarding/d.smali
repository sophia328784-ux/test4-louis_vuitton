.class public final synthetic Lcom/vuitton/android/presentation/screen/onboarding/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->e:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->h:Ljava/lang/Object;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->i:Ljava/lang/Object;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->g:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->f:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->h:Ljava/lang/Object;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->e:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->g:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/onboarding/d;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->b:I

    const/4 v2, 0x0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->g:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->i:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->h:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->e:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v1, :pswitch_data_0

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function1;

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_0

    if-ne v9, v3, :cond_1

    :cond_0
    new-instance v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$12$1$1;

    invoke-direct {v9, v8, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$12$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v1, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-ne v4, v3, :cond_3

    :cond_2
    new-instance v4, Ldh0;

    const/4 v2, 0x4

    invoke-direct {v4, v7, v2}, Ldh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    new-instance v4, Ltb0;

    const/16 v2, 0x10

    invoke-direct {v4, v7, v2}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->d:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->f:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v6

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_0
    check-cast v6, Landroidx/navigation/NavHostController;

    check-cast v5, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_6

    if-ne v10, v3, :cond_7

    :cond_6
    new-instance v10, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$1$1$1;

    invoke-direct {v10, v8, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_8

    if-ne v8, v3, :cond_9

    :cond_8
    new-instance v8, Lyj;

    const/4 v2, 0x7

    invoke-direct {v8, v6, v2}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v13, v8

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x6

    const/16 v17, 0x10

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->d:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/onboarding/d;->f:Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v11

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_a

    if-ne v2, v3, :cond_b

    :cond_a
    new-instance v2, Leh0;

    const/4 v0, 0x1

    invoke-direct {v2, v7, v6, v4, v0}, Leh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_c

    if-ne v2, v3, :cond_d

    :cond_c
    new-instance v2, Ldh0;

    const/4 v0, 0x3

    invoke-direct {v2, v7, v0}, Ldh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_e

    if-ne v2, v3, :cond_f

    :cond_e
    new-instance v2, Lyj;

    const/16 v0, 0x8

    invoke-direct {v2, v6, v0}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v19, v2

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    const/16 v22, 0x1d9

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v20, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

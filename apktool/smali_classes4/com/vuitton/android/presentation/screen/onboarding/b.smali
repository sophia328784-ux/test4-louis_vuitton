.class public final synthetic Lcom/vuitton/android/presentation/screen/onboarding/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/navigation/NavHostController;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->g:Lkotlin/Function;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->d:Landroidx/navigation/NavHostController;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->d:Landroidx/navigation/NavHostController;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->g:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Landroidx/navigation/NavHostController;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 18
    iput p6, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->d:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/b;->g:Lkotlin/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->b:I

    const/16 v2, 0x9

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->d:Landroidx/navigation/NavHostController;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->g:Lkotlin/Function;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->f:Ljava/lang/Object;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->e:Ljava/lang/Object;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/onboarding/b;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v1, :pswitch_data_0

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-object v14, v9

    check-cast v14, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_0

    if-ne v9, v6, :cond_1

    :cond_0
    new-instance v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$9$1$1;

    invoke-direct {v9, v0, v5}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$9$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    new-instance v4, Lyj;

    invoke-direct {v4, v7, v3}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_4

    if-ne v3, v6, :cond_5

    :cond_4
    new-instance v3, Lof0;

    invoke-direct {v3, v14, v11, v7}, Lof0;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x1b0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v19, v0

    move-object/from16 v18, v8

    invoke-static/range {v11 .. v19}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt;->a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_0
    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p4

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_6

    if-ne v11, v6, :cond_7

    :cond_6
    new-instance v11, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$4$1$1;

    invoke-direct {v11, v0, v5}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$4$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_8

    if-ne v2, v6, :cond_9

    :cond_8
    new-instance v2, Lfh0;

    invoke-direct {v2, v10, v7, v4}, Lfh0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v9, v8, v3, v4}, Lcom/vuitton/android/presentation/screen/privacy/components/PiplCbdtComposableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_1
    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-object v13, v9

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_a

    if-ne v9, v6, :cond_b

    :cond_a
    new-instance v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$3$1$1;

    invoke-direct {v9, v0, v5}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$3$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_c

    new-instance v0, Lmg0;

    invoke-direct {v0, v3}, Lmg0;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_d

    if-ne v3, v6, :cond_e

    :cond_d
    new-instance v3, Lyj;

    invoke-direct {v3, v7, v2}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x1b0

    const/4 v11, 0x1

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/privacy/components/precompliance/PrivacyPreComplianceComposableKt;->a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_2
    check-cast v10, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    check-cast v9, Landroidx/compose/runtime/State;

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_f

    if-ne v3, v6, :cond_10

    :cond_f
    new-instance v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$2$1$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v4}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_11

    if-ne v2, v6, :cond_12

    :cond_11
    new-instance v2, Ldh0;

    const/4 v0, 0x1

    invoke-direct {v2, v10, v0}, Ldh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_13

    if-ne v2, v6, :cond_14

    :cond_13
    new-instance v2, Leh0;

    invoke-direct {v2, v10, v7, v9, v4}, Leh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingStartNowComposableKt;->a(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

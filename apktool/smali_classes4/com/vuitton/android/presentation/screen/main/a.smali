.class public final synthetic Lcom/vuitton/android/presentation/screen/main/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/a;->b:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v0, v2, [Landroidx/navigation/Navigator;

    invoke-static {v0, v4}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v8

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v2, v0, v4, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v6

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/main/a;->b:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v9

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-static {v9, v1, v4, v2, v0}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v22

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object v9

    invoke-interface {v9}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->Z6()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-static {v9, v1, v4, v2, v0}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v23

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v9, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$None;->a:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$None;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_2

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    iget-boolean v11, v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;->b:Z

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v11

    or-int/2addr v11, v12

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_3

    if-ne v12, v9, :cond_4

    :cond_3
    new-instance v12, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    iget-boolean v11, v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;->b:Z

    new-instance v13, Llb0;

    invoke-direct {v13, v7, v2}, Llb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-direct {v12, v8, v11, v13}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;-><init>(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v14, v12

    check-cast v14, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget v11, v11, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->g:I

    iget-object v12, v14, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->h()Lkotlin/reflect/KClass;

    move-result-object v15

    const-class v5, Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_6
    move-object v13, v1

    :goto_2
    check-cast v13, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->b()Landroidx/compose/runtime/MutableState;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v5, v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_8

    if-ne v11, v9, :cond_9

    :cond_8
    new-instance v11, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;

    invoke-direct {v11, v7, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_a

    if-ne v11, v9, :cond_b

    :cond_a
    new-instance v11, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$2$1;

    invoke-direct {v11, v7, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_c

    if-ne v11, v9, :cond_d

    :cond_c
    new-instance v11, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$3$1;

    invoke-direct {v11, v7, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_e

    if-ne v11, v9, :cond_f

    :cond_e
    new-instance v11, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$4$1;

    invoke-direct {v11, v7, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$4$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "onCreate$lambda$0$0"

    invoke-direct {v5, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v15

    move-object/from16 v16, v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v4, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-eqz v18, :cond_2b

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_10
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object v1, v0

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    iget-object v5, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v5}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iget-object v13, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v13}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v15

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->O3()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v15

    move-object/from16 p0, v0

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    if-eqz v0, :cond_2a

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->D:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v0, :cond_29

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/main/MainActivity;->y:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    if-eqz v0, :cond_28

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v21, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v20, :cond_12

    if-ne v0, v9, :cond_11

    goto :goto_4

    :cond_11
    move-object/from16 v20, v1

    const/4 v1, 0x0

    goto :goto_5

    :cond_12
    :goto_4
    new-instance v0, Lmb0;

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v17, :cond_14

    if-ne v1, v9, :cond_13

    goto :goto_6

    :cond_13
    move-object/from16 v17, v0

    goto :goto_7

    :cond_14
    :goto_6
    new-instance v1, Lmb0;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    invoke-direct {v1, v7, v0}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    move/from16 p2, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_16

    if-ne v0, v9, :cond_15

    goto :goto_8

    :cond_15
    move-object/from16 p2, v1

    goto :goto_9

    :cond_16
    :goto_8
    new-instance v0, Lt30;

    move-object/from16 p2, v1

    const/16 v1, 0xc

    invoke-direct {v0, v7, v10, v1}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_17

    new-instance v1, Lba0;

    move-object/from16 v25, v0

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lba0;-><init>(I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_a

    :cond_17
    move-object/from16 v25, v0

    :goto_a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v26, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v26, :cond_19

    if-ne v0, v9, :cond_18

    goto :goto_b

    :cond_18
    move-object/from16 v26, v1

    goto :goto_c

    :cond_19
    :goto_b
    new-instance v0, Lmb0;

    move-object/from16 v26, v1

    const/4 v1, 0x2

    invoke-direct {v0, v7, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 p1, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_1a

    if-ne v0, v9, :cond_1b

    :cond_1a
    new-instance v0, Lmb0;

    const/4 v1, 0x3

    invoke-direct {v0, v7, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v27, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    move/from16 v28, v1

    const/4 v1, 0x4

    if-nez v28, :cond_1c

    if-ne v0, v9, :cond_1d

    :cond_1c
    new-instance v0, Lmb0;

    invoke-direct {v0, v7, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v28

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v28, :cond_1f

    if-ne v1, v9, :cond_1e

    goto :goto_d

    :cond_1e
    move-object/from16 v28, v0

    goto :goto_e

    :cond_1f
    :goto_d
    new-instance v1, Ld3;

    move-object/from16 v28, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v7, v0}, Ld3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_e
    check-cast v1, Lkotlin/jvm/functions/Function3;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x12

    move-object/from16 v29, v3

    move-object/from16 v32, v9

    move-object/from16 v31, v11

    move-object/from16 v30, v12

    move-object v3, v13

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v9, v19

    move-object/from16 v24, v20

    move-object/from16 v17, v27

    move-object/from16 v16, p1

    move-object/from16 v13, p2

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v20, v4

    move-object v2, v5

    move-object v5, v14

    move-object v4, v15

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v25, v10

    move-object/from16 v10, v21

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 p0, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v28

    invoke-static/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/main/components/MainActivityComposableKt;->a(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v14, v5

    move-object v12, v6

    move-object/from16 v4, v20

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;

    const-string v1, "splashscreen_secondary.json"

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v0, v4, v1}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->c(Lcom/airbnb/lottie/compose/LottieCompositionSpec;Landroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v5, 0x3fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v11

    invoke-interface {v11}, Lcom/airbnb/lottie/compose/LottieAnimationState;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {v11}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_20

    const v0, 0x12f8a466

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v13, v31

    invoke-direct {v0, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v30

    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v0, 0x7f08039f

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v4

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v8, 0x61b8

    const/16 v9, 0x68

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, v17

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :cond_20
    move-object/from16 v15, v30

    move-object/from16 v13, v31

    const v0, 0x12fe8fe3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_f
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->a:Z

    if-eqz v0, :cond_23

    const v0, 0x12ff71ba

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v10}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_21

    move-object/from16 v1, v32

    if-ne v2, v1, :cond_22

    goto :goto_10

    :cond_21
    move-object/from16 v1, v32

    :goto_10
    new-instance v2, Lam;

    const/4 v3, 0x4

    invoke-direct {v2, v11, v3}, Lam;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object/from16 v32, v1

    move-object v1, v2

    invoke-static {v13, v15}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v11

    sget-object v11, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v19, 0x30

    const v20, 0x1f7f8

    move-object v5, v3

    const/4 v3, 0x0

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v31, v13

    const/4 v13, 0x0

    move-object/from16 v21, v14

    const/4 v14, 0x0

    move-object/from16 v30, v15

    const/4 v15, 0x0

    move-object/from16 v22, v16

    const/16 v16, 0x0

    move-object/from16 v26, v18

    const/16 v18, 0x180

    move-object/from16 v34, v21

    move-object/from16 v33, v26

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move-object/from16 v37, v32

    invoke-static/range {v0 .. v20}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v4, v17

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_11

    :cond_23
    move-object/from16 v22, v11

    move-object/from16 v33, v12

    move-object/from16 v36, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v37, v32

    const v0, 0x130444c3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_11
    invoke-interface/range {v22 .. v22}, Lcom/airbnb/lottie/compose/LottieAnimationState;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface/range {v22 .. v22}, Lcom/airbnb/lottie/compose/LottieAnimationState;->k()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface/range {v22 .. v22}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->S2()V

    :cond_24
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;->a:Z

    if-eqz v0, :cond_25

    const v0, 0x1307ab6d

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v13, v36

    invoke-direct {v0, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v35

    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_12

    :cond_25
    const v0, 0x1309de83

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_12
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    move-object/from16 v13, p0

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v14, v34

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v12, v33

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_26

    move-object/from16 v0, v37

    if-ne v1, v0, :cond_27

    :cond_26
    new-instance v9, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1;

    const/4 v15, 0x0

    move-object/from16 v11, v24

    move-object/from16 v10, v25

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v9

    :cond_27
    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, v29

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    :cond_28
    const-string v0, "passAppLinkBuilder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_29
    const-string v0, "contributionLinkNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_2a
    const-string v0, "mainActivityRouter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_2b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_2c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/options/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

.field public final synthetic i:Lcom/vuitton/android/presentation/PreprodRouter;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lcom/vuitton/android/presentation/PreprodRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/e;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/e;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/e;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/e;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/e;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/e;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/options/e;->h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/options/e;->i:Lcom/vuitton/android/presentation/PreprodRouter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/options/e;->b:Landroidx/navigation/NavHostController;

    iget-object v1, v4, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v3, Landroidx/lifecycle/SavedStateHandle;->b:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    iget-object v6, v3, Landroidx/lifecycle/internal/SavedStateHandleImpl;->d:Ljava/util/LinkedHashMap;

    const-string v7, "featureFlagsChanged"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v8, v3, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a:Ljava/util/LinkedHashMap;

    if-eqz v6, :cond_2

    iget-object v3, v3, Landroidx/lifecycle/internal/SavedStateHandleImpl;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v6, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v3, v3, Landroidx/lifecycle/internal/SavedStateHandleImpl;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v6, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v2

    :goto_0
    const/4 v5, 0x0

    if-nez v3, :cond_6

    const v3, 0x740b9029

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    move-object v3, v2

    goto :goto_1

    :cond_6
    const v6, -0x3e523528

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v6, 0x7

    invoke-static {v3, v2, v14, v5, v6}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    move-object v6, v2

    :goto_2
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/options/e;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_8

    if-ne v9, v10, :cond_9

    :cond_8
    new-instance v9, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$1$1$1;

    invoke-direct {v9, v3, v8, v1, v2}, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$1$1$1;-><init>(Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/e;->e:Landroid/content/Context;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/e;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v2, :cond_a

    if-ne v6, v10, :cond_b

    :cond_a
    new-instance v6, Lsh0;

    invoke-direct {v6, v1, v3, v7}, Lsh0;-><init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/options/e;->h:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_c

    if-ne v9, v10, :cond_d

    :cond_c
    new-instance v9, Lrh0;

    const/4 v3, 0x4

    invoke-direct {v9, v2, v4, v3}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_e

    if-ne v3, v10, :cond_f

    :cond_e
    new-instance v3, Lyj;

    const/16 v2, 0xc

    invoke-direct {v3, v4, v2}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_10

    if-ne v11, v10, :cond_11

    :cond_10
    new-instance v11, Lyj;

    const/16 v2, 0xd

    invoke-direct {v11, v4, v2}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v11, Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/options/e;->i:Lcom/vuitton/android/presentation/PreprodRouter;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_12

    if-ne v13, v10, :cond_13

    :cond_12
    new-instance v13, Lth0;

    invoke-direct {v13, v2, v1, v5}, Lth0;-><init>(Lcom/vuitton/android/presentation/PreprodRouter;Landroid/content/Context;I)V

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_14

    if-ne v12, v10, :cond_15

    :cond_14
    new-instance v12, Lth0;

    invoke-direct {v12, v2, v1, v7}, Lth0;-><init>(Lcom/vuitton/android/presentation/PreprodRouter;Landroid/content/Context;I)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_16

    if-ne v7, v10, :cond_17

    :cond_16
    new-instance v7, Lth0;

    const/4 v5, 0x2

    invoke-direct {v7, v2, v1, v5}, Lth0;-><init>(Lcom/vuitton/android/presentation/PreprodRouter;Landroid/content/Context;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/options/e;->d:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/e;->g:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v13

    move-object v13, v7

    move-object v7, v0

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt;->b(Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

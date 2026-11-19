.class public abstract Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;",
        "viewState",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v7, p6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x52e9c539

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    or-int v0, p8, v0

    move-object/from16 v2, p1

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v4, p3

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v5, p4

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v6, p5

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v3, 0x80000

    :goto_6
    or-int/2addr v0, v3

    const v3, 0x92493

    and-int/2addr v3, v0

    const v11, 0x92492

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v3, v11, :cond_7

    move v3, v13

    goto :goto_7

    :cond_7
    move v3, v12

    :goto_7
    and-int/2addr v0, v13

    invoke-virtual {v9, v0, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v3, 0x7

    const/4 v11, 0x0

    invoke-static {v0, v11, v9, v12, v3}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->f:Ljava/lang/Boolean;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->b:Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;

    :goto_8
    new-array v3, v13, [Landroidx/navigation3/runtime/NavKey;

    aput-object v0, v3, v12

    invoke-static {v3, v9}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object v3

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v0, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_9

    if-ne v14, v15, :cond_a

    :cond_9
    new-instance v14, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$1$1;

    invoke-direct {v14, v8, v3, v11}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$1$1;-><init>(Lkotlinx/coroutines/flow/SharedFlow;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v8, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v0

    invoke-static {v9}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v11

    new-array v14, v10, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v0, v14, v12

    aput-object v11, v14, v13

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const v0, 0x3f8e4f7a

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$$inlined$entryProvider$default$1;

    new-instance v11, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v11, v0}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lv0;

    invoke-direct {v0, v1, v7, v3}, Lv0;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;)V

    const v14, 0x2911d015

    invoke-static {v14, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v14, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v10

    sget-object v12, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;

    invoke-virtual {v12, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$2;

    invoke-direct {v2, v10}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v1, v14, v2, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "fade_transition"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    new-instance v0, Lw0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lw0;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    const v2, 0x317a0e09

    invoke-static {v2, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$3;

    const-class v4, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;

    invoke-virtual {v12, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$4;

    invoke-direct {v5, v10}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v4, v2, v5, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lv0;

    invoke-direct {v0, v1, v3, v7}, Lv0;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    const v2, -0x503b6910

    invoke-static {v2, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5;->b:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$5;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;

    invoke-virtual {v12, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$6;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$lambda$3$$inlined$entry$default$6;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v5, v2, v6, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Landroidx/navigation3/runtime/a;

    invoke-direct {v0, v11}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    if-ne v5, v15, :cond_c

    :cond_b
    new-instance v5, Lx0;

    invoke-direct {v5, v3, v2}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_d

    new-instance v2, Lp;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lp;-><init>(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_e

    new-instance v2, Lp;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lp;-><init>(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_f

    new-instance v2, Lt;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lt;-><init>(I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function2;

    sget-object v2, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v21, 0x30000000

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    move-object v9, v3

    invoke-static/range {v9 .. v21}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_a

    :cond_10
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_12

    new-instance v0, Lt0;

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v3, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lt0;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;II)V

    :goto_9
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_11
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_12

    new-instance v0, Lt0;

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lt0;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;II)V

    goto :goto_9

    :cond_12
    return-void
.end method

.class public abstract Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;",
        "catalogRoutingState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    move-object/from16 v4, p6

    move-object/from16 v0, p7

    const v2, 0x2c85e92c

    move-object/from16 v3, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p12, v2

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    move-object/from16 v12, p2

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v13, p4

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x4000

    goto :goto_3

    :cond_3
    const/16 v5, 0x2000

    :goto_3
    or-int/2addr v2, v5

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v5, 0x10000

    :goto_4
    or-int/2addr v2, v5

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x80000

    :goto_5
    or-int/2addr v2, v5

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v5, 0x400000

    :goto_6
    or-int/2addr v2, v5

    move-object/from16 v5, p8

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/high16 v7, 0x4000000

    goto :goto_7

    :cond_7
    const/high16 v7, 0x2000000

    :goto_7
    or-int/2addr v2, v7

    move-object/from16 v7, p9

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/high16 v8, 0x20000000

    goto :goto_8

    :cond_8
    const/high16 v8, 0x10000000

    :goto_8
    or-int/2addr v2, v8

    move-object/from16 v8, p10

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v16, 0x4

    goto :goto_9

    :cond_9
    move/from16 v16, v3

    :goto_9
    const v9, 0x12492493

    and-int/2addr v9, v2

    const v6, 0x12492492

    if-ne v9, v6, :cond_b

    and-int/lit8 v6, v16, 0x3

    if-eq v6, v3, :cond_a

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v3, 0x1

    :goto_b
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v10, v6, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p12, 0x1

    const-string v17, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v3, :cond_d

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v2, v2, -0x1c01

    move-object/from16 v18, p3

    const/high16 v3, 0x800000

    goto :goto_f

    :cond_d
    :goto_c
    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-static {v6, v10}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v8

    instance-of v3, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_e

    move-object v3, v6

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    :goto_d
    move-object v9, v3

    goto :goto_e

    :cond_e
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_d

    :goto_e
    const-class v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;

    sget-object v11, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v11, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v7, 0x0

    move-object v5, v3

    const/high16 v3, 0x800000

    invoke-static/range {v5 .. v10}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;

    and-int/lit16 v2, v2, -0x1c01

    move-object/from16 v18, v5

    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface/range {v18 .. v18}, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;->D3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v6

    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v6

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v6

    float-to-int v11, v6

    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v6

    invoke-static {v6, v10}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v6

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v8, v2, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_f

    const/4 v9, 0x1

    goto :goto_10

    :cond_f
    const/4 v9, 0x0

    :goto_10
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v9, v9, v19

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_10

    if-ne v3, v13, :cond_11

    :cond_10
    new-instance v3, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$3$1;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v5, v9}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;

    instance-of v9, v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;

    if-eqz v9, :cond_21

    const v2, 0x336b3669

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    const/4 v2, 0x1

    goto :goto_11

    :cond_12
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_13

    if-ne v3, v13, :cond_14

    :cond_13
    new-instance v3, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$4$1;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v9}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$4$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    new-array v3, v2, [Landroidx/navigation/Navigator;

    invoke-static {v3, v10}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v3

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;->a:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;

    :goto_12
    move-object v11, v5

    goto :goto_13

    :cond_15
    sget-object v5, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Welcome;

    goto :goto_12

    :goto_13
    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_20

    move v5, v8

    invoke-static {v6, v10}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v8

    instance-of v7, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v7, :cond_16

    move-object v7, v6

    check-cast v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v7}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v7

    :goto_14
    move-object v9, v7

    goto :goto_15

    :cond_16
    sget-object v7, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_14

    :goto_15
    sget-object v7, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    invoke-virtual {v7, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move/from16 p3, v5

    move-object v5, v2

    move/from16 v2, p3

    move-object/from16 p3, v3

    move-object/from16 v3, v16

    invoke-static/range {v5 .. v10}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-static {v6, v10}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v8

    instance-of v5, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v5, :cond_17

    move-object v5, v6

    check-cast v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v5}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v5

    :goto_16
    move-object v9, v5

    goto :goto_17

    :cond_17
    sget-object v5, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_16

    :goto_17
    const-class v5, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_19

    if-ne v5, v13, :cond_18

    goto :goto_18

    :cond_18
    const/4 v9, 0x4

    goto :goto_19

    :cond_19
    :goto_18
    new-instance v5, Lje;

    const/4 v9, 0x4

    invoke-direct {v5, v14, v9}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v5, Lkotlin/jvm/functions/Function0;

    if-ne v2, v9, :cond_1a

    const/4 v2, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1b

    if-ne v3, v13, :cond_1c

    :cond_1b
    new-instance v3, Ldk;

    const/4 v2, 0x1

    invoke-direct {v3, v1, v2}, Ldk;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_1d

    if-ne v6, v13, :cond_1e

    :cond_1d
    new-instance v6, Lm;

    const/4 v9, 0x4

    invoke-direct {v6, v4, v14, v9}, Lm;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;I)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    move-object v2, v11

    move-object v11, v6

    move-object v6, v2

    move-object v9, v5

    move-object v12, v10

    move-object/from16 v7, v16

    const/4 v2, 0x0

    move-object/from16 v5, p3

    move-object v10, v3

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v12

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1f

    :cond_1f
    invoke-static/range {v17 .. v17}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static/range {v17 .. v17}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_21
    move v5, v8

    const/4 v12, 0x0

    instance-of v3, v3, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$Catalog;

    if-eqz v3, :cond_2c

    const v3, 0x338373dc

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v9, 0x4

    if-ne v5, v9, :cond_22

    const/4 v3, 0x1

    goto :goto_1b

    :cond_22
    move v3, v12

    :goto_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_23

    if-ne v5, v13, :cond_24

    :cond_23
    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$8$1;

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogNavigationKt$CatalogNavigationComposable$8$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-array v3, v12, [Landroidx/navigation/Navigator;

    invoke-static {v3, v10}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v3

    move v5, v6

    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_2b

    invoke-static {v6, v10}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v8

    instance-of v7, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v7, :cond_25

    move-object v7, v6

    check-cast v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v7}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v7

    :goto_1c
    move-object v9, v7

    goto :goto_1d

    :cond_25
    sget-object v7, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1c

    :goto_1d
    const-class v7, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModelImpl;

    sget-object v12, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v12, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    move v12, v5

    move-object v5, v7

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_26

    if-ne v7, v13, :cond_27

    :cond_26
    new-instance v7, Lf1;

    const/16 v6, 0xf

    invoke-direct {v7, v15, v14, v6}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v2

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_28

    const/4 v7, 0x1

    goto :goto_1e

    :cond_28
    const/4 v7, 0x0

    :goto_1e
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_29

    if-ne v8, v13, :cond_2a

    :cond_29
    new-instance v8, Ltj;

    const/4 v7, 0x1

    invoke-direct {v8, v0, v11, v12, v7}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v7, v8

    check-cast v7, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v9, v8, 0xe

    shl-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v11, 0x70

    or-int/2addr v9, v12

    const v12, 0xe000

    and-int/2addr v8, v12

    or-int/2addr v8, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v11

    or-int/2addr v8, v9

    const/high16 v9, 0xe000000

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    const/high16 v9, 0x70000000

    and-int/2addr v2, v9

    or-int v12, v8, v2

    and-int/lit8 v13, v16, 0xe

    move-object/from16 v0, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v2, v3

    move-object v3, v5

    move-object v11, v10

    const/4 v14, 0x0

    move-object/from16 v5, p4

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogComposableKt;->a(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v10, v11

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    move-object/from16 v4, v18

    goto :goto_20

    :cond_2b
    invoke-static/range {v17 .. v17}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2c
    move v14, v12

    const v0, 0x22b0df2e

    invoke-static {v10, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-static/range {v17 .. v17}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    :goto_20
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2f

    new-instance v0, Lgk;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v6, v15

    invoke-direct/range {v0 .. v12}, Lgk;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

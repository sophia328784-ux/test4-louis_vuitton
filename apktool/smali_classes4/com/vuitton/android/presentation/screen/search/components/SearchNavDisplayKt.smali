.class public abstract Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;ZLcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v12, p11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x425045d5

    move-object/from16 v2, p13

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p14, v0

    move/from16 v3, p1

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    move-object/from16 v5, p2

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v0, v8

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v0, v8

    move-object/from16 v15, p4

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_4

    :cond_4
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v0, v8

    move-object/from16 v8, p5

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v16, 0x10000

    :goto_5
    or-int v0, v0, v16

    move-object/from16 v6, p6

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v9, p7

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v17, 0x400000

    :goto_7
    or-int v0, v0, v17

    move-object/from16 v13, p8

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v0, v0, v18

    move-object/from16 v2, p9

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v0, v0, v19

    move-object/from16 v10, p10

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x4

    goto :goto_a

    :cond_a
    const/16 v20, 0x2

    :goto_a
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x20

    goto :goto_b

    :cond_b
    const/16 v21, 0x10

    :goto_b
    or-int v20, v20, v21

    move-object/from16 v14, p12

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v17, 0x100

    goto :goto_c

    :cond_c
    const/16 v17, 0x80

    :goto_c
    or-int v7, v20, v17

    const v17, 0x12492493

    and-int v2, v0, v17

    const v3, 0x12492492

    const/16 v17, 0x1

    if-ne v2, v3, :cond_e

    and-int/lit16 v2, v7, 0x93

    const/16 v3, 0x92

    if-eq v2, v3, :cond_d

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    move/from16 v2, v17

    :goto_e
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v11, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v2, v7, 0x70

    const/16 v3, 0x20

    if-ne v2, v3, :cond_f

    move/from16 v2, v17

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    and-int/lit16 v3, v0, 0x1c00

    const/16 v7, 0x800

    if-eq v3, v7, :cond_10

    const/4 v3, 0x0

    goto :goto_10

    :cond_10
    move/from16 v3, v17

    :goto_10
    or-int/2addr v2, v3

    const/16 v3, 0xe

    and-int/2addr v0, v3

    const/4 v7, 0x4

    if-eq v0, v7, :cond_11

    const/4 v7, 0x0

    goto :goto_11

    :cond_11
    move/from16 v7, v17

    :goto_11
    or-int/2addr v2, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/16 p13, 0x0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_12

    if-ne v7, v9, :cond_13

    :cond_12
    new-instance v7, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$1$1;

    const/4 v2, 0x0

    invoke-direct {v7, v12, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$1$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v2

    invoke-static {v11}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v7

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v2, v3, p13

    aput-object v7, v3, v17

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const v2, 0x10aa761d

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$$inlined$entryProvider$default$1;

    new-instance v3, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v3, v2}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    move v2, v0

    new-instance v0, Lc4;

    move-object v7, v10

    move v10, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v1

    move-object v1, v5

    move-object v5, v14

    move-object v14, v3

    move/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lc4;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x6a73851f

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$Search;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$2;

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v4, v1, v5, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Llf;

    move-object v1, v9

    const/16 v9, 0x8

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move-object/from16 v5, p10

    move-object v4, v12

    move-object v8, v13

    move-object v2, v15

    move/from16 v12, p13

    move-object v15, v1

    move-object v13, v3

    move-object/from16 v1, p3

    move-object/from16 v3, p9

    invoke-direct/range {v0 .. v9}, Llf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v6

    const v2, -0x3ee3faa5

    invoke-static {v2, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;

    invoke-virtual {v13, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$4;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt$SearchNavDisplay$lambda$1$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v4, v2, v5, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Landroidx/navigation3/runtime/a;

    invoke-direct {v0, v14}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v7, 0x4

    if-eq v10, v7, :cond_14

    move v9, v12

    goto :goto_12

    :cond_14
    move/from16 v9, v17

    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v9, :cond_15

    if-ne v2, v15, :cond_16

    :cond_15
    new-instance v2, Lx0;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_17

    new-instance v2, Lyt0;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lyt0;-><init>(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_18

    new-instance v2, Lyt0;

    const/16 v4, 0x13

    invoke-direct {v2, v4}, Lyt0;-><init>(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_19

    new-instance v2, Lzt0;

    const/16 v4, 0xc

    invoke-direct {v2, v4}, Lzt0;-><init>(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v2, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v2, 0x30000000

    or-int v12, v2, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, v0

    move-object/from16 v4, v18

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_13

    :cond_1a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1b

    new-instance v0, Lkx;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lkx;-><init>(Landroidx/navigation3/runtime/NavBackStack;ZLcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

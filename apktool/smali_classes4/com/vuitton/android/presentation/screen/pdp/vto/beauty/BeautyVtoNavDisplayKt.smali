.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt;
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
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x52a1f3da

    move-object/from16 v3, p18

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p19, v3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v3, v7

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x100

    goto :goto_2

    :cond_2
    const/16 v10, 0x80

    :goto_2
    or-int/2addr v3, v10

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    const/16 v16, 0x800

    if-eqz v10, :cond_3

    move/from16 v10, v16

    goto :goto_3

    :cond_3
    const/16 v10, 0x400

    :goto_3
    or-int/2addr v3, v10

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-eqz v10, :cond_4

    move/from16 v10, v18

    goto :goto_4

    :cond_4
    move/from16 v10, v17

    :goto_4
    or-int/2addr v3, v10

    move-object/from16 v10, p5

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    const/high16 v20, 0x10000

    const/high16 v21, 0x20000

    if-eqz v19, :cond_5

    move/from16 v19, v21

    goto :goto_5

    :cond_5
    move/from16 v19, v20

    :goto_5
    or-int v3, v3, v19

    move-object/from16 v5, p6

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    const/high16 v22, 0x80000

    const/high16 v23, 0x100000

    if-eqz v19, :cond_6

    move/from16 v19, v23

    goto :goto_6

    :cond_6
    move/from16 v19, v22

    :goto_6
    or-int v3, v3, v19

    move-object/from16 v8, p7

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    const/high16 v25, 0x400000

    const/high16 v26, 0x800000

    if-eqz v24, :cond_7

    move/from16 v24, v26

    goto :goto_7

    :cond_7
    move/from16 v24, v25

    :goto_7
    or-int v3, v3, v24

    move-object/from16 v11, p8

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/high16 v27, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v27, 0x2000000

    :goto_8
    or-int v3, v3, v27

    move-object/from16 v12, p9

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    const/high16 v28, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v28, 0x10000000

    :goto_9
    or-int v3, v3, v28

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 v29, 0x4

    :goto_a
    move-object/from16 v13, p11

    goto :goto_b

    :cond_a
    const/16 v29, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v19, 0x20

    goto :goto_c

    :cond_b
    const/16 v19, 0x10

    :goto_c
    or-int v19, v29, v19

    move-object/from16 v6, p12

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v24, 0x100

    goto :goto_d

    :cond_c
    const/16 v24, 0x80

    :goto_d
    or-int v19, v19, v24

    move-object/from16 v9, p13

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    move/from16 v28, v16

    goto :goto_e

    :cond_d
    const/16 v28, 0x400

    :goto_e
    or-int v16, v19, v28

    move-object/from16 v14, p14

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v17, v18

    :cond_e
    or-int v16, v16, v17

    move-object/from16 v14, p15

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v20, v21

    :cond_f
    or-int v16, v16, v20

    move/from16 v17, v3

    move-object/from16 v3, p16

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move/from16 v22, v23

    :cond_10
    or-int v16, v16, v22

    move-object/from16 v3, p17

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    move/from16 v25, v26

    :cond_11
    or-int v16, v16, v25

    const v18, 0x12492493

    and-int v3, v17, v18

    const v4, 0x12492492

    const/16 v18, 0x0

    if-ne v3, v4, :cond_13

    const v3, 0x492493

    and-int v3, v16, v3

    const v4, 0x492492

    if-eq v3, v4, :cond_12

    goto :goto_f

    :cond_12
    move/from16 v3, v18

    goto :goto_10

    :cond_13
    :goto_f
    const/4 v3, 0x1

    :goto_10
    and-int/lit8 v4, v17, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v4, v17, 0x70

    const/16 v14, 0x20

    const/16 v16, 0x1

    if-eq v4, v14, :cond_14

    move/from16 v4, v18

    goto :goto_11

    :cond_14
    move/from16 v4, v16

    :goto_11
    and-int/lit8 v14, v17, 0xe

    move/from16 v17, v4

    const/4 v4, 0x4

    if-eq v14, v4, :cond_15

    move/from16 v19, v18

    goto :goto_12

    :cond_15
    move/from16 v19, v16

    :goto_12
    or-int v17, v17, v19

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    move/from16 v19, v14

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_16

    if-ne v4, v14, :cond_17

    :cond_16
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v3

    invoke-static {v2}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v3, v5, v18

    aput-object v4, v5, v16

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const v3, 0x31f5111c

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$$inlined$entryProvider$default$1;

    new-instance v4, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v4, v3}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lme;

    move-object v0, v4

    move-object v3, v7

    move-object v5, v10

    move-object v7, v11

    move-object/from16 p18, v14

    move-object/from16 v4, p3

    move-object v14, v2

    move-object v10, v6

    move-object v6, v8

    move-object v11, v9

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v2, p1

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    invoke-direct/range {v1 .. v13}, Lme;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    const v3, 0x5d74ead7

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v5

    sget-object v7, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;

    invoke-virtual {v7, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$2;

    invoke-direct {v8, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v6, v3, v8, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lpe;

    move-object/from16 v5, p0

    invoke-direct {v2, v1, v5, v4, v15}, Lpe;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v3, -0x56fcd23

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$PicturePreview;

    invoke-virtual {v7, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$4;

    invoke-direct {v9, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v3, v9, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lpe;

    move-object/from16 v13, p4

    invoke-direct {v2, v4, v1, v5, v13}, Lpe;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    const v3, 0x4bc83fad    # 2.6247002E7f

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;

    invoke-virtual {v7, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$6;

    invoke-direct {v9, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$6;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v3, v9, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v0

    new-instance v0, Ln4;

    const/4 v6, 0x5

    move-object/from16 v3, p6

    move-object v8, v2

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, p14

    invoke-direct/range {v0 .. v6}, Ln4;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/Function;I)V

    const v1, 0x675e7a2f

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;

    invoke-virtual {v7, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$8;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$8;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, v3, v1, v4, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p15

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    move-object v2, v0

    move-object v1, v3

    move-object v0, v5

    const v3, -0x37569530    # -346966.5f

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;

    invoke-virtual {v7, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$10;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$10;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, v5, v3, v6, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, La3;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v3, 0x3fd83974

    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResultEmpty;

    invoke-virtual {v7, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$12;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$12;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, v5, v3, v6, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v10, Landroidx/navigation3/runtime/a;

    invoke-direct {v10, v8}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    move/from16 v2, v18

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v3, v19

    const/4 v4, 0x4

    if-eq v3, v4, :cond_18

    goto :goto_13

    :cond_18
    move/from16 v2, v16

    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_19

    move-object/from16 v2, p18

    if-ne v4, v2, :cond_1a

    goto :goto_14

    :cond_19
    move-object/from16 v2, p18

    :goto_14
    new-instance v4, Lx0;

    move/from16 v5, v16

    invoke-direct {v4, v0, v5}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1b

    new-instance v5, Lu5;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lu5;-><init>(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1c

    new-instance v5, Lu5;

    const/16 v6, 0x1d

    invoke-direct {v5, v6}, Lu5;-><init>(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1d

    new-instance v5, Lt;

    const/16 v2, 0xf

    invoke-direct {v5, v2}, Lt;-><init>(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v2, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v2, 0x30000000

    or-int v12, v2, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move-object v11, v14

    move-object/from16 v4, v17

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_1e
    move-object/from16 v13, p4

    move-object v14, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, Loe;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move-object/from16 v31, v1

    move-object v5, v13

    move-object v11, v15

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v19}, Loe;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v31

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

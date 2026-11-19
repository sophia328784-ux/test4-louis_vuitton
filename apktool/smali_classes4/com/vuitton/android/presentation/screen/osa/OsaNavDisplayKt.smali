.class public abstract Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;",
        "welcomeViewState",
        "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;",
        "osaReasonsFormViewState",
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
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v4, p14

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x170cc825

    move-object/from16 v2, p15

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p16, v0

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v2, p4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x2000

    if-eqz v16, :cond_4

    const/16 v16, 0x4000

    goto :goto_4

    :cond_4
    move/from16 v16, v17

    :goto_4
    or-int v0, v0, v16

    move-object/from16 v10, p5

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v18, 0x10000

    :goto_5
    or-int v0, v0, v18

    move-object/from16 v6, p6

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/high16 v19, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v19, 0x80000

    :goto_6
    or-int v0, v0, v19

    move-object/from16 v15, p7

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/high16 v20, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v20, 0x400000

    :goto_7
    or-int v0, v0, v20

    move-object/from16 v14, p8

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/high16 v21, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v21, 0x2000000

    :goto_8
    or-int v0, v0, v21

    move-object/from16 v13, p9

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/high16 v22, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v22, 0x10000000

    :goto_9
    or-int v0, v0, v22

    move-object/from16 v7, p10

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x4

    :goto_a
    move-object/from16 v10, p11

    goto :goto_b

    :cond_a
    const/16 v23, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x20

    goto :goto_c

    :cond_b
    const/16 v24, 0x10

    :goto_c
    or-int v23, v23, v24

    move-object/from16 v7, p12

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    const/16 v18, 0x100

    goto :goto_d

    :cond_c
    const/16 v18, 0x80

    :goto_d
    or-int v18, v23, v18

    move-object/from16 v7, p13

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v16, 0x800

    goto :goto_e

    :cond_d
    const/16 v16, 0x400

    :goto_e
    or-int v16, v18, v16

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v17, 0x4000

    :cond_e
    or-int v7, v16, v17

    const v16, 0x12492493

    and-int v11, v0, v16

    const v3, 0x12492492

    const/16 v18, 0x1

    if-ne v11, v3, :cond_10

    and-int/lit16 v3, v7, 0x2493

    const/16 v11, 0x2492

    if-eq v3, v11, :cond_f

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    move/from16 v3, v18

    :goto_10
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v12, v11, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v11, :cond_11

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v23, v3

    check-cast v23, Lkotlinx/coroutines/CoroutineScope;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v24, 0x0

    and-int/lit8 v13, v0, 0x70

    const/16 v2, 0x20

    if-eq v13, v2, :cond_12

    move/from16 v2, v24

    goto :goto_11

    :cond_12
    move/from16 v2, v18

    :goto_11
    and-int/lit16 v13, v0, 0x1c00

    move/from16 v16, v2

    const/16 v2, 0x800

    if-eq v13, v2, :cond_13

    move/from16 v2, v24

    goto :goto_12

    :cond_13
    move/from16 v2, v18

    :goto_12
    or-int v2, v16, v2

    and-int/lit16 v13, v0, 0x380

    move/from16 v16, v0

    const/16 v0, 0x100

    if-eq v13, v0, :cond_14

    move/from16 v0, v24

    goto :goto_13

    :cond_14
    move/from16 v0, v18

    :goto_13
    or-int/2addr v0, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_15

    if-ne v2, v11, :cond_16

    :cond_15
    new-instance v2, Ljx;

    const/16 v0, 0x1a

    invoke-direct {v2, v1, v9, v8, v0}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-static {v12}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v0

    invoke-static {v12}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v13, v3, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v0, v13, v24

    aput-object v2, v13, v18

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const v0, 0x790589c5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$$inlined$entryProvider$default$1;

    new-instance v2, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v2, v0}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lp0;

    move v3, v7

    const/16 v7, 0xe

    move-object/from16 v27, v15

    move-object v15, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v14

    move v14, v3

    move-object/from16 v3, v27

    invoke-direct/range {v0 .. v7}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x179f7b0

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Login;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$2;

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v4, v1, v5, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/c;

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p14

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v7, v23

    move-object/from16 v8, p13

    move-object v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/osa/c;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x136583b3

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;

    invoke-virtual {v9, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$4;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v3, v1, v4, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/d;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v8, p5

    move-object/from16 v6, p6

    move-object/from16 v4, p14

    move-object/from16 v25, v11

    move-object/from16 v17, v13

    move/from16 v22, v14

    move-object/from16 v11, p12

    move-object v13, v7

    move-object v14, v9

    move-object/from16 v7, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/osa/d;-><init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x436bb0e3

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;

    invoke-virtual {v14, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$6;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$6;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v3, v1, v4, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/e;

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    move-object/from16 v4, p14

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/osa/e;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function2;)V

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    const v3, 0x64c3c14

    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v6, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    invoke-virtual {v14, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$8;

    invoke-direct {v7, v4}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$8;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v6, v3, v7, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lyj0;

    move/from16 v3, v24

    invoke-direct {v2, v0, v5, v13, v3}, Lyj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v3, -0x9363b1d

    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9;->b:Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v6, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$Kisa;

    invoke-virtual {v14, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$10;

    invoke-direct {v7, v4}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$10;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v6, v3, v7, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v10, Landroidx/navigation3/runtime/a;

    invoke-direct {v10, v15}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    and-int/lit8 v2, v16, 0xe

    const/4 v4, 0x4

    if-eq v2, v4, :cond_17

    move v4, v3

    goto :goto_14

    :cond_17
    move/from16 v4, v18

    :goto_14
    const v6, 0xe000

    and-int v6, v22, v6

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_18

    move/from16 v13, v18

    goto :goto_15

    :cond_18
    move v13, v3

    :goto_15
    or-int v3, v4, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_19

    move-object/from16 v3, v25

    if-ne v4, v3, :cond_1a

    goto :goto_16

    :cond_19
    move-object/from16 v3, v25

    :goto_16
    new-instance v4, Ly0;

    const/16 v6, 0x11

    invoke-direct {v4, v5, v1, v6}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1b

    new-instance v6, Lfj0;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, Lfj0;-><init>(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1c

    new-instance v6, Lfj0;

    const/16 v8, 0x10

    invoke-direct {v6, v8}, Lfj0;-><init>(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v8, v6

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1d

    new-instance v6, Laj0;

    const/4 v3, 0x2

    invoke-direct {v6, v3}, Laj0;-><init>(I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v3, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v3, 0x30000000

    or-int/2addr v2, v3

    const/4 v1, 0x0

    move-object v11, v12

    move v12, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v3, v4

    move-object/from16 v4, v17

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_1e
    move-object v11, v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, La40;

    move-object/from16 v2, p1

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v26, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, La40;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v26

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

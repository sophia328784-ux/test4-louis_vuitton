.class public abstract Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x63bce9c8

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    const/16 v9, 0x20

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v0, v7

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x100

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v0, v7

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v7, v0

    and-int/lit16 v0, v7, 0x493

    const/16 v12, 0x492

    if-eq v0, v12, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    and-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v15, :cond_5

    invoke-static {v11}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v12

    :cond_5
    check-cast v12, Landroidx/compose/material3/SnackbarHostState;

    const/16 p4, 0x1

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v8, v7, 0xe

    if-eq v8, v6, :cond_6

    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    move/from16 v16, p4

    :goto_5
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v2, 0x0

    if-nez v16, :cond_7

    if-ne v13, v15, :cond_8

    :cond_7
    new-instance v13, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1;

    invoke-direct {v13, v1, v12, v0, v2}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v14, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eq v8, v6, :cond_9

    move/from16 v0, v17

    goto :goto_6

    :cond_9
    move/from16 v0, p4

    :goto_6
    and-int/lit8 v6, v7, 0x70

    if-eq v6, v9, :cond_a

    move/from16 v8, v17

    goto :goto_7

    :cond_a
    move/from16 v8, p4

    :goto_7
    or-int/2addr v0, v8

    and-int/lit16 v8, v7, 0x380

    if-ne v8, v10, :cond_b

    move/from16 v8, p4

    goto :goto_8

    :cond_b
    move/from16 v8, v17

    :goto_8
    or-int/2addr v0, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_c

    if-ne v8, v15, :cond_d

    :cond_c
    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1;

    invoke-direct {v8, v1, v3, v4, v2}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v14, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v0

    invoke-static {v11}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v0, v8, v17

    aput-object v2, v8, p4

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const v0, -0x6828b0d0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$$inlined$entryProvider$default$1;

    new-instance v10, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v10, v0}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/d;

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/d;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object v4, v5

    const v5, 0x38e0c8f8

    invoke-static {v5, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v12

    sget-object v13, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v14, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$List;

    invoke-virtual {v13, v14}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$2;

    invoke-direct {v9, v12}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v14, v5, v9, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/booking/e;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    const v5, -0x228e383

    invoke-static {v5, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v9

    const-class v12, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;

    invoke-virtual {v13, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-instance v14, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$4;

    invoke-direct {v14, v9}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v12, v5, v14, v0}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/d;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/d;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object v14, v1

    move-object v1, v0

    move-object v0, v4

    const v2, 0x371e830c

    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5;->b:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$5;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;

    invoke-virtual {v13, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$6;

    invoke-direct {v9, v4}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$6;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v5, v2, v9, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/f;

    invoke-direct {v1, v14, v3, v0}, Lcom/vuitton/android/presentation/screen/booking/f;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    const v2, -0x51fe0fdc

    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7;->b:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$7;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;

    invoke-virtual {v13, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$8;

    invoke-direct {v9, v4}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$lambda$3$$inlined$entry$default$8;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v5, v2, v9, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v1, Landroidx/navigation3/runtime/a;

    invoke-direct {v1, v10}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    move/from16 v2, v17

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/16 v4, 0x20

    if-eq v6, v4, :cond_e

    move v13, v2

    goto :goto_9

    :cond_e
    move/from16 v13, p4

    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v13, :cond_f

    if-ne v2, v15, :cond_10

    :cond_f
    new-instance v2, Lx0;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_11

    new-instance v4, Lba0;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lba0;-><init>(I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_12

    new-instance v5, Lba0;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Lba0;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_13

    new-instance v6, Ln50;

    const/16 v9, 0xf

    invoke-direct {v6, v9}, Ln50;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v6, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    shr-int/lit8 v6, v7, 0x3

    and-int/lit8 v6, v6, 0xe

    const/high16 v7, 0x30000000

    or-int v12, v7, v6

    move-object v10, v1

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    move-object v7, v4

    move-object v4, v8

    move-object v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_a

    :cond_14
    move-object v14, v1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_15

    new-instance v0, Luv;

    const/16 v6, 0x8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object v1, v14

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

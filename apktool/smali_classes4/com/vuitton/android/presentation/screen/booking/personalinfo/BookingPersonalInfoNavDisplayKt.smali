.class public abstract Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x41f397b3

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int v0, p6, v0

    move-object/from16 v5, p1

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v10, p3

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x800

    goto :goto_2

    :cond_2
    const/16 v3, 0x400

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v3, p4

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x4000

    goto :goto_3

    :cond_3
    const/16 v4, 0x2000

    :goto_3
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x2493

    const/16 v6, 0x2492

    const/4 v13, 0x0

    const/4 v7, 0x1

    if-eq v4, v6, :cond_4

    move v4, v7

    goto :goto_4

    :cond_4
    move v4, v13

    :goto_4
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v12, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->V8()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;

    goto :goto_5

    :cond_5
    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;

    :goto_5
    new-array v8, v7, [Landroidx/navigation3/runtime/NavKey;

    aput-object v6, v8, v13

    invoke-static {v8, v12}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object v9

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v2, :cond_6

    move v0, v13

    goto :goto_6

    :cond_6
    move v0, v7

    :goto_6
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_8

    if-ne v2, v14, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v8, p2

    goto :goto_8

    :cond_8
    :goto_7
    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$2$1;

    const/4 v0, 0x0

    move-object/from16 v8, p2

    invoke-direct {v2, p0, v8, v4, v0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v0

    invoke-static {v12}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v2

    new-array v1, v1, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v0, v1, v13

    aput-object v2, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v1, -0x6c92ef41

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$$inlined$entryProvider$default$1;

    new-instance v2, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v2, v1}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v6, Lr;

    const/4 v11, 0x4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;I)V

    const v1, 0x4d90c53e

    invoke-static {v1, v6, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    sget-object v11, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v7, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;

    invoke-virtual {v11, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$2;

    invoke-direct {v8, v6}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v7, v4, v8, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v3, Lp0;

    const/4 v10, 0x4

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object v7, v9

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v10}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v9, v7

    const v1, -0x33678d22    # -7.9927024E7f

    invoke-static {v1, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;

    invoke-virtual {v11, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$4;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoNavDisplayKt$BookingPersonalInfoNavDisplay$lambda$2$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v5, v3, v6, v1}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v11, Landroidx/navigation3/runtime/a;

    invoke-direct {v11, v2}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_9

    if-ne v2, v14, :cond_a

    :cond_9
    new-instance v2, Lx0;

    const/4 v1, 0x5

    invoke-direct {v2, v9, v1}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    if-ne v1, v14, :cond_b

    new-instance v1, Lre;

    invoke-direct {v1, v2}, Lre;-><init>(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_c

    new-instance v1, Lre;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Lre;-><init>(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_d

    new-instance v3, Lt;

    invoke-direct {v3, v2}, Lt;-><init>(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function2;

    sget-object v2, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v13, 0x30000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v9

    move-object v9, v1

    move-object v1, v5

    move-object v5, v0

    invoke-static/range {v1 .. v13}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v3, Lof;

    const/4 v10, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Lof;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

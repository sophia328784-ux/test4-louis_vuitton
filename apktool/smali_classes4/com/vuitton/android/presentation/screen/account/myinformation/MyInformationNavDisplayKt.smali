.class public abstract Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt;
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
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7c2feba3

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v1, p5, v1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v1, v4

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v1, v4

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v1, v4

    and-int/lit16 v4, v1, 0x493

    const/16 v6, 0x492

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v6, :cond_4

    move v4, v8

    goto :goto_4

    :cond_4
    move v4, v7

    :goto_4
    and-int/lit8 v6, v1, 0x1

    invoke-virtual {v11, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v11}, Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/SaveableStateHolderNavEntryDecorator;

    move-result-object v4

    invoke-static {v11}, Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecoratorKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/viewmodel/navigation3/ViewModelStoreNavEntryDecorator;

    move-result-object v6

    new-array v9, v2, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object v4, v9, v7

    aput-object v6, v9, v8

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const v6, 0x2fe3e5da

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$$inlined$entryProvider$default$1;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$$inlined$entryProvider$default$1;

    new-instance v9, Landroidx/navigation3/runtime/EntryProviderScope;

    invoke-direct {v9, v6}, Landroidx/navigation3/runtime/EntryProviderScope;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/myinformation/b;

    invoke-direct {v6, v13, v14, v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/b;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;)V

    const v10, 0x610f187f

    invoke-static {v10, v6, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    sget-object v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$1;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v12

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    invoke-virtual {v5, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$2;

    invoke-direct {v7, v12}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v3, v10, v7, v6}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/b;

    invoke-direct {v3, v13, v0, v14, v8}, Lcom/vuitton/android/presentation/screen/account/myinformation/b;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    const v6, -0x1b78ef20

    invoke-static {v6, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$3;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v7

    const-class v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    invoke-virtual {v5, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-instance v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$4;

    invoke-direct {v12, v7}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v10, v6, v12, v3}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/c;

    invoke-direct {v3, v13, v0, v14, v15}, Lcom/vuitton/android/presentation/screen/account/myinformation/c;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v6, 0x67fc6dc2

    invoke-static {v6, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$5;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v7

    const-class v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    invoke-virtual {v5, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-instance v12, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$6;

    invoke-direct {v12, v7}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$6;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v10, v6, v12, v3}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/myinformation/b;

    invoke-direct {v3, v13, v0, v14, v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/b;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x69d2cea4

    invoke-static {v2, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$7;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditTaxId;

    invoke-virtual {v5, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$8;

    invoke-direct {v10, v6}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$8;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v7, v3, v10, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/myinformation/b;

    const/4 v3, 0x3

    invoke-direct {v2, v13, v0, v14, v3}, Lcom/vuitton/android/presentation/screen/account/myinformation/b;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    const v3, -0x205cae7a

    invoke-static {v3, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$9;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditBranchId;

    invoke-virtual {v5, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$10;

    invoke-direct {v7, v6}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$lambda$0$$inlined$entry$default$10;-><init>(Ljava/util/Map;)V

    invoke-virtual {v9, v5, v3, v7, v2}, Landroidx/navigation3/runtime/EntryProviderScope;->a(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    new-instance v10, Landroidx/navigation3/runtime/a;

    invoke-direct {v10, v9}, Landroidx/navigation3/runtime/a;-><init>(Landroidx/navigation3/runtime/EntryProviderScope;)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    and-int/lit8 v1, v1, 0xe

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v8

    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_6

    if-ne v2, v3, :cond_7

    :cond_6
    new-instance v2, Lx0;

    const/16 v5, 0x9

    invoke-direct {v2, v0, v5}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_8

    new-instance v5, Lba0;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lba0;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_9

    new-instance v5, Lba0;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lba0;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_a

    new-instance v5, Ln50;

    const/16 v3, 0x10

    invoke-direct {v5, v3}, Ln50;-><init>(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget-object v3, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/high16 v3, 0x30000000

    or-int v12, v3, v1

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt;->c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Luv;

    move-object/from16 v1, p0

    move/from16 v5, p5

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Luv;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

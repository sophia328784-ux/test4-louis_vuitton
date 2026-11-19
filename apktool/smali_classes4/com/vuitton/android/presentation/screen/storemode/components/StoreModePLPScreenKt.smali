.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/StoreModePLPScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;",
        "storeModeCatalog",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x79735034

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    move-object/from16 v9, p0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    move-object/from16 v10, p1

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    const/16 v7, 0x10

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v11, p2

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v8, 0x0

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v8

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->d8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v5}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;

    if-eqz v1, :cond_6

    const v0, 0x162020da

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_a

    :cond_6
    if-eqz v2, :cond_d

    const v1, -0x521b32a6

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    const-string v12, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    if-eqz v2, :cond_c

    invoke-static {v2, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v4

    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_7

    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_6

    :cond_7
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_6
    const-class v3, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    sget-object v6, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v6, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v6, v5

    move-object v5, v1

    move-object v1, v3

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v5, v6

    move-object v13, v1

    check-cast v13, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    const v1, 0x16203cd6

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->b()Lkotlin/enums/EnumEntries;

    move-result-object v1

    new-instance v14, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v2

    if-ge v2, v7, :cond_8

    goto :goto_7

    :cond_8
    move v7, v2

    :goto_7
    invoke-direct {v14, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v1, v15

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {v2, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v4

    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_9

    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_9

    :cond_9
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_9
    const-class v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    sget-object v8, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v8, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v16, v5

    move-object v5, v1

    move-object v1, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    move-object v5, v6

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    invoke-static {v12}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_b
    move v7, v8

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v6, v0, 0x1f80

    move-object v3, v10

    move-object v4, v11

    move-object v1, v13

    move-object v2, v14

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt;->a(Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;Ljava/util/LinkedHashMap;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_c
    invoke-static {v12}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_d
    move v7, v8

    const v0, 0x16205c03

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v0, "Catalog Store mode"

    const-string v1, "No catalog to display"

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v2, v0, v1, v4}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_b

    :cond_e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v6, Lgi0;

    const/16 v8, 0x1c

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v7, p4

    invoke-direct/range {v6 .. v11}, Lgi0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

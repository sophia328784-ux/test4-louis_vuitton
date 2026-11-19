.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

.field public final synthetic d:Landroidx/navigation/NavHostController;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->d:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_0

    if-ne v4, v10, :cond_1

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$4$1$1;

    invoke-direct {v4, v9, v5}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v11, v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v12, v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    if-eqz v6, :cond_2

    invoke-static {v6, v11, v12}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->d(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    if-nez v6, :cond_3

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    move-object v15, v6

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;->e:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_b

    move-object v7, v6

    invoke-static {v4, v13}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v5, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v5}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v5

    goto :goto_1

    :cond_4
    sget-object v5, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_1
    const-class v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    invoke-virtual {v3, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v8, v7

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v16, v13

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->d:Landroidx/navigation/NavHostController;

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5

    if-ne v6, v10, :cond_6

    :cond_5
    new-instance v6, Ltf;

    const/16 v3, 0xc

    invoke-direct {v6, v9, v5, v3}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_7

    if-ne v6, v10, :cond_8

    :cond_7
    new-instance v6, Ldk;

    const/4 v3, 0x0

    invoke-direct {v6, v9, v3}, Ldk;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_9

    if-ne v9, v10, :cond_a

    :cond_9
    new-instance v9, Ln0;

    const/16 v7, 0xd

    invoke-direct {v9, v3, v12, v11, v7}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v7, v14

    const/4 v14, 0x0

    const/4 v3, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/catalog/components/d;->f:Lkotlin/jvm/functions/Function0;

    move-object v12, v2

    move-object v11, v13

    move-object v13, v8

    move-object v8, v15

    invoke-static/range {v3 .. v14}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :cond_b
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5
.end method

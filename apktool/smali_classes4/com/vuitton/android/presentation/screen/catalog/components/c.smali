.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function3;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->j:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->m:Lkotlin/jvm/functions/Function3;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->n:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_0

    if-ne v5, v9, :cond_1

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$1$1;

    invoke-direct {v5, v3, v6}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v2, v5}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v2, v5}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object v4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_2

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModelKt;->c(Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/SubcategoryRedirectionUiModel;->a:Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v2, v6

    :goto_0
    if-nez v2, :cond_3

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    if-nez v2, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;->f:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;->a:Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_6

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    if-nez v2, :cond_8

    :cond_7
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_8
    sget-object v4, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_9

    if-ne v7, v9, :cond_a

    :cond_9
    new-instance v7, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$2$1;

    invoke-direct {v7, v4, v6}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$2$1;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    if-ne v5, v9, :cond_c

    :cond_b
    new-instance v5, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$3$1;

    invoke-direct {v5, v11, v2, v6}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$3$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-static {v4, v8}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v6

    instance-of v5, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v5, :cond_d

    move-object v5, v4

    check-cast v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v5}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v5

    :goto_2
    move-object v7, v5

    goto :goto_3

    :cond_d
    sget-object v5, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_2

    :goto_3
    const-class v5, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->f:Landroidx/navigation/NavHostController;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v5, :cond_e

    if-ne v6, v9, :cond_f

    :cond_e
    new-instance v6, Lyj;

    invoke-direct {v6, v3, v7}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->j:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_10

    if-ne v12, v9, :cond_11

    :cond_10
    new-instance v12, Lzj;

    invoke-direct {v12, v3, v10, v7}, Lzj;-><init>(Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Ljava/lang/String;I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_12

    if-ne v13, v9, :cond_13

    :cond_12
    new-instance v13, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$6$1;

    const-string v18, "updateFiltersContainerVisibility(Z)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v17, "updateFiltersContainerVisibility"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v13, Lkotlin/reflect/KFunction;

    move-object v5, v13

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_14

    if-ne v14, v9, :cond_15

    :cond_14
    new-instance v13, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogNavHostKt$CatalogNavHost$5$1$3$7$1;

    const-string v18, "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V"

    const/16 v19, 0x0

    const/4 v14, 0x1

    const-class v16, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v17, "updateQuickAccessFiltersButtonState"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v13

    :cond_15
    check-cast v14, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v14

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    const/16 v7, 0x11

    if-nez v13, :cond_16

    if-ne v14, v9, :cond_17

    :cond_16
    new-instance v14, Lu;

    invoke-direct {v14, v11, v3, v10, v7}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_18

    if-ne v13, v9, :cond_19

    :cond_18
    new-instance v13, Lak;

    const/4 v11, 0x0

    invoke-direct {v13, v15, v11}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v20, v13

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v11, :cond_1a

    if-ne v13, v9, :cond_1b

    :cond_1a
    new-instance v13, Lak;

    invoke-direct {v13, v15, v14}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v21, v13

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_1c

    if-ne v13, v9, :cond_1d

    :cond_1c
    new-instance v13, Lak;

    const/4 v11, 0x2

    invoke-direct {v13, v15, v11}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v22, v13

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_1e

    if-ne v13, v9, :cond_1f

    :cond_1e
    new-instance v13, Lbk;

    const/4 v11, 0x0

    invoke-direct {v13, v15, v11}, Lbk;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v23, v13

    check-cast v23, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_20

    if-ne v13, v9, :cond_21

    :cond_20
    new-instance v13, Lak;

    const/4 v11, 0x3

    invoke-direct {v13, v15, v11}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v24, v13

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_22

    if-ne v13, v9, :cond_23

    :cond_22
    new-instance v13, Lzj;

    invoke-direct {v13, v3, v10, v14}, Lzj;-><init>(Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Ljava/lang/String;I)V

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v25, v13

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_24

    if-ne v11, v9, :cond_25

    :cond_24
    new-instance v11, Lck;

    const/4 v3, 0x0

    invoke-direct {v11, v4, v3}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v26, v11

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_26

    if-ne v11, v9, :cond_27

    :cond_26
    new-instance v11, Lw1;

    invoke-direct {v11, v4, v7}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v27, v11

    check-cast v27, Lkotlin/jvm/functions/Function0;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/4 v3, 0x0

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->g:Lkotlin/jvm/functions/Function0;

    move-object/from16 v28, v8

    move-object v8, v6

    move-object v6, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->h:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->i:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->k:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v5

    move-object v5, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->m:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/components/c;->n:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v0

    move-object v7, v2

    invoke-static/range {v3 .. v30}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-object v1

    :cond_28
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6
.end method

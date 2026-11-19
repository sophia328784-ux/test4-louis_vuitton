.class public final synthetic Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function3;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lek;->c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iput-object p3, p0, Lek;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lek;->e:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iput-object p5, p0, Lek;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lek;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lek;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lek;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lek;->j:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iput-object p10, p0, Lek;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lek;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lek;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lek;->n:Lkotlin/jvm/functions/Function3;

    iput-object p14, p0, Lek;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lek;->p:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/components/b;

    iget-object v4, v0, Lek;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iget-object v6, v0, Lek;->c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iget-object v5, v0, Lek;->d:Lkotlin/jvm/functions/Function2;

    move-object v12, v6

    iget-object v6, v0, Lek;->e:Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    iget-object v8, v0, Lek;->f:Landroidx/navigation/NavHostController;

    iget-object v9, v0, Lek;->g:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lek;->h:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lek;->i:Lkotlin/jvm/functions/Function1;

    move-object v3, v4

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v4, v12

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/components/b;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object v11, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v10, v3

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x3babd66e

    const/4 v4, 0x1

    invoke-direct {v9, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    move v2, v4

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Category;

    invoke-virtual {v5, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v7, v5

    const/4 v5, 0x0

    move v8, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v18, v7

    move-object v7, v5

    move/from16 v19, v8

    move-object v8, v6

    move-object/from16 p1, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v19

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/components/b;

    move-object/from16 v6, p1

    move-object v4, v10

    move-object v7, v11

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v5, v18

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/components/b;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object v14, v7

    move-object v15, v8

    move-object v10, v4

    move-object v11, v6

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x64d30629

    invoke-direct {v9, v4, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Subcategory;

    invoke-virtual {v12, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v6

    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/components/c;

    iget-object v7, v0, Lek;->j:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iget-object v9, v0, Lek;->k:Lkotlin/jvm/functions/Function0;

    move-object v4, v10

    iget-object v10, v0, Lek;->l:Lkotlin/jvm/functions/Function0;

    move-object v6, v11

    iget-object v11, v0, Lek;->m:Lkotlin/jvm/functions/Function0;

    move-object v8, v15

    iget-object v15, v0, Lek;->n:Lkotlin/jvm/functions/Function3;

    iget-object v5, v0, Lek;->o:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, v1

    move-object v0, v12

    move v1, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v5

    move-object v12, v6

    move-object v6, v14

    move-object/from16 v14, v17

    move-object/from16 v5, v18

    invoke-direct/range {v3 .. v16}, Lcom/vuitton/android/presentation/screen/catalog/components/c;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    move-object v10, v4

    move-object v14, v8

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x458b1e4a

    invoke-direct {v9, v4, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$Plp;

    invoke-virtual {v0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v6

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    move v13, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v2, v4

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/components/d;

    move-object/from16 v4, p0

    iget-object v8, v4, Lek;->p:Lkotlin/jvm/functions/Function0;

    move-object v4, v10

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v5, v18

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/catalog/components/d;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x2643366b

    invoke-direct {v8, v4, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v4, v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;

    invoke-virtual {v0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v18, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v12, v18

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v1, v0

    move-object v4, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/components/a;

    invoke-direct {v0, v10, v14, v11}, Lcom/vuitton/android/presentation/screen/catalog/components/a;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x6fb4e8c

    invoke-direct {v8, v2, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;

    invoke-virtual {v12, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v4, 0x0

    move-object v6, v4

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

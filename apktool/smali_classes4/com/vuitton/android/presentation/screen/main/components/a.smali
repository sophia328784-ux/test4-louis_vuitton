.class public final synthetic Lcom/vuitton/android/presentation/screen/main/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic d:Lkotlinx/coroutines/flow/SharedFlow;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function3;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

.field public final synthetic j:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

.field public final synthetic n:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

.field public final synthetic o:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->d:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->f:Lkotlin/jvm/functions/Function3;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->h:Landroid/content/Context;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->i:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->j:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->m:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->n:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/main/components/a;->o:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/components/MainActivityComposableKt$MainActivityComposable$1$3$1$1$1$1;

    const-string v7, "updateNavBarVisibility(Z)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->e:Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    const-class v5, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    const-string v6, "updateNavBarVisibility"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v10, v4

    new-instance v7, Lqb0;

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Lqb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;I)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->d:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->f:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ldy;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ldy;-><init>(I)V

    new-instance v14, Ldy;

    const/4 v3, 0x5

    invoke-direct {v14, v3}, Ldy;-><init>(I)V

    move-object v6, v2

    new-instance v2, Lza;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->b:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-direct/range {v2 .. v9}, Lza;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v8

    move-object/from16 v19, v9

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x3468f932

    const/4 v15, 0x1

    invoke-direct {v9, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v5, Lcom/vuitton/android/presentation/screen/main/navigation/FeedRoute;

    invoke-virtual {v2, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object v7, v12

    move-object v8, v14

    move-object v6, v12

    move-object v12, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v14

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v3, v4

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->h:Landroid/content/Context;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->i:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->j:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->k:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->l:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    new-instance v5, Ljh;

    const/16 v7, 0xd

    invoke-direct {v5, v7}, Ljh;-><init>(I)V

    move-object/from16 v21, v6

    new-instance v6, Ljh;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Ljh;-><init>(I)V

    move-object v7, v12

    new-instance v12, Lhk;

    move-object/from16 v23, v7

    move v7, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v16

    move-object/from16 v16, v4

    move v4, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v23

    invoke-direct/range {v12 .. v21}, Lhk;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v22, v17

    move-object/from16 v15, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x1d4ae9a0

    invoke-direct {v9, v8, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move v8, v4

    move-object v4, v3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v12, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    invoke-virtual {v2, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    move/from16 v16, v7

    move-object v7, v5

    move/from16 v17, v8

    move-object v8, v6

    move-object v11, v12

    move-object v12, v2

    move-object v2, v11

    move/from16 v11, v17

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v3, v4

    new-instance v5, Lav0;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Lav0;-><init>(I)V

    new-instance v6, Lav0;

    invoke-direct {v6, v11}, Lav0;-><init>(I)V

    new-instance v2, Ls8;

    const/16 v4, 0x9

    invoke-direct {v2, v4, v13, v14, v15}, Ls8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x23706f8d

    const/4 v11, 0x1

    invoke-direct {v9, v4, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object v4, v3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    const-class v2, Lcom/vuitton/android/presentation/screen/main/navigation/ServiceRoute;

    invoke-virtual {v12, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v7, v5

    move-object v8, v6

    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v3, v4

    new-instance v4, Lba0;

    const/16 v2, 0x1d

    invoke-direct {v4, v2}, Lba0;-><init>(I)V

    new-instance v5, Lbe0;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lbe0;-><init>(I)V

    move-object/from16 v17, v15

    new-instance v15, Lrl;

    const/16 v21, 0x1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->m:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->o:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/components/a;->n:Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;

    move-object/from16 v20, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v9, v17

    move-object/from16 v17, v13

    invoke-direct/range {v15 .. v21}, Lrl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v17, v20

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x5a19a916

    invoke-direct {v8, v0, v11, v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/main/navigation/MyLvRoute;

    invoke-virtual {v12, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v1, v0

    new-instance v4, Lo51;

    const/16 v0, 0xf

    invoke-direct {v4, v0}, Lo51;-><init>(I)V

    new-instance v5, Lo51;

    const/16 v0, 0x10

    invoke-direct {v5, v0}, Lo51;-><init>(I)V

    move-object v2, v12

    new-instance v12, Lcom/vuitton/android/presentation/screen/main/navigation/b;

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v9

    move-object v9, v2

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/android/presentation/screen/main/navigation/b;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    move-object v13, v14

    move-object/from16 v16, v18

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x7040e165

    invoke-direct {v8, v0, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistRoute;

    invoke-virtual {v9, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move-object v1, v0

    new-instance v14, Lqb0;

    invoke-direct {v14, v10, v11}, Lqb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;I)V

    new-instance v4, Ljh;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Ljh;-><init>(I)V

    new-instance v5, Ljh;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, Ljh;-><init>(I)V

    new-instance v12, Lj0;

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    invoke-direct/range {v12 .. v18}, Lj0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lqb0;Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x58c0b39d

    invoke-direct {v8, v0, v11, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v0, Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;

    invoke-virtual {v9, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static/range {v0 .. v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

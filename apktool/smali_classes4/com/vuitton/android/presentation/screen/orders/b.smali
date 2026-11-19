.class public final synthetic Lcom/vuitton/android/presentation/screen/orders/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/b;->b:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/b;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/b;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3, v6}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v5

    instance-of v0, v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    const-class v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v4, 0x0

    move-object v7, v6

    move-object v6, v0

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object v6, v7

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/orders/b;->b:Landroidx/navigation/NavHostController;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/b;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/b;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v3, v4, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$1$1;

    invoke-direct {v3, v9, v1, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$1$1;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_3

    if-ne v5, v4, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;

    invoke-direct {v5, v9, v1, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$2$1;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Lkotlin/reflect/KFunction;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt$OrderNavHost$5$1$3$3$1;

    const-string v12, "popBackStack()Z"

    const/16 v13, 0x8

    const/4 v8, 0x0

    const-class v10, Landroidx/navigation/NavHostController;

    const-string v11, "popBackStack"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v0, v7

    :cond_6
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    move-object v4, v5

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

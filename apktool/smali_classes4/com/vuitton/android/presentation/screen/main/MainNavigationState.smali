.class public final Lcom/vuitton/android/presentation/screen/main/MainNavigationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/MainNavigationState$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/MainNavigationState;",
        "",
        "Landroidx/navigation/NavHostController;",
        "navController",
        "",
        "isECommerce",
        "Lkotlin/Function1;",
        "Lcom/vuitton/android/core/type/SystemIcons;",
        "",
        "updateSystemBarIcons",
        "<init>",
        "(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/navigation/NavHostController;

.field public final b:Z

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public f:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/android/core/type/SystemIcons;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->e()Lkotlin/enums/EnumEntries;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->h()Lkotlin/reflect/KClass;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b:Z

    if-eqz v0, :cond_0

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d:Ljava/util/ArrayList;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {p3}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->l()Landroidx/compose/runtime/MutableState;

    move-result-object p3

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavDestination;
    .locals 6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    const/16 v4, 0x30

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;
    .locals 5

    invoke-static {}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->e()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    iget-object v3, v3, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->h()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroidx/navigation/NavDestination$Companion;->c(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object v1
.end method

.method public final c(Landroidx/compose/runtime/Composer;I)Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;
    .locals 4

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const p2, -0x653fd017

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->e()Lkotlin/enums/EnumEntries;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a(Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavDestination;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->h()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/navigation/NavDestination$Companion;->c(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    return-object v0
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b()Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ltb0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Landroidx/navigation/NavOptionsBuilderKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->v(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b()Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->l()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->l()Landroidx/compose/runtime/MutableState;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b()Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    sget-object v4, Lcom/vuitton/android/presentation/screen/main/MainNavigationState$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    if-eq v1, v3, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/CartRoute;

    invoke-static {v0, v1, v2, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/WishlistRoute;

    invoke-static {v0, v1, v2, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/ServiceRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/ServiceRoute;

    invoke-static {v0, v1, v2, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    return-void

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_8

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    const/16 v18, 0xfff

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_8
    move-object/from16 v5, p2

    :goto_1
    invoke-static {v0, v5, v2, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    return-void

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/navigation/FeedRoute;->INSTANCE:Lcom/vuitton/android/presentation/screen/main/navigation/FeedRoute;

    invoke-static {v0, v1, v2, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->b()Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->i()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v0, p1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

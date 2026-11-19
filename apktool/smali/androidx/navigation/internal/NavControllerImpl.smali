.class public final Landroidx/navigation/internal/NavControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/internal/NavControllerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\tB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/navigation/internal/NavControllerImpl;",
        "",
        "Landroidx/navigation/NavController;",
        "navController",
        "Lkotlin/Function0;",
        "",
        "updateOnBackPressedCallbackEnabledCallback",
        "<init>",
        "(Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;)V",
        "Companion",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public final A:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final a:Landroidx/navigation/NavController;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public c:Landroidx/navigation/NavGraph;

.field public d:Landroid/os/Bundle;

.field public e:[Landroid/os/Bundle;

.field public final f:Lkotlin/collections/ArrayDeque;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/StateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/StateFlow;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:Landroidx/lifecycle/LifecycleOwner;

.field public p:Landroidx/navigation/NavControllerViewModel;

.field public final q:Ljava/util/ArrayList;

.field public r:Landroidx/lifecycle/Lifecycle$State;

.field public final s:Lk2;

.field public final t:Landroidx/navigation/NavigatorProvider;

.field public final u:Ljava/util/LinkedHashMap;

.field public v:Lkotlin/jvm/functions/Function1;

.field public w:Lwc0;

.field public final x:Ljava/util/LinkedHashMap;

.field public y:I

.field public final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/internal/NavControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->b:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->j:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->q:Ljava/util/ArrayList;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->r:Landroidx/lifecycle/Lifecycle$State;

    new-instance p1, Lk2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lk2;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->s:Lk2;

    new-instance p1, Landroidx/navigation/NavigatorProvider;

    invoke-direct {p1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->x:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->z:Ljava/util/ArrayList;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static e(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v0, p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    iget-object v1, p2, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object p1, v0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {p1, p0, v0, p2, p3}, Landroidx/navigation/internal/NavGraphImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/navigation/internal/NavControllerImpl;->r(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v10, v8, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v2, v10, Landroidx/navigation/FloatingWindow;

    const/4 v11, 0x1

    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v2, v2, Landroidx/navigation/FloatingWindow;

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v2, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v11, v3}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    new-instance v13, Lkotlin/collections/ArrayDeque;

    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    instance-of v2, v1, Landroidx/navigation/NavGraph;

    iget-object v14, v0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    const/4 v15, 0x0

    if-eqz v2, :cond_8

    move-object v2, v10

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v15

    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    if-nez v3, :cond_4

    sget-object v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavBackStackEntry$Companion;

    iget-object v3, v14, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, v0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object/from16 v5, p2

    :goto_2
    invoke-virtual {v13, v3}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-ne v2, v4, :cond_6

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0, v2}, Landroidx/navigation/internal/NavControllerImpl;->s(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_3

    :cond_5
    move-object/from16 v5, p2

    :cond_6
    :goto_3
    if-eqz v4, :cond_9

    if-ne v4, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v4

    goto :goto_0

    :cond_8
    move-object/from16 v5, p2

    :cond_9
    :goto_4
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v10

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    :goto_5
    if-eqz v2, :cond_10

    iget-object v3, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v0, v3, v2}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eq v3, v2, :cond_10

    iget-object v2, v2, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_f

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-ne v3, v11, :cond_b

    move-object v3, v15

    goto :goto_6

    :cond_b
    move-object v3, v5

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v9, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_7

    :cond_d
    move-object v6, v15

    :goto_7
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    if-nez v6, :cond_e

    sget-object v16, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavBackStackEntry$Companion;

    iget-object v4, v14, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v2, v3}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v19

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v20

    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v6

    goto :goto_8

    :cond_e
    move-object/from16 v18, v2

    :goto_8
    invoke-virtual {v13, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    move-object/from16 v18, v2

    :goto_9
    move-object/from16 v2, v18

    goto :goto_5

    :cond_10
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v10, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    :goto_a
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_12

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/navigation/NavGraph;

    iget-object v2, v2, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget-object v2, v2, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    iget-object v3, v10, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0, v2}, Landroidx/navigation/internal/NavControllerImpl;->s(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    if-nez v2, :cond_13

    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    :cond_13
    if-eqz v2, :cond_14

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    goto :goto_b

    :cond_14
    move-object v2, v15

    :goto_b
    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v15, v3

    :cond_16
    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    if-nez v15, :cond_17

    sget-object v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavBackStackEntry$Companion;

    iget-object v3, v14, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v5}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, v0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    invoke-static/range {v2 .. v7}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v15

    :cond_17
    invoke-virtual {v13, v15}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v13}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v3, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v5, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v5, v4}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    iget-object v5, v0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v4, v3}, Landroidx/navigation/NavController$NavControllerNavigatorState;->i(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NavigatorBackStack for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    const-string v2, " should already be created"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltg0;->c(Ljava/lang/Object;)V

    return-void

    :cond_1a
    invoke-virtual {v12, v13}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12, v8}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v8, v13}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v3, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v3, v3, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v0, v3}, Landroidx/navigation/internal/NavControllerImpl;->g(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public final b()Z
    .locals 9

    :goto_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->s(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->x()V

    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->q:Ljava/util/ArrayList;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$OnDestinationChangedListener;

    iget-object v7, v3, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v8, v3, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {v8}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    invoke-interface {v6, v8, v7}, Landroidx/navigation/NavController$OnDestinationChangedListener;->f(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v5, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->t()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    return v4

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z
    .locals 9

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v5, Lkotlin/collections/ArrayDeque;

    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/navigation/Navigator;

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    new-instance v0, Lwc0;

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lwc0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;ZLkotlin/collections/ArrayDeque;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->w:Lwc0;

    invoke-virtual {v7, v8, v4}, Landroidx/navigation/Navigator;->i(Landroidx/navigation/NavBackStackEntry;Z)V

    iput-object v6, v3, Landroidx/navigation/internal/NavControllerImpl;->w:Lwc0;

    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v3

    move p4, v4

    goto :goto_0

    :cond_1
    move-object v3, p0

    move v4, p4

    :goto_1
    if-eqz v4, :cond_5

    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_3

    new-instance p1, Lag0;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Lag0;-><init>(I)V

    invoke-static {p2, p1}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance p2, Lcg0;

    const/4 p3, 0x0

    invoke-direct {p2, v3, p3}, Lcg0;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {p3, p1, p2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-direct {p1, p3}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    :goto_2
    invoke-virtual {p1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDestination;

    iget-object p2, p2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p2, p2, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntryState;

    if-eqz p3, :cond_2

    iget-object p3, p3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget-object p3, p3, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object p3, v6

    :goto_3
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntryState;

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget p2, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    invoke-virtual {v3, p2, v6}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p2

    new-instance p3, Lag0;

    const/4 p4, 0x4

    invoke-direct {p3, p4}, Lag0;-><init>(I)V

    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    new-instance p3, Lcg0;

    const/4 p4, 0x1

    invoke-direct {p3, v3, p4}, Lcg0;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {p4, p2, p3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-direct {p2, p4}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    :goto_4
    invoke-virtual {p2}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavDestination;

    iget-object p3, p3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    iget-object p2, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    return p0
.end method

.method public final d(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    const/4 p0, 0x0

    invoke-static {p1, v0, p2, p0}, Landroidx/navigation/internal/NavControllerImpl;->e(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->b(Lkotlinx/serialization/KSerializer;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->j()Landroidx/navigation/NavGraph;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/navigation/internal/NavControllerImpl;->e(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->h()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavArgument;

    iget-object v1, v1, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->d(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be found in navigation graph "

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    const-string v1, "Destination with route "

    invoke-static {v1, p1, v0, p0}, Ltg0;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final g(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v2, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v0, "No destination with ID "

    const-string v1, " is on the NavController\'s back stack. The current destination is "

    invoke-static {p1, v0, v1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Landroidx/navigation/NavBackStackEntry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method public final i()Landroidx/navigation/NavDestination;
    .locals 0

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Landroidx/navigation/NavGraph;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "You must call setGraph() before calling getGraph()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->o:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->r:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public final l()Landroidx/navigation/NavGraph;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    instance-of p0, v0, Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    iget-object p0, v0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-object p0
.end method

.method public final m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/navigation/internal/AtomicInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/navigation/internal/AtomicInt;-><init>(I)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/navigation/internal/AtomicInt;

    iget-object p0, p0, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v2, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v4, v1, Landroidx/navigation/NavigatorState;->d:Z

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, -0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    iget-boolean v5, v9, Landroidx/navigation/NavOptions;->e:Z

    iget-boolean v6, v9, Landroidx/navigation/NavOptions;->d:Z

    iget-object v7, v9, Landroidx/navigation/NavOptions;->j:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v2, v7, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->q(Ljava/lang/String;ZZ)Z

    move-result v5

    :goto_1
    move v12, v5

    goto :goto_2

    :cond_1
    iget-object v7, v9, Landroidx/navigation/NavOptions;->k:Lkotlin/reflect/KClass;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-static {v7}, Landroidx/navigation/serialization/RouteSerializerKt;->b(Lkotlinx/serialization/KSerializer;)I

    move-result v7

    invoke-virtual {v2, v7, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v7, v9, Landroidx/navigation/NavOptions;->l:Ljava/lang/Object;

    if-eqz v7, :cond_3

    invoke-virtual {v2, v7}, Landroidx/navigation/internal/NavControllerImpl;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->q(Ljava/lang/String;ZZ)Z

    move-result v5

    goto :goto_1

    :cond_3
    iget v7, v9, Landroidx/navigation/NavOptions;->c:I

    if-eq v7, v0, :cond_4

    invoke-virtual {v2, v7, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    move-result v5

    goto :goto_1

    :cond_4
    move v12, v11

    :goto_2
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v5, v3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    if-eqz v9, :cond_5

    iget-boolean v7, v9, Landroidx/navigation/NavOptions;->b:Z

    if-ne v7, v4, :cond_5

    iget v7, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v0, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v2, v0, v9, v6}, Landroidx/navigation/internal/NavControllerImpl;->u(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    move/from16 v16, v11

    goto/16 :goto_a

    :cond_5
    iget-object v13, v2, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    if-eqz v9, :cond_11

    iget-boolean v7, v9, Landroidx/navigation/NavOptions;->a:Z

    if-ne v7, v4, :cond_11

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    iget-object v8, v2, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    iget-object v15, v15, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-ne v15, v3, :cond_6

    invoke-interface {v14}, Ljava/util/ListIterator;->nextIndex()I

    move-result v14

    goto :goto_3

    :cond_7
    move v14, v0

    :goto_3
    if-ne v14, v0, :cond_8

    goto/16 :goto_8

    :cond_8
    instance-of v0, v3, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_b

    sget-object v0, Landroidx/navigation/NavGraph;->i:Landroidx/navigation/NavGraph$Companion;

    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lag0;

    const/16 v7, 0xb

    invoke-direct {v0, v7}, Lag0;-><init>(I)V

    invoke-static {v5, v0}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v5, Lag0;

    const/4 v7, 0x6

    invoke-direct {v5, v7}, Lag0;-><init>(I)V

    invoke-static {v0, v5}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    iget v5, v8, Lkotlin/collections/ArrayDeque;->d:I

    sub-int/2addr v5, v14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eq v5, v7, :cond_9

    goto/16 :goto_8

    :cond_9
    iget v5, v8, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v8, v14, v5}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v5, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    iget-object v15, v15, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v15, v15, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v15, v15, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_8

    :cond_b
    if-eqz v7, :cond_11

    iget-object v0, v7, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-eqz v0, :cond_11

    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iget-object v0, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v5, v0, :cond_11

    :cond_c
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    :goto_5
    invoke-virtual {v8}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-lt v5, v14, :cond_d

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->w(Landroidx/navigation/NavBackStackEntry;)V

    new-instance v7, Landroidx/navigation/NavBackStackEntry;

    iget-object v15, v5, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    move-object/from16 v4, p2

    invoke-virtual {v15, v4}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v15

    invoke-direct {v7, v5, v15}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v7, v5, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v7, v7, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v7, :cond_e

    iget-object v7, v7, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v2, v7}, Landroidx/navigation/internal/NavControllerImpl;->g(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_e
    invoke-virtual {v8, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v5, v5, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    invoke-virtual {v13, v5}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/navigation/Navigator;->f(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_7

    :cond_10
    const/16 v16, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    move/from16 v16, v11

    :goto_9
    if-nez v16, :cond_12

    sget-object v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavBackStackEntry$Companion;

    iget-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    iget-object v4, v0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    iget-object v8, v2, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    move-object v3, v5

    move-object v4, v6

    iget-object v5, v3, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    invoke-virtual {v13, v5}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lk3;

    const/16 v5, 0x15

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v7, v9}, Landroidx/navigation/Navigator;->d(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    const/4 v0, 0x0

    iput-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    :cond_12
    :goto_a
    iget-object v0, v2, Landroidx/navigation/internal/NavControllerImpl;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v11, v3, Landroidx/navigation/NavigatorState;->d:Z

    goto :goto_b

    :cond_13
    if-nez v12, :cond_15

    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez v0, :cond_15

    if-eqz v16, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->x()V

    return-void

    :cond_15
    :goto_c
    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    return-void
.end method

.method public final o(Ljava/lang/String;Landroidx/navigation/NavOptions;)V
    .locals 5

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->l()Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v0}, Landroidx/navigation/NavGraph;->q(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->b:Landroidx/navigation/NavDestination;

    iget-object v0, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/Pair;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    sget-object v1, Landroidx/navigation/NavDeepLinkRequest$Builder;->a:Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;

    sget-object v2, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    const-string v2, "android-app://androidx.navigation/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/navigation/NavDeepLinkRequest$Builder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroidx/navigation/NavDeepLinkRequest$Builder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Landroidx/navigation/NavDeepLinkRequest;

    invoke-direct {v1, v2, v3, v3}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v1, Landroidx/navigation/NavDeepLinkRequest;->a:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/navigation/NavDeepLinkRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v1, Landroidx/navigation/NavDeepLinkRequest;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, v0, p2}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void

    :cond_2
    const-string p2, "Navigation destination that matches route "

    const-string v0, " cannot be found in the navigation graph "

    invoke-static {p2, p1, v0}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {p0, p1}, Lbm;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    :cond_3
    const-string p2, ". Navigation graph has not been set for NavController "

    const/16 v0, 0x2e

    const-string v1, "Cannot navigate to "

    invoke-static {v1, p1, p2, p0, v0}, Llc0;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public final p(IZZ)Z
    .locals 7

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v4, v3, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v5, v3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v6, v4}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    if-nez p2, :cond_2

    iget v6, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-eq v6, p1, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v4, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    sget-object p2, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    iget-object p0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    sget-object p0, Landroidx/navigation/internal/Log;->a:Landroidx/navigation/internal/Log$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    :cond_5
    invoke-virtual {p0, v1, v3, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->c(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z

    move-result p0

    return p0
.end method

.method public final q(Ljava/lang/String;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    iget-object v9, v8, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v10, v8, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {v10}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v9, v1}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v11

    iget-object v9, v9, Landroidx/navigation/internal/NavDestinationImpl;->a:Landroidx/navigation/NavDestination;

    if-eqz v11, :cond_3

    iget-object v12, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->b:Landroidx/navigation/NavDestination;

    goto :goto_0

    :cond_3
    move-object v12, v7

    :goto_0
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    iget-object v9, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->c:Landroid/os/Bundle;

    if-eqz v10, :cond_c

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    :cond_7
    iget-object v14, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->b:Landroidx/navigation/NavDestination;

    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->h()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/navigation/NavArgument;

    if-eqz v14, :cond_8

    iget-object v14, v14, Landroidx/navigation/NavArgument;->a:Landroidx/navigation/NavType;

    goto :goto_1

    :cond_8
    move-object v14, v7

    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14, v13, v9}, Landroidx/navigation/NavType;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_9
    move-object v15, v7

    :goto_2
    if-eqz v14, :cond_a

    invoke-virtual {v14, v13, v10}, Landroidx/navigation/NavType;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    :cond_a
    move-object v13, v7

    :goto_3
    if-eqz v14, :cond_6

    invoke-virtual {v14, v15, v13}, Landroidx/navigation/NavType;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    :goto_5
    move v9, v5

    :goto_6
    if-nez v2, :cond_d

    if-nez v9, :cond_e

    :cond_d
    iget-object v8, v8, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v8, v8, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v10, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v10, v8}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v9, :cond_1

    goto :goto_7

    :cond_f
    move-object v6, v7

    :goto_7
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    if-eqz v6, :cond_10

    iget-object v7, v6, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    :cond_10
    if-nez v7, :cond_11

    sget-object v0, Landroidx/navigation/internal/Log;->a:Landroidx/navigation/internal/Log$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v5

    :cond_11
    move/from16 v1, p3

    invoke-virtual {v0, v4, v7, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->c(Ljava/util/ArrayList;Landroidx/navigation/NavDestination;ZZ)Z

    move-result v0

    return v0
.end method

.method public final r(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->c0(Ljava/util/List;)Ljava/lang/Object;

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object p1, p1, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p1, p1, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {p1, v1}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavControllerImpl;->w(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    if-nez v0, :cond_5

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    if-eqz p0, :cond_5

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavControllerViewModel;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelStore;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->a()V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Attempted to pop "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    const-string p2, ", which is not the top of the back stack ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iget-object v2, v2, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v5, v5, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v3, v3, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public final u(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;)Z
    .locals 10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Llt;

    const/16 v3, 0x19

    invoke-direct {v1, p1, v3}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;Llt;)V

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/collections/ArrayDeque;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->j()Landroidx/navigation/NavGraph;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    iget-object v4, v3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget v4, v4, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    const/4 v6, 0x1

    invoke-static {v4, v0, v1, v6}, Landroidx/navigation/internal/NavControllerImpl;->e(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v4

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    if-eqz v4, :cond_3

    iget-object v0, v6, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v3, v0, v4, v6, v7}, Landroidx/navigation/NavBackStackEntryState;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object p1, v6, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    iget-object p2, v3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget p2, p2, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Restore State failed: destination "

    const-string p2, " cannot be found from the current destination "

    invoke-static {p1, p0, p2, v0}, Llc0;->o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    if-eqz v4, :cond_7

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-eqz v4, :cond_7

    iget-object v4, v4, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v4, v1

    :goto_3
    iget-object v6, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v6, v6, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    filled-new-array {v2}, [Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v2, v2, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3, v2}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v3, Ld1;

    const/16 v9, 0xa

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v3, v7, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v0, p2}, Landroidx/navigation/Navigator;->d(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    iput-object v1, v7, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    goto :goto_4

    :cond_a
    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    return p0
.end method

.method public final v(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_39

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v7, v11, Landroidx/navigation/NavigatorState;->d:Z

    goto :goto_2

    :cond_3
    new-instance v10, Lag0;

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Lag0;-><init>(I)V

    invoke-static {v10}, Landroidx/navigation/NavOptionsBuilderKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v10

    invoke-virtual {v0, v9, v10, v6}, Landroidx/navigation/internal/NavControllerImpl;->u(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;)Z

    move-result v10

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v5, v12, Landroidx/navigation/NavigatorState;->d:Z

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_2

    invoke-virtual {v0, v9, v7, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    move-result v9

    goto :goto_1

    :cond_5
    iget-object v2, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v0, v2, v7, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    :cond_6
    iput-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->d:Landroid/os/Bundle;

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    if-eqz v1, :cond_8

    const-string v8, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v8, v1}, Landroidx/savedstate/SavedStateReader;->m(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v10

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v9, v1}, Landroidx/savedstate/SavedStateReader;->j(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/navigation/Navigator;->g(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_8
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    const-string v8, " cannot be found from the current destination "

    iget-object v9, v0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    if-eqz v1, :cond_d

    array-length v10, v1

    move v11, v5

    :goto_5
    if-ge v11, v10, :cond_c

    aget-object v12, v1, v11

    new-instance v13, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v13, v12}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    iget-object v12, v13, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget v14, v12, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    invoke-virtual {v0, v14, v6}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v14

    if-eqz v14, :cond_b

    iget-object v12, v9, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->k()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v15

    move/from16 v16, v7

    iget-object v7, v0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v13, v12, v14, v15, v7}, Landroidx/navigation/NavBackStackEntryState;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    iget-object v12, v14, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_9

    new-instance v13, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v13, v9, v12}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    check-cast v13, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v3, v7}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v13, v7}, Landroidx/navigation/NavController$NavControllerNavigatorState;->i(Landroidx/navigation/NavBackStackEntry;)V

    iget-object v12, v7, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v12, v12, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v12, :cond_a

    iget-object v12, v12, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v12, v12, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {v0, v12}, Landroidx/navigation/internal/NavControllerImpl;->g(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    goto :goto_5

    :cond_b
    sget-object v1, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object v2, v9, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    iget v3, v12, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Restoring the Navigation back stack failed: destination "

    invoke-static {v2, v1, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-static {v0, v1}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    :cond_c
    move/from16 v16, v7

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iput-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    goto :goto_6

    :cond_d
    move/from16 v16, v7

    :goto_6
    iget-object v1, v2, Landroidx/navigation/NavigatorProvider;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroidx/navigation/Navigator;

    iget-boolean v10, v10, Landroidx/navigation/Navigator;->b:Z

    if-nez v10, :cond_e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/Navigator;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v7, v9, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v7}, Landroidx/navigation/Navigator;->e(Landroidx/navigation/NavController$NavControllerNavigatorState;)V

    goto :goto_8

    :cond_11
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_38

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v9, Landroidx/navigation/NavController;->d:Landroid/app/Activity;

    iget-boolean v2, v9, Landroidx/navigation/NavController;->e:Z

    if-nez v2, :cond_37

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v9, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    if-nez v2, :cond_12

    goto/16 :goto_1b

    :cond_12
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_13

    :try_start_0
    const-string v7, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_13
    move-object v7, v6

    :goto_9
    if-eqz v4, :cond_14

    const-string v10, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_a

    :cond_14
    move-object v10, v6

    :goto_a
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    new-array v11, v5, [Lkotlin/Pair;

    invoke-static {v11, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lkotlin/Pair;

    invoke-static {v11}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v4, :cond_15

    const-string v12, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_b

    :cond_15
    move-object v4, v6

    :goto_b
    if-eqz v4, :cond_16

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_16
    if-eqz v7, :cond_17

    array-length v4, v7

    if-nez v4, :cond_1e

    :cond_17
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->l()Landroidx/navigation/NavGraph;

    move-result-object v4

    new-instance v12, Landroidx/navigation/NavDeepLinkRequest;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v12, v4}, Landroidx/navigation/NavGraph;->p(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v12, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->b:Landroidx/navigation/NavDestination;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lkotlin/collections/ArrayDeque;

    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v7, v12

    :goto_c
    iget-object v10, v7, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v14, v7, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v14, :cond_18

    iget-object v15, v14, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget v15, v15, Landroidx/navigation/internal/NavGraphImpl;->c:I

    iget v10, v10, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-eq v15, v10, :cond_19

    :cond_18
    invoke-virtual {v13, v7}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_19
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_d

    :cond_1a
    if-nez v14, :cond_1d

    :goto_d
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v7, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation/NavDestination;

    iget-object v13, v13, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v13, v13, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->x0(Ljava/util/Collection;)[I

    move-result-object v7

    iget-object v4, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->c:Landroid/os/Bundle;

    invoke-virtual {v12, v4}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1c
    move-object v10, v6

    goto :goto_f

    :cond_1d
    move-object v7, v14

    goto :goto_c

    :cond_1e
    :goto_f
    if-eqz v7, :cond_37

    array-length v4, v7

    if-nez v4, :cond_1f

    goto/16 :goto_1b

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    array-length v12, v7

    move v13, v5

    :goto_10
    if-ge v13, v12, :cond_25

    aget v14, v7, v13

    if-nez v13, :cond_21

    iget-object v15, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v15, v15, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v15, v14, :cond_20

    iget-object v15, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    goto :goto_11

    :cond_20
    move-object v15, v6

    goto :goto_11

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v4, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v15, v14}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v15

    :goto_11
    if-nez v15, :cond_22

    sget-object v4, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object v12, v3, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    iget-object v12, v12, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v14}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_22
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_24

    instance-of v14, v15, Landroidx/navigation/NavGraph;

    if-eqz v14, :cond_24

    check-cast v15, Landroidx/navigation/NavGraph;

    :goto_12
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v15, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget v14, v4, Landroidx/navigation/internal/NavGraphImpl;->c:I

    invoke-virtual {v4, v14}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v14

    instance-of v14, v14, Landroidx/navigation/NavGraph;

    if-eqz v14, :cond_23

    iget v14, v4, Landroidx/navigation/internal/NavGraphImpl;->c:I

    invoke-virtual {v4, v14}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroidx/navigation/NavGraph;

    goto :goto_12

    :cond_23
    move-object v4, v15

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_25
    move-object v4, v6

    :goto_13
    if-eqz v4, :cond_26

    sget-object v1, Landroidx/navigation/internal/Log;->a:Landroidx/navigation/internal/Log$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1b

    :cond_26
    const-string v0, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    array-length v0, v7

    new-array v4, v0, [Landroid/os/Bundle;

    move v12, v5

    :goto_14
    if-ge v12, v0, :cond_28

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    new-array v13, v5, [Lkotlin/Pair;

    invoke-static {v13, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lkotlin/Pair;

    invoke-static {v13}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    if-eqz v10, :cond_27

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    if-eqz v14, :cond_27

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_27
    aput-object v13, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_28
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v10, 0x10000000

    and-int/2addr v10, v0

    if-eqz v10, :cond_2b

    const v11, 0x8000

    and-int/2addr v0, v11

    if-nez v0, :cond_2b

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v9, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    new-instance v3, Landroidx/core/app/TaskStackBuilder;

    invoke-direct {v3, v0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, v3, Landroidx/core/app/TaskStackBuilder;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_2a

    invoke-virtual {v3, v0}, Landroidx/core/app/TaskStackBuilder;->a(Landroid/content/ComponentName;)V

    :cond_2a
    iget-object v0, v3, Landroidx/core/app/TaskStackBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/core/app/TaskStackBuilder;->f()V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1f

    :cond_2b
    if-eqz v10, :cond_2c

    move/from16 v0, v16

    goto :goto_15

    :cond_2c
    move v0, v5

    :goto_15
    iget-object v1, v9, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    const-string v2, "Deep Linking failed: destination "

    if-eqz v0, :cond_30

    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    move/from16 v10, v16

    invoke-virtual {v3, v0, v10, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(IZZ)Z

    :cond_2d
    :goto_16
    array-length v0, v7

    if-ge v5, v0, :cond_2f

    aget v0, v7, v5

    add-int/lit8 v10, v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v0, v6}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v11

    if-eqz v11, :cond_2e

    new-instance v0, Lk60;

    const/16 v12, 0x19

    invoke-direct {v0, v11, v9, v12}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/navigation/NavOptionsBuilderKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v0

    invoke-virtual {v3, v11, v5, v0}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    move v5, v10

    goto :goto_16

    :cond_2e
    sget-object v4, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-static {v1, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    :cond_2f
    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/navigation/NavController;->e:Z

    goto/16 :goto_1f

    :cond_30
    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    array-length v6, v7

    move v8, v5

    :goto_17
    if-ge v8, v6, :cond_36

    aget v10, v7, v8

    aget-object v11, v4, v8

    if-nez v8, :cond_31

    iget-object v12, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    goto :goto_18

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v12, v10}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v12

    :goto_18
    if-eqz v12, :cond_35

    array-length v10, v7

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    if-eq v8, v10, :cond_33

    instance-of v10, v12, Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_34

    check-cast v12, Landroidx/navigation/NavGraph;

    :goto_19
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v12, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget v10, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    invoke-virtual {v0, v10}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    instance-of v10, v10, Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_32

    iget v10, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    invoke-virtual {v0, v10}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/navigation/NavGraph;

    goto :goto_19

    :cond_32
    move-object v0, v12

    goto :goto_1a

    :cond_33
    new-instance v10, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v10}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    iget-object v13, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v13, v13, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iput v13, v10, Landroidx/navigation/NavOptions$Builder;->c:I

    const/4 v13, 0x1

    iput-boolean v13, v10, Landroidx/navigation/NavOptions$Builder;->e:Z

    iput-boolean v5, v10, Landroidx/navigation/NavOptions$Builder;->f:Z

    iput v5, v10, Landroidx/navigation/NavOptions$Builder;->g:I

    iput v5, v10, Landroidx/navigation/NavOptions$Builder;->h:I

    invoke-virtual {v10}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    move-result-object v10

    invoke-virtual {v3, v12, v11, v10}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    :cond_34
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_35
    sget-object v3, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v10}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, " cannot be found in graph "

    invoke-static {v2, v1, v3, v0}, Lmt;->k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_36
    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/navigation/NavController;->e:Z

    goto/16 :goto_1f

    :cond_37
    :goto_1b
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    goto/16 :goto_1f

    :cond_38
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    return-void

    :cond_39
    iget-object v4, v2, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->e()I

    move-result v4

    :goto_1c
    if-ge v5, v4, :cond_3c

    iget-object v6, v2, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6, v5}, Landroidx/collection/SparseArrayCompat;->f(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    iget-object v7, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget-object v7, v7, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v7, v5}, Landroidx/collection/SparseArrayCompat;->c(I)I

    move-result v7

    iget-object v8, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    iget-object v8, v8, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    iget-boolean v9, v8, Landroidx/collection/SparseArrayCompat;->b:Z

    if-eqz v9, :cond_3a

    invoke-static {v8}, Landroidx/collection/SparseArrayCompatKt;->a(Landroidx/collection/SparseArrayCompat;)V

    :cond_3a
    iget-object v9, v8, Landroidx/collection/SparseArrayCompat;->c:[I

    iget v10, v8, Landroidx/collection/SparseArrayCompat;->e:I

    invoke-static {v10, v7, v9}, Landroidx/collection/internal/ContainerHelpersKt;->a(II[I)I

    move-result v7

    if-ltz v7, :cond_3b

    iget-object v8, v8, Landroidx/collection/SparseArrayCompat;->d:[Ljava/lang/Object;

    aget-object v9, v8, v7

    aput-object v6, v8, v7

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_3c
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    sget-object v4, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    iget-object v5, v3, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    iget-object v7, v0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    goto :goto_1e

    :cond_3e
    instance-of v7, v5, Landroidx/navigation/NavGraph;

    if-eqz v7, :cond_3d

    check-cast v5, Landroidx/navigation/NavGraph;

    iget-object v6, v6, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iget-object v5, v5, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v5, v6}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1e

    :cond_3f
    iput-object v5, v3, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    goto :goto_1d

    :cond_40
    :goto_1f
    return-void
.end method

.method public final w(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/internal/AtomicInt;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v1, v1, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final x()V
    .locals 10

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    filled-new-array {v1}, [Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    instance-of v3, v1, Landroidx/navigation/SupportingPane;

    if-eqz v3, :cond_3

    instance-of v1, v1, Landroidx/navigation/FloatingWindow;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    if-eqz v1, :cond_2

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, v4, Landroidx/navigation/SupportingPane;

    if-nez v5, :cond_1

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_1

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/FloatingWindow;

    if-eqz v3, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_4

    instance-of v5, v4, Landroidx/navigation/SupportingPane;

    if-nez v5, :cond_4

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_4

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v6, v6, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    iget-object v7, v5, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    if-eqz v8, :cond_c

    iget-object v8, v8, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iget-object v9, v7, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v9, v9, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v8, v9, :cond_c

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_a

    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v6, v6, Landroidx/navigation/NavDestination;->b:Ljava/lang/String;

    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v9, v6}, Landroidx/navigation/NavigatorProvider;->c(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v6, :cond_7

    iget-object v6, v6, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_7

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/internal/AtomicInt;

    if-eqz v6, :cond_8

    iget-object v6, v6, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    if-eqz v5, :cond_b

    iget-object v5, v5, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iget-object v6, v7, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v5, v6, :cond_b

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/util/ArrayList;)Ljava/lang/Object;

    :cond_b
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/util/ArrayList;)Ljava/lang/Object;

    iget-object v5, v7, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v7, v7, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    iget-object v8, v8, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-ne v7, v8, :cond_f

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDestination;

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v8, :cond_d

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_5

    :cond_d
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_e

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_5
    iget-object v5, v7, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->c()V

    goto :goto_6

    :cond_11
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->c()V

    goto :goto_6

    :cond_12
    :goto_7
    return-void
.end method

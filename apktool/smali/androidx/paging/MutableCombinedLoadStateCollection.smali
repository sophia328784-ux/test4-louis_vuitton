.class public final Landroidx/paging/MutableCombinedLoadStateCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/paging/MutableCombinedLoadStateCollection;",
        "",
        "<init>",
        "()V",
        "paging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final a(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/CombinedLoadStates;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/CombinedLoadStates;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    :cond_1
    iget-object v0, p2, Landroidx/paging/LoadStates;->a:Landroidx/paging/LoadState;

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v2, p3, Landroidx/paging/LoadStates;->a:Landroidx/paging/LoadState;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-static {p0, v0, v0, v2}, Landroidx/paging/MutableCombinedLoadStateCollection;->b(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadState;

    move-result-object v4

    if-eqz p1, :cond_3

    iget-object p0, p1, Landroidx/paging/CombinedLoadStates;->b:Landroidx/paging/LoadState;

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    :cond_4
    iget-object v2, p2, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    if-eqz p3, :cond_5

    iget-object v3, p3, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    invoke-static {p0, v0, v2, v3}, Landroidx/paging/MutableCombinedLoadStateCollection;->b(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadState;

    move-result-object v5

    if-eqz p1, :cond_6

    iget-object p0, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    if-nez p0, :cond_7

    :cond_6
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    :cond_7
    iget-object p1, p2, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    if-eqz p3, :cond_8

    iget-object v1, p3, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    :cond_8
    invoke-static {p0, v0, p1, v1}, Landroidx/paging/MutableCombinedLoadStateCollection;->b(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadState;

    move-result-object v6

    new-instance v3, Landroidx/paging/CombinedLoadStates;

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Landroidx/paging/CombinedLoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-object v3
.end method

.method public static b(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadState;
    .locals 0

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    instance-of p2, p0, Landroidx/paging/LoadState$Loading;

    if-eqz p2, :cond_3

    instance-of p1, p1, Landroidx/paging/LoadState$NotLoading;

    if-eqz p1, :cond_1

    instance-of p1, p3, Landroidx/paging/LoadState$NotLoading;

    if-eqz p1, :cond_1

    return-object p3

    :cond_1
    instance-of p1, p3, Landroidx/paging/LoadState$Error;

    if-eqz p1, :cond_2

    return-object p3

    :cond_2
    return-object p0

    :cond_3
    return-object p3
.end method


# virtual methods
.method public final c(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/paging/CombinedLoadStates;

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/CombinedLoadStates;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

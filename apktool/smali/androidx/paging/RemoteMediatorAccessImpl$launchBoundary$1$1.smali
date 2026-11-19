.class final Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Key",
        "",
        "Value"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1"
    f = "RemoteMediatorAccessor.kt"
    l = {
        0x189
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:Landroidx/paging/LoadType;

.field public c:I

.field public final synthetic d:Landroidx/paging/RemoteMediatorAccessImpl;


# direct methods
.method public constructor <init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->d:Landroidx/paging/RemoteMediatorAccessImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->d:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-direct {v0, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->d:Landroidx/paging/RemoteMediatorAccessImpl;

    iget-object v1, v0, Landroidx/paging/RemoteMediatorAccessImpl;->c:Landroidx/paging/AccessorStateHolder;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->b:Landroidx/paging/LoadType;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$1;->c:Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$1;

    invoke-virtual {v1, p1}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-nez p1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object v3, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/LoadType;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingState;

    iget-object p1, v0, Landroidx/paging/RemoteMediatorAccessImpl;->b:Landroidx/paging/RemoteMediator;

    iput-object v3, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->b:Landroidx/paging/LoadType;

    iput v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->c:I

    invoke-virtual {p1}, Landroidx/paging/RemoteMediator;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult;

    instance-of v5, p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    if-eqz v5, :cond_5

    new-instance v5, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$2;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    invoke-direct {v5, v3, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$2;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Success;)V

    invoke-virtual {v1, v5}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    if-eqz v5, :cond_2

    new-instance v5, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$3;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    invoke-direct {v5, v3, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$3;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult$Error;)V

    invoke-virtual {v1, v5}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_0
.end method

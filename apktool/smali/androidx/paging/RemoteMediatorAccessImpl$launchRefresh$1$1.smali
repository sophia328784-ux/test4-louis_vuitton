.class final Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;
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
    c = "androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1"
    f = "RemoteMediatorAccessor.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public d:I

.field public final synthetic e:Landroidx/paging/RemoteMediatorAccessImpl;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->e:Landroidx/paging/RemoteMediatorAccessImpl;

    iput-object p2, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;

    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->e:Landroidx/paging/RemoteMediatorAccessImpl;

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0, v1, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->e:Landroidx/paging/RemoteMediatorAccessImpl;

    iget-object v1, p1, Landroidx/paging/RemoteMediatorAccessImpl;->c:Landroidx/paging/AccessorStateHolder;

    sget-object v4, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1;->c:Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1;

    invoke-virtual {v1, v4}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/PagingState;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroidx/paging/RemoteMediatorAccessImpl;->b:Landroidx/paging/RemoteMediator;

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->b:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v4, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput v3, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1;->d:I

    invoke-virtual {v1}, Landroidx/paging/RemoteMediator;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v4

    :goto_0
    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult;

    instance-of v1, p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->c:Landroidx/paging/AccessorStateHolder;

    new-instance v1, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$1$1;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    invoke-direct {v1, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$1$1;-><init>(Landroidx/paging/RemoteMediator$MediatorResult$Success;)V

    invoke-virtual {p0, v1}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_3
    instance-of v1, p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    if-eqz v1, :cond_4

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->c:Landroidx/paging/AccessorStateHolder;

    new-instance v1, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$1$2;

    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    invoke-direct {v1, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1$1$1$2;-><init>(Landroidx/paging/RemoteMediator$MediatorResult$Error;)V

    invoke-virtual {p0, v1}, Landroidx/paging/AccessorStateHolder;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    iput-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

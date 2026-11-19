.class public final Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002BQ\u0012\"\u0010\u0007\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u0012$\u0010\u0008\u001a \u0008\u0001\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;",
        "T",
        "Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "",
        "getRemote",
        "getCache",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "domain"
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
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Lkotlin/jvm/functions/Function1;

.field public c:Lkotlin/Result;

.field public d:Lkotlin/Result;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;

    iget v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->d:Lkotlin/Result;

    if-eqz p1, :cond_3

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_3
    iput v3, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$remote$1;->d:I

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object v0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->d:Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;

    iget v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->c:Lkotlin/Result;

    if-nez p1, :cond_5

    iput v4, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy$cache$1;->d:I

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;->c:Lkotlin/Result;

    return-object p1

    :cond_4
    return-object v3

    :cond_5
    return-object p1
.end method

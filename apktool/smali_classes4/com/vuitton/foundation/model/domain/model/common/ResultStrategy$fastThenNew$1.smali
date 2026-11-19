.class final Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lkotlin/Result<",
        "Ljava/lang/Object;",
        ">;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.foundation.model.domain.model.common.ResultStrategy$fastThenNew$1"
    f = "ResultStrategy.kt"
    l = {
        0x19,
        0x1e,
        0x22,
        0x24,
        0x28
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->f:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->f:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->f:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    :goto_0
    move-object v3, p1

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    iput v9, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iput v8, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    invoke-interface {v3, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move v2, v9

    :goto_1
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_7

    iget-object v11, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v11, v11, Lkotlin/Result$Failure;

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v10

    :goto_2
    if-nez p1, :cond_8

    move v8, v9

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iput v7, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_3
    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    iput v8, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iput v6, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    invoke-interface {v3, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_6

    :cond_a
    move v2, v8

    goto :goto_0

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v3, Lkotlin/Result$Failure;

    if-nez p1, :cond_b

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    iput-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iput v5, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    if-nez v2, :cond_c

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v5}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v10, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->e:Ljava/lang/Object;

    iput-object v3, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->c:I

    iput v4, p0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;->d:I

    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

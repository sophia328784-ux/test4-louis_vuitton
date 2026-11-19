.class public interface abstract Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002\u00a8\u0006\u0003\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;",
        "T",
        "",
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


# direct methods
.method public static e(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;

    iget v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->c:Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v5, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    return-object p1

    :cond_5
    iput-object v3, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->c:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$newest$1;->f:I

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p0, v2

    :goto_3
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, v0, Lkotlin/Result$Failure;

    if-nez v0, :cond_7

    move-object v3, p1

    :cond_7
    if-eqz v3, :cond_8

    iget-object p0, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;

    iget v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

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

    iput v3, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$hasCachedValue$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    xor-int/2addr p1, v3

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, p0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;

    iget v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v5, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->e:I

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v2, v2, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_6

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    iput-object v3, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastest$1;->e:I

    invoke-interface {p0, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->e(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->i(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy$fastThenNew$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->t(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
.end method

.method public h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->f(Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

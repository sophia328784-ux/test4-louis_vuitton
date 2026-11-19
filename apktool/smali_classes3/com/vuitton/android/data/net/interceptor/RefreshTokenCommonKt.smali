.class public abstract Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lretrofit2/Response;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;

    iget v1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;

    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p3

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v2, p3, Lokhttp3/Response;->r:Z

    if-eqz v2, :cond_5

    iget-object p0, p0, Lretrofit2/Response;->b:Ljava/lang/Object;

    if-eqz p0, :cond_5

    iput v4, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    iget p0, p3, Lokhttp3/Response;->e:I

    const/16 p1, 0x191

    if-eq p0, p1, :cond_7

    const/16 p1, 0x190

    if-ne p0, p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;-><init>()V

    throw p0

    :cond_7
    :goto_1
    iput v3, v0, Lcom/vuitton/android/data/net/interceptor/RefreshTokenCommonKt$mapRefreshResponseOrThrow$1;->c:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    :goto_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenExpiredException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenExpiredException;-><init>()V

    throw p0
.end method

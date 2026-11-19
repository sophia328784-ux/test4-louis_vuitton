.class public final Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/WatchRepository;",
        "watchRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/WatchRepository;)V",
        "Params",
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
.field public final a:Lcom/vuitton/android/domain/repository/WatchRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/WatchRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;->a:Lcom/vuitton/android/domain/repository/WatchRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;->a:Lcom/vuitton/android/domain/repository/WatchRepository;

    iget-boolean p2, p1, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;->b:Z

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$run$1;->e:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/domain/repository/WatchRepository;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p0, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p2

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    instance-of p0, p2, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p2

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    :try_start_2
    instance-of p0, p2, Ljava/util/NoSuchElementException;

    if-eqz p0, :cond_8

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$NotFound;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$NotFound;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$UnknownError;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$UnknownError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    return-object p0

    :cond_9
    throw p2
.end method

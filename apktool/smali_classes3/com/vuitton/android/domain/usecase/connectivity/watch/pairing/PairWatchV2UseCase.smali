.class public final Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/repository/WatchRepository;",
        "watchRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Lcom/vuitton/android/domain/repository/WatchRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->c:Lcom/vuitton/android/domain/repository/WatchRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->c:Lcom/vuitton/android/domain/repository/WatchRepository;

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p0, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->e:I

    iget p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->d:I

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, p0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p2, p2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p2

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    invoke-interface {v5, p2, p1, v0}, Lcom/vuitton/android/domain/repository/WatchRepository;->g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p2

    move-object p2, p0

    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->d:Ljava/lang/String;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v4, Lkotlin/Pair;->b:Ljava/lang/Object;

    if-eqz p0, :cond_8

    iget-object p2, v4, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-eqz p2, :cond_8

    check-cast p2, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v4, 0x0

    iput v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->e:I

    iput v6, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    invoke-interface {v5, p0, p2, v0}, Lcom/vuitton/android/domain/repository/WatchRepository;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    move p0, v4

    move-object v4, p1

    move p1, p0

    :goto_2
    iget-object p2, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;->a:Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->d:I

    iput p0, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->e:I

    iput v3, v0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    invoke-interface {v5, v2, p2, v6, v0}, Lcom/vuitton/android/domain/repository/WatchRepository;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

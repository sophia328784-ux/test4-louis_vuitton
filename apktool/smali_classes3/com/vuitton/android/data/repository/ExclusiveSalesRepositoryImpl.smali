.class public final Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/ExclusiveSalesRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/ExclusiveSalesRepository;",
        "Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;",
        "exclusiveSalesApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;)V",
        "data"
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;-><init>(Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;

    if-nez p1, :cond_3

    move-object p1, v4

    :cond_3
    iput v3, v0, Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;->d:I

    const-string p2, "*/*"

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;->getUserExclusiveSalesInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/vuitton/android/data/dto/exclusivesales/mapper/ExclusiveSalesMapperKt;->a(Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;)Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;

    move-result-object v4

    :cond_5
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p1
.end method

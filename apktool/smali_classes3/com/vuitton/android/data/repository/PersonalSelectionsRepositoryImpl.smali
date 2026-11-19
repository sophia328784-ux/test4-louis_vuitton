.class public final Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;",
        "Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;",
        "personalSelectionsApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/foundation/logger/Logger;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final d:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    const-string v0, "Failed to get personal selections details "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;-><init>(Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->f:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->d:I

    iget v6, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->c:I

    iget-object v7, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v9, v3

    move v3, p1

    move-object p1, v7

    move v7, v6

    move v6, v9

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v7

    goto/16 :goto_6

    :cond_3
    iget p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->d:I

    iget v4, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->c:I

    iget-object v6, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v9, v3

    move v3, p1

    move-object p1, v6

    move v6, v4

    move v4, v9

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object p1, v6

    goto/16 :goto_6

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    if-eqz p2, :cond_6

    :try_start_4
    iput-object p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->c:I

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->d:I

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->e:I

    iput v7, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    invoke-interface {v8, v1}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    goto :goto_4

    :cond_5
    move v4, v3

    move v6, v4

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    goto :goto_3

    :cond_6
    iput-object p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->c:I

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->d:I

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->e:I

    iput v6, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    invoke-interface {v8, v1}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    move v6, v3

    move v7, v6

    :goto_2
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    invoke-static {p2}, Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptorKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;)Lkotlin/Pair;

    move-result-object p2

    iget-object p2, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    move-object v4, p2

    :cond_8
    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_a

    move v4, v6

    move v6, v7

    :goto_3
    iget-object v7, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    iput-object p1, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->b:Ljava/lang/String;

    iput v6, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->c:I

    iput v4, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->d:I

    iput v3, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->e:I

    iput v5, v1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsDetail$1;->h:I

    invoke-interface {v7, p2, p1, v1}, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;->getPersonalSelectionsDetail(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_9

    :goto_4
    return-object v2

    :cond_9
    :goto_5
    check-cast p2, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsDetailMapperKt;->a(Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;)Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;

    move-result-object p2

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "Access token is blank"

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_b

    goto :goto_8

    :cond_b
    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, p2

    :goto_8
    check-cast v1, Lkotlin/Result;

    iget-object p2, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    :try_start_5
    iget-object p0, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    const-string p2, "PersonalSelectionsRepositoryImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1, v1}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    return-object p2

    :cond_d
    throw p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;-><init>(Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->f:I

    iget p2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->d:I

    iget-object v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    move v2, p1

    move-object p1, v6

    move v6, v8

    move-object v8, p3

    move p3, p2

    move-object p2, v4

    move-object v4, v8

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->i:I

    invoke-interface {p3, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, p3

    move p3, v2

    move v6, p3

    :goto_1
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    new-instance v7, Lcom/vuitton/android/data/dto/personalselections/InteractionRequestDto;

    invoke-direct {v7, p2}, Lcom/vuitton/android/data/dto/personalselections/InteractionRequestDto;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->c:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->d:I

    iput p3, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$likeSelection$1;->i:I

    invoke-interface {p0, v4, p1, v7, v0}, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;->likeSelection(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/personalselections/InteractionRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p3, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsInteraction;

    iget-object p1, p3, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;->a:Ljava/lang/String;

    iget-boolean p2, p3, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsInteraction;-><init>(Ljava/lang/String;Z)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;-><init>(Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->d:I

    iget v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->c:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    move v2, p1

    move-object p1, v6

    move v6, v5

    move v5, v7

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->e:I

    iput v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->h:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    move v6, v5

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    iput-object v3, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->c:I

    iput v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$unlikeSelection$1;->h:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;->unlikeSelection(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsInteraction;

    iget-object p1, p2, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;->a:Ljava/lang/String;

    iget-boolean p2, p2, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsInteractionDto;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsInteraction;-><init>(Ljava/lang/String;Z)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;-><init>(Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->c:I

    iget v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->g:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    move v5, v4

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;

    iput v5, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl$getPersonalSelectionsList$1;->g:I

    invoke-interface {v6, p1, v0}, Lcom/vuitton/android/data/api/bff/user/PersonalSelectionsApi;->getPersonalSelectionsList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p1, p1, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/personalselections/mapper/PersonalSelectionsMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, v0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    :try_start_3
    iget-object p0, p0, Lcom/vuitton/android/data/repository/PersonalSelectionsRepositoryImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "PersonalSelectionsRepositoryImpl"

    const-string v1, "Failed to get personal selections list"

    invoke-interface {p0, p1, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object p1

    :cond_8
    throw v0
.end method

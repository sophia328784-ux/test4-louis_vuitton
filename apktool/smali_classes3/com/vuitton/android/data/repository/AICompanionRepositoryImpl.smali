.class public final Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AICompanionRepository;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AICompanionRepository;",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;",
        "aiCompanionLocalDataSource",
        "Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;",
        "aiCompanionRemoteDataSource",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;->d:I

    const/4 v3, 0x1

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

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$updateSessionIdForHistory$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/vuitton/android/data/dto/aicompanion/ChatRequestDto;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;->b:Ljava/lang/String;

    invoke-direct {p3, v2}, Lcom/vuitton/android/data/dto/aicompanion/ChatRequestDto;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;->a:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$postChatMessage$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/AICompanionApi;

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/api/bff/user/AICompanionApi;->postChatMessage(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/aicompanion/ChatRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/aicompanion/ChatResponseDto;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;

    iget-object p1, p3, Lcom/vuitton/android/data/dto/aicompanion/ChatResponseDto;->a:Ljava/lang/String;

    iget-object p2, p3, Lcom/vuitton/android/data/dto/aicompanion/ChatResponseDto;->b:Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt;->a(Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    :try_start_2
    instance-of p0, p1, Lretrofit2/HttpException;

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/Integer;

    const/16 p2, 0x193

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance p2, Ljava/lang/Integer;

    const/16 p3, 0x194

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, p2}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    move-object p2, p1

    check-cast p2, Lretrofit2/HttpException;

    iget p2, p2, Lretrofit2/HttpException;->b:I

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/aicompanion/AICompanionError$IdRejected;

    check-cast p1, Lretrofit2/HttpException;

    iget-object p1, p1, Lretrofit2/HttpException;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/error/aicompanion/AICompanionError$IdRejected;-><init>(Ljava/lang/String;)V

    move-object p1, p0

    :cond_6
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    return-object p0

    :cond_7
    throw p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iput v5, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    if-eqz v2, :cond_7

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iput v4, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->f(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    return-object p0

    :cond_7
    instance-of v2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v2, :cond_9

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->a:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$saveSessionForHistory$1;->e:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->e(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    return-object p0

    :cond_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    instance-of p0, p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v6

    :cond_b
    :goto_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should be Twist-authenticated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    return-object p0

    :cond_7
    instance-of v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->a:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getSessionHistoryList$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    return-object p0

    :cond_9
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_b
    :goto_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should be Twist-authenticated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$deleteSessionFromHistory$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final g(Z)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    throw p0
.end method

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
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

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;-><init>(Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;->d:I

    const/4 v3, 0x1

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

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl$getChatSessionById$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/AICompanionApi;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/AICompanionApi;->getChatSessionById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/aicompanion/mapper/ChatMapperKt;->b(Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;)Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final j()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

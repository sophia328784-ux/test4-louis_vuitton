.class public final Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AudioGuideRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AudioGuideRepository;",
        "Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;",
        "audioGuideApi",
        "Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;",
        "audioGuideLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

.field public final b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    return-void
.end method

.method public static final i(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p4, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAndCacheTrackDetail$1;->d:I

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;->getTrackDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;

    invoke-static {p4}, Lcom/vuitton/android/data/dto/audioguide/mapper/TrackDetailMapperKt;->a(Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;)Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAudioGuide$1;->d:I

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;->getAudioGuide(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/audioguide/mapper/AudioGuideMapperKt;->a(Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;)Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

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

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getAccessData$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$2;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;

    const/4 p1, 0x0

    invoke-direct {p0, v2, v4, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getTrackDetail$3;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-direct {v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveAccessData$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->d(Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$saveCompletedTrack$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->e:Ljava/util/ArrayList;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    :goto_1
    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    throw p0
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$getCompletedTracks$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;-><init>(Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl$clearAccessData$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

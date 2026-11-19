.class final Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$getAccessData$2"
    f = "AudioGuideLocalDataSource.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->d:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->d:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->d:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->b:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    iput v3, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$getAccessData$2;->c:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->Companion:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    :cond_4
    :goto_1
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
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

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    new-instance p1, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    throw p1
.end method

.class final Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;
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
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
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
    c = "com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource$saveAccessData$2"
    f = "AudioGuideLocalDataSource.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->c:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->d:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->c:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->d:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->c:Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->d:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v3, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    new-instance v5, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2$1$1;

    invoke-direct {v5, v3, p1, v2}, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2$1$1;-><init>(Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource$saveAccessData$2;->b:I

    invoke-static {v1, v5, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->a(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
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

    invoke-static {p0}, Lcom/vuitton/foundation/util/ResultExtKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, v3, Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;->d:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error saving access data: "

    const-string v3, "AudioGuideLocalDataSource"

    invoke-static {v1, p1, v0, v3, v2}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_5
    throw p1
.end method
